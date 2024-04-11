<?php

use App\Admin\Controllers\CategoryController;
use Illuminate\Routing\Router;

Admin::routes();


Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->resource('category', CategoryController::class);
	$router->resource('courses', CourseController::class);
	$router->resource('coursecategory', CoursecategoryController::class);
    $router->resource('studymaterials', StudymaterialsController::class);
    $router->resource('orders', OrderController::class);
    $router->resource('category', CategoryController::class);
    $router->resource('subcategories', SubcategoryController::class);





    
  

});

