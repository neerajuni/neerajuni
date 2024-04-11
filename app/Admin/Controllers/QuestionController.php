<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Question;
use \App\Models\Exam;
use OpenAdmin\Admin\Layout\Content;

class QuestionController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Question';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */


   
        public function show($id, Content $content)
        {
            return $content
            ->title('Question Details')
            ->body($this->grid($id));
        }
   
    protected function grid($id)
    {
        //echo $id;exit;
        $exam = Exam::findOrFail($id);

        $grid = new Grid(new Question());
        
        // Configure grid columns and other settings
        $grid->column('examination.name', __('Exam id'));
        $grid->column('question_text', __('Question text'));
        $grid->column('option_a', __('Option a'));
        $grid->column('option_b', __('Option b'));
        $grid->column('option_c', __('Option c'));
        $grid->column('option_d', __('Option d'));
        $grid->column('answer_text', __('Answer text'));
        $grid->column('answer_option', __('Answer option'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));
        
        // Filter grid records by the questions related to the selected exam
        $grid->model()->where('exam_id', $id);
        
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
       // echo $id;exit;
        $show = new Show(Question::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('exam_id', __('Exam id'));
        $show->field('question_text', __('Question text'));
        $show->field('option_a', __('Option a'));
        $show->field('option_b', __('Option b'));
        $show->field('option_c', __('Option c'));
        $show->field('option_d', __('Option d'));
        $show->field('answer_text', __('Answer text'));
        $show->field('answer_option', __('Answer option'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        //$show->model()->where('exam_id', $id);
        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    function str_replace_last($search, $replace, $subject)
    {
        $position = strrpos($subject, $search);

        if ($position !== false) {
            $subject = substr_replace($subject, $replace, $position, strlen($search));
        }

        return $subject;
    }
    protected function form()
    {
        $form = new Form(new Question());

        $examId = explode('/', request()->path())[2]; // Extract the exam ID from the URL
        
        $form->hidden('exam_id')->default($examId); // Set the exam ID as a hidden field
       

        $form->radio('question','Question')->default('1')
            ->options([
                1 => 'Add single question',
                2 => 'Upload Question',
            ])->when(1, function (Form $form) {
                $form->ckeditor('question_text', __('Question text'))->options(['height' => 100])->required();
                $form->ckeditor('option_a', __('Option a'))->options(['height' => 100])->required();
                
                $form->ckeditor('option_b', __('Option b'))->options(['height' => 100])->required();
                $form->ckeditor('option_c', __('Option c'))->options(['height' => 100])->required();
                $form->ckeditor('option_d', __('Option d'))->options(['height' => 100])->required();
                $form->ckeditor('answer_text', __('Answer text'))->options(['height' => 100])->required();
                //$form->select('answer_option','Answer option')->required()->options(['a' => 'a', 'b' => 'b', 'c' => 'c','d' => 'd']);

                $form->radio('column','Answer')->options(['a' => 'A', 'b' => 'B','c' => 'C','d' => 'D'])->required();

            })->when(2, function (Form $form) {
                $form->file('question', 'Upload')->move('public/upload/question-data/')->rules('mimes:csv')->required();
            });
        
        // Dynamically set the form action URL by removing "2" from the URL path
       $currentUrl = request()->url();
     
         $trimidURL = rtrim($this->str_replace_last('/2/create', '', $currentUrl), '/');
      
       
        echo $trimidURL;
        
        $form->action($trimidURL);
        
        // Add an ID to the submit button
       return $form;
    }
    

    public function store()
    {
       echo 111;exit;
    }
}
