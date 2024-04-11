<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Studymaterials;
use App\Models\Coursecategory;
use App\Models\Course;

class StudymaterialsController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Studymaterials';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Studymaterials());
        
        $grid->column('id', __('Id'));
        $grid->column('coursecategory.category_name', __('Course category'));
        $grid->column('coursecategory.category_name', __('Subject'));
        $grid->column('title', __('Title'));
        $grid->column('material_data', __('Material'));
        $grid->column('fees', __('Fees'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));
        $grid->column('deleted_at', __('Deleted at'));

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
        $show = new Show(Studymaterials::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('course_category', __('Course category'));
        $show->field('subject', __('Subject'));
        $show->field('title', __('Title'));
        $show->field('material_data', __('Material'));
        $show->field('fees', __('Fees'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));
        $show->field('deleted_at', __('Deleted at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Studymaterials());

        $form->select('course_category', __("Course Category"))->options(Coursecategory::getAllCoursecategory()->pluck('category_name', 'id'))->load('subject', '/admin/courses/coursebycat');
       //$form->select('coursebycat');
        $form->select('subject', __("Course/Subject"))->options();
        $form->file('material_data', 'Upload')->move('public/upload/study-data/')->rules('mimes:doc,pdf,docx,xlsx');

        $form->text('title', __('Title'));
        $form->decimal('fees', __('Fees'));

        return $form;
    }
    
    
}
