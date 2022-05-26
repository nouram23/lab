<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MiniiController extends Controller
{
    //
    public function index(){
        $too = array(12,"too2","too3",50);
        $name = "Azaa";
        $age = 23;
        return view('welcome', compact('name','age','too'));
    }
    public function second(){
        return view('about');
    }
}

