<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests;
use Backpack\CRUD\app\Http\Controllers\CrudController;
// VALIDATION: change the requests to match your own file names if you need form validation
use App\Http\Requests\CategoryRequest;

class CategoryCrudController extends CrudController
{
    public function __construct()
    {
        parent::__construct();
        $this->crud->setModel("App\Models\Category");
        $this->crud->setRoute(config('backpack.base.route_prefix') . '/categories');
        $this->crud->setEntityNameStrings('category', 'categories');
        // $this->crud->allowAccess('reorder');
        // $this->crud->enableReorder('name', 2);
        $this->crud->addColumn([
            'name' => 'name',
            'label' => 'Label',
        ]);;
        $this->crud->addField([
            'name' => 'name',
            'label' => 'Label',
        ]);
    }
    public function store(CategoryRequest $request)
    {
        return parent::storeCrud($request);
    }
    public function update(CategoryRequest $request)
    {
        return parent::updateCrud($request);
    }
}