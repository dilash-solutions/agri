<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\facades\Auth;

use Illuminate\Support\Facades\DB;
use App\Models\employee;
use App\Models\crop;
use App\Models\harvest_inflow;
use App\Models\harvest_outflow;
use App\Models\income;
use App\Models\expence;
use Carbon\Carbon;
use laravel\Eloquent;

class DashboardController extends Controller
{
    public function index(){

        if(Auth::user()->hasRole('user'))
        {

          
            return view('user.employee');     
                 
           // return view('user.dashboard');

        }

       
    }
}
