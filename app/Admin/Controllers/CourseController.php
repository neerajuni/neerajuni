<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Course;
use App\Models\Coursecategory;
use Illuminate\Http\Request;


class CourseController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Course';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Course());

        $grid->column('id', __('Id'));
        $grid->column('coursecategory.category_name', __('Course category'));
        $grid->column('course_name', __('Course name'));
        $grid->column('fees', __('Fee'));
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
        $show = new Show(Course::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('course_category', __('Course category'));
        $show->field('course_name', __('Course name'));
        $show->field('fee', __('Fee'));
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
        $form = new Form(new Course());
        $form->select('course_category', __("Course Category"))->options(Coursecategory::getAllCoursecategory()->pluck('category_name', 'id'));


        //$form->number('course_category', __('Course category'));
        $form->text('course_name', __('Course name'));
        $form->text('fees', __('Fees'));
        $form->ckeditor('description',__("Course Description"));
        $form->text('meta_title',__("Meta Title"));
        $form->textarea('meta_description',__("Meta Description"));
        $form->textarea('meta_keyword',__("Meta Keyword"));
        $form->textarea('other_tags',__("Other Tags"));

        return $form;
    }
    public function coursebycat(Request $request)
        {
           // echo 111;exit;
           $catId =  $request->input('query');
           $result = Course::where('course_category', $catId)
           ->get(['id',  Course::raw('course_name as text')]); 

// Convert the associative array to a JSON string with double quoted keys
//$jsonResult = json_encode($result);



// Return the JSON response
return response()->json($result);
           //$result =  response()->json($course);
          
         
           
        }
}
