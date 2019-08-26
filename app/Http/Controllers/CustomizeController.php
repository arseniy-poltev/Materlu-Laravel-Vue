<?php

namespace App\Http\Controllers;

use App\Http\Requests\CustomizeAppearanceRequest;
use App\Http\Requests\CustomizeDedicationRequest;
use App\Http\Requests\CustomizeNameRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class CustomizeController extends Controller
{
    public $data;

    public function storeName(CustomizeNameRequest $request)
    {
        $request->session()->put('order.story.story_id', $request->story_id);
        $request->session()->put('order.story.character_name', $request->character_name);
        $request->session()->put('order.story.gender', $request->gender);
        $request->session()->put('order.story.language', $request->language);
        $request->session()->put('order.story.font_style', $request->font_style);

        $request->session()->save();

        return Redirect::to(u('customize/' . $request->story_id . '/appearance'));
    }

    public function storeAppearance(CustomizeAppearanceRequest $request)
    {
        $request->session()->put('order.story.character_info', $request->character_info);
        $request->session()->save();

        return Redirect::to(u('customize/' . $request->story_id . '/dedication'));
    }

    public function storeDedication(CustomizeDedicationRequest $request)
    {
        $request->session()->put('order.story.dedication', $request->dedication);
        $request->session()->put('order.story.dedication_picture', $request->dedication_picture_old);

        if ($request->file('dedication_picture') && $request->file('dedication_picture')->isValid()) {
            $request->session()->put('order.story.dedication_picture', 'upload_storage/' . $request->dedication_picture->store('dedications', 'public_storage'));
        }
        $request->session()->save();

        return Redirect::to(u('customize/' . $request->story_id . '/review'));
    }

    public function storeReview (Request $request)
    {
        $request->session()->push('order.ready_stories', [
            'story_id' => $request->session()->get('order.story.story_id'),
            'character_name' => $request->session()->get('order.story.character_name'),
            'gender' => $request->session()->get('order.story.gender'),
            'language' => $request->session()->get('order.story.language'),
            'font_style' => $request->session()->get('order.story.font_style'),
            'dedication' => $request->session()->get('order.story.dedication'),
            'dedication_picture' => $request->session()->get('order.story.dedication_picture'),
            'character_info' => $request->session()->get('order.story.character_info'),
        ]);

        $request->session()->remove('order.story');
        $request->session()->save();

        return Redirect::to(u('basket'));
    }

    public function showName($id, Request $request)
    {
        $this->data = [
            'page' => (object)[
                'title' => 'Customize',
                'slug' => 'customize',
            ],
            'data' => (object)[
                'story_id' => $id,
                'character_name' => $request->session()->get('order.story.character_name'),
                'gender' => $request->session()->get('order.story.gender'),
                'font_style' => $request->session()->get('order.story.font_style'),
                'language' => $request->session()->get('order.story.language'),
            ],
            'bodyClass' => 'characterPage',
        ];

        $request->session()->put('order.story.story_id', $id);
        $request->session()->save();

        return view('pages.customize.name', $this->data);
    }

    public function showAppearance($id, Request $request)
    {
        $this->data = [
            'page' => (object)[
                'title' => 'Customize',
                'slug' => 'customize',
            ],
            'data' => (object)[
                'story_id' => $id,
                'gender' => $request->session()->get('order.story.gender'),
                'language' => $request->session()->get('order.story.language'),
                'character_info' => session()->get('order.story.character_info'),
            ],
            'bodyClass' => 'characterPage',
        ];

        return view('pages.customize.appearance', $this->data);
    }

    public function showDedication($id, Request $request)
    {
        $this->data = [
            'page' => (object)[
                'title' => 'Customize',
                'slug' => 'customize',
            ],
            'data' => (object)[
                'story_id' => $id,
                'dedication' => $request->session()->get('order.story.dedication'),
                'dedication_picture' => $request->session()->get('order.story.dedication_picture'),
            ],
            'bodyClass' => 'characterPage',
        ];

        return view('pages.customize.dedication', $this->data);
    }

    public function showReview($id, Request $request)
    {
        $this->data = [
            'page' => (object)[
                'title' => 'Customize',
                'slug' => 'customize',
            ],
            'data' => (object)[
                'story_id' => $id,
                'character_name' => session()->get('order.story.character_name'),
                'dedication' => session()->get('order.story.dedication'),
                'dedication_picture' => session()->get('order.story.dedication_picture'),
                'character_info' => session()->get('order.story.character_info'),
            ],
            'bodyClass' => 'characterPage',
        ];

        return view('pages.customize.review', $this->data);
    }
}
