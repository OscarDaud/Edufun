<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Writer;

class WriterController extends Controller
{
    public function show_writers(){
        $writers = Writer::all();
        return view('writers', compact('writers'));
    }

    public function show_writer($id){
        $writer = Writer::find($id);
        return view('writer_detail', compact('writer'));
    }
}
