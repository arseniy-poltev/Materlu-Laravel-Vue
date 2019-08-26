<?php
namespace App\Http\Controllers\Admin;

use App\Http\Requests;
use Backpack\CRUD\app\Http\Controllers\CrudController;
// VALIDATION: change the requests to match your own file names if you need form validation
use App\Http\Requests\MenuRequest;

class MenuCrudController extends CrudController
{
    public function __construct()
    {
        parent::__construct();
        $this->crud->setModel("App\Models\Menu");
        $this->crud->setRoute(config('backpack.base.route_prefix').'/menu');
        $this->crud->setEntityNameStrings('menu', 'menus');
        $this->crud->allowAccess('reorder');
        $this->crud->enableReorder('name', 2);
        $this->crud->addColumn([
            'name' => 'name',
            'label' => 'Label',
        ]);;
        $this->crud->addField([
            'name' => 'name',
            'label' => 'Label',
        ]);
//        $this->crud->addField([
//            'label' => 'Name',
//            'type' => 'text',
//            'name' => 'name',
//            'entity' => 'parent',
//            'attribute' => 'name',
//            'model' => "App\Models\Menu",
//        ]);
    }
    public function store(MenuRequest $request)
    {
        return parent::storeCrud($request);
    }
    public function update(MenuRequest $request)
    {
        return parent::updateCrud($request);
    }
}