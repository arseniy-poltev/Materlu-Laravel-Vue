<?php

namespace App;

trait PageTemplates
{
    /*
    |--------------------------------------------------------------------------
    | Page Templates for Backpack\PageManager
    |--------------------------------------------------------------------------
    |
    | Each page template has its own method, that define what fields should show up using the Backpack\CRUD API.
    | Use snake_case for naming and PageManager will make sure it looks pretty in the create/update form
    | template dropdown.
    |
    | Any fields defined here will show up after the standard page fields:
    | - select template
    | - page name (only seen by admins)
    | - page title
    | - page slug
    */

    private function home()
    {
        $fields = [
            [   // CustomHTML
                'name' => 'metas_separator',
                'type' => 'custom_html',
                'value' => '<br><h2>'.trans('backpack::pagemanager.metas').'</h2><hr>',
            ],
            [
                'name' => 'meta_title',
                'label' => trans('backpack::pagemanager.meta_title'),
                'fake' => true,
            ],
            [
                'name' => 'meta_description',
                'label' => trans('backpack::pagemanager.meta_description'),
                'fake' => true,
            ],
            [
                'name' => 'meta_keywords',
                'type' => 'textarea',
                'label' => trans('backpack::pagemanager.meta_keywords'),
                'fake' => true,
            ],
            [   // CustomHTML
                'name' => 'content_separator',
                'type' => 'custom_html',
                'value' => '<br><h2>'.trans('backpack::pagemanager.content').'</h2><hr>',
            ],
            [
                'name' => 'h1',
                'label' => "H1",
                'type' => 'textarea',
                'fake' => true,
            ],
            [
                'name' => 'subtitle',
                'label' => "Subtitle",
                'type' => 'textarea',
                'fake' => true,
            ],
            [
                'name' => 'h4',
                'label' => "H4",
                'type' => 'text',
                'fake' => true,
            ],
            [ // Table
                'name' => 'list1',
                'label' => 'List 1',
                'type' => 'table',
                'entity_singular' => 'option', // used on the "Add X" button
                'columns' => [
                    'img' => 'Image',
                    'text' => 'Text',
                ],
                'max' => 10, // maximum rows allowed in the table
                'min' => 0, // minimum rows allowed in the table
                'fake' => true,
            ],
            [
                'name' => 'h3',
                'label' => "H3",
                'type' => 'text',
                'fake' => true,
            ],
            [ // Table
                'name' => 'list2',
                'label' => 'List 2',
                'type' => 'table',
                'entity_singular' => 'option', // used on the "Add X" button
                'columns' => [
                    'text' => 'Text',
                ],
                'max' => 10, // maximum rows allowed in the table
                'min' => 0, // minimum rows allowed in the table
                'fake' => true,
            ],
            [
                'name' => 'birthday_title',
                'label' => "Birthday Title",
                'type' => 'text',
                'fake' => true,
            ],
            [
                'name' => 'birthday_text',
                'label' => "Birthday Text",
                'type' => 'textarea',
                'fake' => true,
            ],
            [
                'name' => 'slider1',
                'label' => "Slider 1",
                'type' => 'table',
                'entity_singular' => 'item', // used on the "Add X" button
                'columns' => [
                    'url' => 'Image URL',
                ],
                'max' => 10, // maximum rows allowed in the table
                'min' => 0, // minimum rows allowed in the table
                'fake' => true,
            ],
            [
                'name' => 'slider2',
                'label' => "Slider 2",
                'type' => 'table',
                'entity_singular' => 'item', // used on the "Add X" button
                'columns' => [
                    'url' => 'Image URL',
                ],
                'max' => 10, // maximum rows allowed in the table
                'min' => 0, // minimum rows allowed in the table
                'fake' => true,
            ],
            [
                'name' => 'faqs',
                'label' => "FAQs",
                'type' => 'table',
                'entity_singular' => 'item', // used on the "Add X" button
                'columns' => [
                    'title' => 'Title',
                    'url' => 'Image URL',
                    'text' => 'Text',
                    'class' => 'Class',
                ],
                'max' => 3, // maximum rows allowed in the table
                'min' => 0, // minimum rows allowed in the table
                'fake' => true,
            ],
            [
                'name' => 'h3_2',
                'label' => "H3 2",
                'type' => 'text',
                'fake' => true,
            ],
            [
                'name' => 'h3_3',
                'label' => "H3 3",
                'type' => 'text',
                'fake' => true,
            ],
            [
                'name' => 'reviews',
                'label' => "Reviews",
                'type' => 'table',
                'entity_singular' => 'item', // used on the "Add X" button
                'columns' => [
                    'title' => 'Title',
                    'url' => 'Image URL',
                    'text' => 'Text',
                ],
                'max' => 3, // maximum rows allowed in the table
                'min' => 0, // minimum rows allowed in the table
                'fake' => true,
            ],
            [
                'name' => 'contact_us_questions',
                'label' => "Contact Us Questions",
                'type' => 'table',
                'entity_singular' => 'item', // used on the "Add X" button
                'columns' => [
                    'text' => 'Text',
                ],
                'max' => 10, // maximum rows allowed in the table
                'min' => 0, // minimum rows allowed in the table
                'fake' => true,
            ],
        ];

        $this->crud->addFields($fields);
    }

