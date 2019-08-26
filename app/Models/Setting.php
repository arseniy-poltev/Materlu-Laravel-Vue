<?php

namespace App\Models;

use Backpack\CRUD\CrudTrait;
use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    use CrudTrait;

    protected $table = 'settings';

    protected $fillable = ['key', 'name', 'value'];

    public $timestamps = false;

    public static function get($key)
    {
        $setting = new self();
        $entry = $setting->where('key', $key)->first();

        if (!$entry) {
            return;
        }

        return $entry->value;
    }

}
