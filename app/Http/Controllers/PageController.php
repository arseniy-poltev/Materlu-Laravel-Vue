<?php

namespace App\Http\Controllers;

use App\Models\MenuItem;
use App\Models\Page;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Orders;

class PageController extends Controller
{
    public function index(Request $request)
    {
        $slug = isset($request->segments()[1]) ? $request->segments()[1] : '/';

        $page = Page::findBySlug($slug);

        if (!$page) {
            abort(404, 'Please go back to our <a href="' . u('/') . '">homepage</a>.');
        }

        $this->data['title'] = $page->title;
        $this->data['page'] = $page->withFakes();

        switch ($page->slug) {
            case 'privacy':
            case 'terms':
            case 'faq':
                $class = 'faqPage';
                break;
            case 'cuentos':
                $class = 'storyPage';
                $categoryId = isset($request->segments()[2]) ? $request->segments()[2] : '0';
                $this->data['categoryId'] = $categoryId;
                break;
            default:
                $class = '';
        }

        $this->data['bodyClass'] = $class;

        return view('pages.' . $page->template, $this->data);
    }
}