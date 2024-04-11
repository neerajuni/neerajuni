<?php

use App\Admin\Controllers\CategoryController;
use Illuminate\Routing\Router;
use App\Admin\Controllers\ExamController;

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
    $router->resource('contents', ContentController::class);
    $router->resource('subcategories', SubcategoryController::class);
    $router->post('/courses/coursebycat', 'CourseController@coursebycat')->name('coursebycat');
    $router->post('/subcategories/subcatbycat', 'SubcategoryController@subcatbycat')->name('subcatbycat');
    $router->resource('exam', ExamController::class);
    
  // $router->resource('questions/{id}', QuestionController::class);
    $router->get('questions/{id}', 'QuestionController@show')->name('questions.show');
    
    
    $router->resource('questions', QuestionController::class);
    //$router->get('/questions/{id}', 'QuestionController@questions');
    $router->get('questions/{examId}/create', QuestionController::class.'@create');
    Route::get('questions/{question}', 'QuestionController@show')->name('admin.questions.show');






});