    private function content_page()
    {
        $fields = [
            [   // CustomHTML
                'name' => 'metas_separator',
                'type' => 'custom_html',
                'value' => '<br><h2>'.trans('backpack::pagemanager.metas').'</h2><hr>',
            ],
            [
                'name' => 'meta_title',
                'label' => trans('backpack::pagemanager.meta_title'),
                'fake' => true,
            ],
            [
                'name' => 'meta_description',
                'label' => trans('backpack::pagemanager.meta_description'),
                'fake' => true,
            ],
            [
                'name' => 'meta_keywords',
                'type' => 'textarea',
                'label' => trans('backpack::pagemanager.meta_keywords'),
                'fake' => true,
            ],
            [   // CustomHTML
                'name' => 'content_separator',
                'type' => 'custom_html',
                'value' => '<br><h2>'.trans('backpack::pagemanager.content').'</h2><hr>',
            ],
            [   // WYSIWYG Editor
                'name' => 'content',
                'label' => 'Content',
                'type' => 'wysiwyg',
                'fake' => true,
            ],
        ];

        $this->crud->addFields($fields);
    }

    private function faq()
    {
        $fields = [
            [   // CustomHTML
                'name' => 'metas_separator',
                'type' => 'custom_html',
                'value' => '<br><h2>'.trans('backpack::pagemanager.metas').'</h2><hr>',
            ],
            [
                'name' => 'meta_title',
                'label' => trans('backpack::pagemanager.meta_title'),
                'fake' => true,
            ],
            [
                'name' => 'meta_description',
                'label' => trans('backpack::pagemanager.meta_description'),
                'fake' => true,
            ],
            [
                'name' => 'meta_keywords',
                'type' => 'textarea',
                'label' => trans('backpack::pagemanager.meta_keywords'),
                'fake' => true,
            ],
            [   // CustomHTML
                'name' => 'content_separator',
                'type' => 'custom_html',
                'value' => '<br><h2>'.trans('backpack::pagemanager.content').'</h2><hr>',
            ],
            [
                'name' => 'questions',
                'label' => 'Questions',
                'type' => 'table',
                'entity_singular' => 'question', // used on the "Add X" button
                'columns' => [
                    'title' => 'Question',
                    'desc' => 'Answer',
                ],
//                'max' => 4, // maximum rows allowed in the table
//                'min' => 0, // minimum rows allowed in the table
                'fake' => true,
            ]
        ];

        $this->crud->addFields($fields);
    }

    private function story()
    {
        $fields = [
            [   // CustomHTML
                'name' => 'metas_separator',
                'type' => 'custom_html',
                'value' => '<br><h2>'.trans('backpack::pagemanager.metas').'</h2><hr>',
            ],
            [
                'name' => 'meta_title',
                'label' => trans('backpack::pagemanager.meta_title'),
                'fake' => true,
            ],
            [
                'name' => 'meta_description',
                'label' => trans('backpack::pagemanager.meta_description'),
                'fake' => true,
            ],
            [
                'name' => 'meta_keywords',
                'type' => 'textarea',
                'label' => trans('backpack::pagemanager.meta_keywords'),
                'fake' => true,
            ],
            [   // CustomHTML
                'name' => 'content_separator',
                'type' => 'custom_html',
                'value' => '<br><h2>'.trans('backpack::pagemanager.content').'</h2><hr>',
            ],
            [
                'name' => 'h3',
                'label' => "H3",
                'type' => 'text',
                'fake' => true,
            ],
        ];

        $this->crud->addFields($fields);
    }

}
