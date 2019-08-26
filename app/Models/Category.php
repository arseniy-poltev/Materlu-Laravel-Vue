<?php

namespace App\Models;

use Backpack\CRUD\CrudTrait;
use Backpack\CRUD\ModelTraits\SpatieTranslatable\HasTranslations;
use Illuminate\Database\Eloquent\Model;
//------------ added by Xiuna 2019/07/17 --------------
class Category extends Model
{
    use CrudTrait;
    use HasTranslations;


    protected $table = 'categories';
    protected $fillable = ['name'];
    protected $translatable = ['name'];

    public function stories()
    {
        return $this->hasMany('App\Models\Story');
    }
}