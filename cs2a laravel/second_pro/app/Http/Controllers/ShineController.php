<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ShineController extends Controller
{
    //
    public function index(){
        return view('front-end.index');
    }
    public function detail(){
        return view('front-end.detail');
    }
    
}
