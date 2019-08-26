<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Backpack\CRUD\CrudTrait;

class OrderStories extends Model
{
    use CrudTrait;

    protected $table = 'orders_stories';

     public $timestamps = false;

    protected $fillable = [];

}
