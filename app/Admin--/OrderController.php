<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Order;

class OrderController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Order';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Order());

        $grid->column('id', __('Id'));
        $grid->column('item', __('Item'));
        $grid->column('qty', __('Qty'));
        $grid->column('price', __('Price'));
        $grid->column('item_id', __('Item id'));
        $grid->column('user', __('User'));
        $grid->column('total_price', __('Total price'));
        $grid->column('payment_mode', __('Payment mode'));
        $grid->column('transection_id', __('Transection id'));
        $grid->column('payment_status', __('Payment status'));
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
        $show = new Show(Order::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('item', __('Item'));
        $show->field('qty', __('Qty'));
        $show->field('price', __('Price'));
        $show->field('item_id', __('Item id'));
        $show->field('user', __('User'));
        $show->field('total_price', __('Total price'));
        $show->field('payment_mode', __('Payment mode'));
        $show->field('transection_id', __('Transection id'));
        $show->field('payment_status', __('Payment status'));
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
        $form = new Form(new Order());

        $form->text('item', __('Item'));
        $form->number('qty', __('Qty'))->default(1);
        $form->decimal('price', __('Price'));
        $form->text('item_id', __('Item id'));
        $form->text('user', __('User'));
        $form->text('total_price', __('Total price'));
        $form->text('payment_mode', __('Payment mode'));
        $form->text('transection_id', __('Transection id'));
        $form->text('payment_status', __('Payment status'));

        return $form;
    }
}
