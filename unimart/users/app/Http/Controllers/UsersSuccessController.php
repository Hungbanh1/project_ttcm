<?php

namespace App\Http\Controllers;

use App\order;
use Illuminate\Http\Request;
use Carbon\Carbon;

class UsersSuccessController extends Controller
{
    //

    function show(){

        // $order = order
        $time = Carbon::now();
        return view('users.success.show' ,compact('time') );
    }
}
