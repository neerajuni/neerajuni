<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Content;
use \App\Models\Category;

class ContentController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Content';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Content());

        $grid->column('id', __('Id'));
        $grid->column('category', __('Category'));
        $grid->column('subcategory', __('Subcategory'));
        $grid->column('content', __('Content'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Content::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('category', __('Category'));
        $show->field('subcategory', __('Subcategory'));
        $show->field('content', __('Content'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Content());

        //$form->select('parent_id', __("Category"))->options(Category::getAllCategory()->pluck('name', 'id'));
       // $form->number('subcategory', __('Subcategory'));
        $form->select('category', __("Course Category"))->options(Category::getAllCategory()->pluck('name', 'id'))->load('subcategory', '/admin/subcategories/subcatbycat');
       // $form->select('subcategory');

        $form->select('subcategory')->rules(function ($form) {

            // If it is not an edit state, add field unique verification
            if (!$id = $form->model()->id) {
                return 'unique:content,subcategory';
            }
        
        });

        $form->text('page_title',__("Page Title"));
        $form->ckeditor('content',__("Page Content"));
        $form->text('meta_title',__("Meta Title"));
        $form->textarea('meta_description',__("Meta Description"));
        $form->textarea('meta_keyword',__("Meta Keyword"));
        $form->textarea('other_tags',__("Other Tags"));
        


       // $form->textarea('content', __('Content'));

        return $form;
    }
}
