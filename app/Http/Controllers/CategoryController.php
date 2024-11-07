<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;


class CategoryController extends Controller
{
    public function show_category(){
        $categories = Category::with(['courses.writer'])->get();
        $courses = $categories->pluck('courses')->flatten();
        return view('home', compact('categories', 'courses'));
    }

    public function show_detail($id){    
        $category = Category::with(['courses'])->find($id);
        return view('course.category_detail', compact('category'));
    }   
}
