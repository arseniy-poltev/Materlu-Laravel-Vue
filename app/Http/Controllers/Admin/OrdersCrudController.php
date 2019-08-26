<?php

namespace App\Http\Controllers\Admin;

use App\Models\Orders;
use App\Models\OrdersStatuses;
use Backpack\CRUD\app\Http\Controllers\CrudController;

// VALIDATION: change the requests to match your own file names if you need form validation
use App\Http\Requests\OrdersRequest as StoreRequest;
use App\Http\Requests\OrdersRequest as UpdateRequest;
use Carbon\Carbon;

/**
 * Class OrdersCrudController
 * @package App\Http\Controllers\Admin
 * @property-read CrudPanel $crud
 */
class OrdersCrudController extends CrudController
{
    public function setup()
    {
        /*
        |--------------------------------------------------------------------------
        | CrudPanel Basic Information
        |--------------------------------------------------------------------------
        */
        $this->crud->setModel('App\Models\Orders');
        $this->crud->setRoute(config('backpack.base.route_prefix') . '/orders');
        $this->crud->setEntityNameStrings('order', 'orders');

        /*
        |--------------------------------------------------------------------------
        | CrudPanel Configuration
        |--------------------------------------------------------------------------
        */
        $this->crud->denyAccess(['create']);

        $this->crud->allowAccess(['show']);

        $this->crud->setShowView('order-details');

        // TODO: remove setFromDb() and manually define Fields and Columns
//        $this->crud->setFromDb();

        $this->crud->setColumns([
            [
                'name'  => 'id',
                'label' => 'ID',
            ],
            [
                'name'  => 'FormattedTotalPrice',
                'label' => 'Total Price',
            ],
            [
                'name' => 'status',
                'label' => 'Status',
            ],
            [
                'name' => 'full_name',
                'label' => 'Name',
            ],
            [
                'name' => 'email',
                'label' => 'Email',
            ],
        ]);

        $this->crud->addField([
            'name'       => 'status',
            'label'      => 'Status',
            'type'       => 'enum',
        ]);

        $this->crud->addField([
            'name'       => 'date',
            'label'      => 'Date',
            'type'       => 'datetime_picker',
            'datetime_picker_options' => [
                'format' => 'DD/MM/YYYY HH:mm',
                'language' => 'en'
            ],
             'default' => Carbon::now(),
        ]);


        // add asterisk for fields that are required in OrdersRequest
        $this->crud->setRequiredFields(StoreRequest::class, 'create');
        $this->crud->setRequiredFields(UpdateRequest::class, 'edit');
    }

    public function show($id)
    {
        $this->crud->hasAccessOrFail('show');

        // get entry ID from Request (makes sure its the last ID for nested resources)
        $id = $this->crud->getCurrentEntryId() ?? $id;

        // set columns from db
        $this->crud->setFromDb();

        // cycle through columns
        foreach ($this->crud->columns as $key => $column) {
            // remove any autoset relationship columns
            if (array_key_exists('model', $column) && array_key_exists('autoset', $column) && $column['autoset']) {
                $this->crud->removeColumn($column['name']);
            }

            // remove the row_number column, since it doesn't make sense in this context
            if ($column['type'] == 'row_number') {
                $this->crud->removeColumn($column['name']);
            }
        }

        // get the info for that entry
        $this->data['entry'] = $this->crud->getEntry($id);
        $this->data['crud'] = $this->crud;
        $this->data['title'] = trans('backpack::crud.preview').' '.$this->crud->entity_name;

        // remove preview button from stack:line
        $this->crud->removeButton('show');
        $this->crud->removeButton('delete');

        // remove bulk actions colums
        $this->crud->removeColumns(['blank_first_column', 'bulk_actions']);

        // load the view from /resources/views/vendor/backpack/crud/ if it exists, otherwise load the one in the package
        return view($this->crud->getShowView(), $this->data);
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
        OrdersStatuses::add($request->id, $request->status, $request->date);

        // your additional operations before save here
        $redirect_location = parent::updateCrud($request);
        // your additional operations after save here
        // use $this->data['entry'] or $this->crud->entry
        return $redirect_location;
    }
}
