<?php

namespace App\Http\Controllers\Admin;

use Backpack\CRUD\app\Http\Controllers\CrudController;
// VALIDATION
use App\Http\Requests\SettingRequest as StoreRequest;
use App\Http\Requests\SettingRequest as UpdateRequest;

class SettingCrudController extends CrudController
{
    public function __construct()
    {
        parent::__construct();

        $this->crud->setModel("App\Models\Setting");
        $this->crud->setEntityNameStrings(trans('backpack::settings.setting_singular'), trans('backpack::settings.setting_plural'));
        $this->crud->setRoute(config('backpack.base.route_prefix', 'admin').'/setting');
        $this->crud->setColumns([
            [
                'name'  => 'name',
                'label' => trans('backpack::settings.name'),
            ],
            [
                'name'  => 'key',
                'label' => trans('backpack::settings.key'),
            ],
            [
                'name'  => 'value',
                'label' => trans('backpack::settings.value'),
            ],
        ]);
        $this->crud->addField([
            'name'       => 'name',
            'label'      => trans('backpack::settings.name'),
            'type'       => 'text',
        ]);

        $this->crud->addField([
            'name'       => 'key',
            'label'      => trans('backpack::settings.key'),
            'type'       => 'text'
        ]);
        $this->crud->addField([
            'name'       => 'value',
            'label'      => trans('backpack::settings.value'),
            'type'       => 'text'
        ]);
    }

    public function index()
    {
        $this->crud->addClause('where', 'active', 1);

        return parent::index();
    }

    public function store(StoreRequest $request)
    {
        return parent::storeCrud();
    }

    public function edit($id)
    {
        $this->crud->hasAccessOrFail('update');

        $this->data['entry'] = $this->crud->getEntry($id);
        $this->data['crud'] = $this->crud;
        $this->data['saveAction'] = $this->getSaveAction();
        $this->data['fields'] = $this->crud->getUpdateFields($id);
        $this->data['title'] = trans('backpack::crud.edit').' '.$this->crud->entity_name;

        $this->data['id'] = $id;

        return view($this->crud->getEditView(), $this->data);
    }

    public function update(UpdateRequest $request)
    {
        return parent::updateCrud();
    }
}
