<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Exam;
use \App\Models\Category;
use App\Admin\Actions\AddQuestions;
use App\Admin\Actions\Page\ReportPage;

class ExamController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Exam';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Exam());

        $grid->column('id', __('Id'));
        $grid->column('course_category', __('Course category'));
        $grid->column('course_id', __('Course id'));
        $grid->column('exam_name', __('Exam name'));
        $grid->column('total_no_of_question', __('Total number of questions'));
        $grid->column('marks_per_ques', __('Marks/Question'));
        $grid->column('test_time', __('Total Time(Minutes)'));
        $grid->column('pass_marks', __('Pass Marks'));
        $grid->column('negative_per', __('Negative Percentage'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));
        $grid->column('deleted_at', __('Deleted at'));
        
        $grid->actions(function ($actions) {
            $actions->add(new AddQuestions());
        });

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
        $show = new Show(Exam::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('course_category', __('Course category'));
        $show->field('course_id', __('Course id'));
        $show->field('exam_name', __('Exam name'));
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
        $form = new Form(new Exam());
    $form->select('course_category', __("Course Category"))->required()->options(Category::getAllCategory()->pluck('name', 'id'))->load('subcategory', '/admin/subcategories/subcatbycat');
    $form->select('subcategory')->required();
    $form->text('exam_name', __('Exam name'))->required();
    $form->number('total_no_of_question', __('Total number of questions'))->rules('required|integer');
    $form->number('marks_per_ques', __('Marks/Question'))->rules('required|numeric');
    $form->number('test_time', __('Total Time (Minutes)'))->rules('required|integer');
    $form->number('pass_marks', __('Pass Marks'))->rules('required|numeric');
    $form->select('negative_per','Negative')->required()->options(['.25' => '.25', '.30' => '.30', '.5' => '.5']);
        return $form;
    }
    
   /* public function store()
{
    // Validate form data
    request()->validate([
        'course_category' => 'required',
        'subcategory' => 'required',
        'exam_name' => 'required',
        'total_no_of_question' => 'required|integer',
        'marks_per_ques' => 'required|numeric',
        'test_time' => 'required|integer',
        'pass_marks' => 'required|numeric',
        'negative_per' => 'required',
    ]);

    // Create a new instance of your custom model
    $exam = new Exam();
    
    // Set values from the form
    $exam->course_category = request('course_category');
    $exam->subcategory = request('subcategory');
    $exam->exam_name = request('exam_name');
    $exam->total_no_of_question = request('total_no_of_question');
    $exam->marks_per_ques = request('marks_per_ques');
    $exam->test_time = request('test_time');
    $exam->pass_marks = request('pass_marks');
    $exam->negative_per = request('negative_per');

  //  echo 111;exit;

    // Save the model instance
    $exam->save();

    // Redirect to the index page or any other page as needed
    return redirect('/path_to_redirect')->with('success', 'Exam created successfully');
}*/
}
