<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Backpack\CRUD\CrudTrait;

class OrdersStatuses extends Model
{
    use CrudTrait;

    protected $table = 'orders_statuses';
     protected $primaryKey = 'id';
     public $timestamps = false;
    // protected $guarded = ['id'];
    protected $fillable = ['order_id', 'status', 'date'];
    // protected $hidden = [];
    // protected $dates = [];

    public static function add($order_id, $status, $date) {
//        self::update([
//            'order_id' => $order_id,
//            'status' => $status,
//        ]);
        self::updateOrCreate([
            'order_id' => $order_id,
            'status' => $status,
        ],[
            'date' => $date
        ]);

        return true;
    }

    public static function getByOrderId($id)
    {
        return self::where('order_id', $id)->get();
    }

}
