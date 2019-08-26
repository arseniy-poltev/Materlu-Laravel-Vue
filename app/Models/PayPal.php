<?php

namespace App\Models;

use App\Mail\SendUserFailOrder;
use App\Mail\SendUserSuccessOrder;
use Carbon\Carbon;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Redirect;
use PayPal\Api\Amount;
use PayPal\Api\Details;
use PayPal\Api\Item;
use PayPal\Api\ItemList;
use PayPal\Api\Payee;
use PayPal\Api\Payer;
use PayPal\Api\Payment;
use PayPal\Api\RedirectUrls;
use PayPal\Api\Transaction;
use PayPal\Auth\OAuthTokenCredential;
use PayPal\Rest\ApiContext;

class PayPal
{
    private $_api_context;

    private $_payee_email;

    private $_order;

    public function __construct($order)
    {
        $this->_order = $order;

        /** PayPal api context **/
        $paypal_conf = Config::get('paypal');
        $this->_api_context = new ApiContext(new OAuthTokenCredential(
                $paypal_conf['client_id'],
                $paypal_conf['secret'])
        );
        $this->_api_context->setConfig($paypal_conf['settings']);
        $this->_payee_email = $paypal_conf['payee_email'];

    }

    public function payment()
    {
        $payer = new Payer();
        $payer->setPaymentMethod("paypal");

        $item = new Item();
        $item->setName('Books')
            ->setCurrency($this->_order->currency->code)
            ->setQuantity($this->_order->stories->count())
            ->setSku(uniqid()) // Similar to `item_number` in Classic API
            ->setPrice($this->_order->SubtotalPrice);

        $itemList = new ItemList();
        $itemList->addItem($item);

        $details = new Details();
        $details
            ->setSubtotal($this->_order->SubtotalPrice)
            ->setShipping($this->_order->delivery->price);

        $amount = new Amount();
        $amount->setCurrency($this->_order->currency->code)
            ->setTotal($this->_order->total_price)
            ->setDetails($details);

        $payee = new Payee();
        $payee->setEmail($this->_payee_email);

        $transaction = new Transaction();
        $transaction->setAmount($amount)
            ->setItemList($itemList)
            ->setDescription("Books")
            ->setPayee($payee)
            ->setInvoiceNumber(uniqid());

        $redirectUrls = new RedirectUrls();
        $redirectUrls->setReturnUrl(u('payment-success'))
            ->setCancelUrl(u('payment-fail'));

        $payment = new Payment();
        $payment->setIntent("sale")
            ->setPayer($payer)
            ->setRedirectUrls($redirectUrls)
            ->setTransactions(array($transaction));

        session()->put('order.payment_is_done', 1);
        session()->save();

        try {
            $payment->create($this->_api_context);
        } catch (\Exception $e) {
            Mail::to($this->_order->email)->send(new SendUserFailOrder($this->_order));
            return Redirect::to(u('payment-fail'));
        }

        $approvalUrl = $payment->getApprovalLink();

        $this->_order->status = 'paid';
        $this->_order->save();

        OrdersStatuses::add($this->_order->id, $this->_order->status, Carbon::now());

        Mail::to($this->_order->email)->send(new SendUserSuccessOrder($this->_order));

        Orders::sendOrderToAPI($this->_order);

        return Redirect::to($approvalUrl);
    }
}
