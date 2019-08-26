<?php

namespace App\Http\Controllers\Admin;

use Backpack\CRUD\app\Http\Controllers\CrudController;

// VALIDATION: change the requests to match your own file names if you need form validation
use App\Http\Requests\EmailRequest as StoreRequest;
use App\Http\Requests\EmailRequest as UpdateRequest;

/**
 * Class EmailCrudController
 * @package App\Http\Controllers\Admin
 * @property-read CrudPanel $crud
 */
class EmailCrudController extends CrudController
{
    public function setup()
    {
        /*
        |--------------------------------------------------------------------------
        | CrudPanel Basic Information
        |--------------------------------------------------------------------------
        */
        $this->crud->setModel('App\Models\Email');
        $this->crud->setRoute(config('backpack.base.route_prefix') . '/emails');
        $this->crud->setEntityNameStrings('email', 'emails');

        /*
        |--------------------------------------------------------------------------
        | CrudPanel Configuration
        |--------------------------------------------------------------------------
        */

        // TODO: remove setFromDb() and manually define Fields and Columns
//        $this->crud->setFromDb();

        $this->crud->setColumns([
            [
                'name'  => 'subject',
                'label' => 'Subject',
            ],
            [
                'name'  => 'key',
                'label' => 'Key',
            ],
        ]);
        $this->crud->addField([
            'name'       => 'key',
            'label'      => 'Key',
            'type'       => 'text',
        ]);

        $this->crud->addField([
            'name'       => 'subject',
            'label'      => 'Subject',
            'type'       => 'text'
        ]);
        $this->crud->addField([
            'name'       => 'content',
            'label'      => 'Content',
            'type'       => 'simplemde'
        ]);

        // add asterisk for fields that are required in EmailRequest
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
