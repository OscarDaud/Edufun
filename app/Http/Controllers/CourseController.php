<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Course;

class CourseController extends Controller
{
    public function show_course($id){
        $course = Course::with(['category','writer'])->find($id);
        return view('course.course_detail', compact('course'));
    }

    public function show_popular(){
        $courses = Course::with(['category','writer'])->paginate(3);
        return view('course.popular', compact('courses'));
    }
}
