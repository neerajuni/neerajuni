<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Subcategory;
use \App\Models\Category;
use Illuminate\Http\Request;
class SubcategoryController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Subcategory';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Subcategory());

        $grid->column('id', __('Id'));
        //$grid->column('parent_id', __('Parent id'));
        $grid->column('categorylist.name', __('Category'));
        $grid->column('name', __('Name'));
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
        $show = new Show(Subcategory::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('parent_id', __('Parent id'));
        $show->field('name', __('Name'));
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
        $form = new Form(new Subcategory());

        $form->select('parent_id', __("Category"))->required()->options(Category::getAllCategory()->pluck('name', 'id'));
        $form->text('name', __('Name'))->required();
        $form->text('page_url', __('Page URL'))->required()->rules(function ($form) {

            // If it is not an edit state, add field unique verification
            if (!$id = $form->model()->id) {
                return 'unique:subcategory,page_url';
            }
        });

        return $form;
    }
    public function subcatbycat(Request $request)
    {
        // echo 111;exit;
        $catId =  $request->input('query');
        $result = Subcategory::where('parent_id', $catId)
        ->get(['id',  Subcategory::raw('name as text')]);

        // Convert the associative array to a JSON string with double quoted keys
        //$jsonResult = json_encode($result);

        
        
        // Return the JSON response
        return response()->json($result);
        //$result =  response()->json($course);
      
     
       
    }
}
