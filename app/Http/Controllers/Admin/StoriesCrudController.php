<?php

namespace App\Http\Controllers\Admin;

use Backpack\CRUD\app\Http\Controllers\CrudController;

// VALIDATION: change the requests to match your own file names if you need form validation
use App\Http\Requests\StoriesRequest as StoreRequest;
use App\Http\Requests\StoriesRequest as UpdateRequest;

/**
 * Class StoriesCrudController
 * @package App\Http\Controllers\Admin
 * @property-read CrudPanel $crud
 */
class StoriesCrudController extends CrudController
{
    public function setup()
    {
        /*
        |--------------------------------------------------------------------------
        | CrudPanel Basic Information
        |--------------------------------------------------------------------------
        */
        $this->crud->setModel('App\Models\Stories');
        $this->crud->setRoute(config('backpack.base.route_prefix') . '/stories');
        $this->crud->setEntityNameStrings('story', 'stories');

        /*
        |--------------------------------------------------------------------------
        | CrudPanel Configuration
        |--------------------------------------------------------------------------
        */

        // TODO: remove setFromDb() and manually define Fields and Columns
        //        $this->crud->setFromDb();
        $this->crud->setColumns([
            [
                'name'  => 'name',
                'label' => 'Name',
            ],
            [
                'name'  => 'description',
                'label' => 'Description',
            ],
            [
                'name'  => 'price_usd',
                'label' => 'Price $',
            ],
            [
                'name'  => 'price_eur',
                'label' => 'Price €',
            ],
        ]);
        $this->crud->addField([
            'name'       => 'name',
            'label'      => 'Name',
            'type'       => 'text',
        ]);

        $this->crud->addField([
            'name'  => 'description',
            'label' => 'Description',
            'type'       => 'textarea'
        ]);

        //------------ added by Xiuna 2019/07/17 --------------
        $this->crud->addField([
            'label' => 'Category',
            'type' => 'select',
            'name' => 'category_id',
            'entity' => 'category',
            'attribute' => 'name',
            'model' => "App\Models\Category",
        ]);
        //-----------------------------------------------------
        $this->crud->addField([
            'name'  => 'price_usd',
            'label' => 'Price $',
            'type'       => 'number',
            'attributes' => ["step" => "any"], // allow decimals
            'prefix' => "$",
        ]);
        $this->crud->addField([
            'name'  => 'price_eur',
            'label' => 'Price €',
            'type'       => 'number',
            'attributes' => ["step" => "any"], // allow decimals
            'prefix' => "€",
        ]);
        $this->crud->addField([
            'name'       => 'thumbnail',
            'label'      => 'Thumbnail',
            'type'       => 'browse'
        ]);
        $this->crud->addField([
            'name' => 'values', // the method that defines the relationship in your Model
            'label' => "Values",
            'type' => 'select2_multiple',
            'entity' => 'values', // the method that defines the relationship in your Model
            'attribute' => 'name', // foreign key attribute that is shown to user
            'model' => "App\Models\StoriesValues", // foreign key model
            'pivot' => true, // on create&update, do you need to add/delete pivot table entries?
        ]);

        // add asterisk for fields that are required in StoriesRequest
        $this->crud->setRequiredFields(StoreRequest::class, 'create');
        $this->crud->setRequiredFields(UpdateRequest::class, 'edit');
    }

    public function store(StoreRequest $request)
    {
        // your additional operations before save here
        $redirect_location = parent::storeCrud($request);
        // your additional operations after save here
        // use $this->data['entry'] or $this->crud->entry
        return $redirect_location;
    }

    public function update(UpdateRequest $request)
    {
        // your additional operations before save here
        $redirect_location = parent::updateCrud($request);
        // your additional operations after save here
        // use $this->data['entry'] or $this->crud->entry
        return $redirect_location;
    }
}