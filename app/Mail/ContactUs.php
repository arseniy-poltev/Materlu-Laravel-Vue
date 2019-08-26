<?php

namespace App\Mail;

use App\Models\Email;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class ContactUs extends Mailable
{
    use Queueable, SerializesModels;

    public $data;

    public $email;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($data)
    {
        $this->data = $data;

        $this->email = Email::getByKey('contact_us');

        $this->convert();
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->subject($this->email->subject)
                    ->markdown('emails.' . $this->email->key);
    }

    public function convert()
    {
        foreach ((array)$this->data as $key => $item) {
            $this->email->content = preg_replace('/%' . $key . '%/', $item, $this->email->content);
        }
    }
}
