<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\employee;
use App\Models\crop;
use App\Models\harvest_inflow;
use App\Models\harvest_outflow;
use App\Models\income;
use App\Models\expence;
use Carbon\Carbon;
use laravel\Eloquent;
use App\Models\Attendance;

class Admin extends Controller
{
    
      
        function getEmployee(){
      
          $user = DB::select('select * from employees');
      
          return view ('admin.employee',['user'=>$user]);
        }

        function getUsers(){
      
            $user = DB::select('select * from users');
        
            return view ('admin.users',['user'=>$user]);
          }

          function getExpences(){
      
            $user = DB::select('select * from expences');
        
            return view ('admin.harvest',['user'=>$user]);
          }

          function getHarvest(){
      
            $user = DB::select('select * from harvest_inflows');
            $outflow = DB::select('select * from harvest_outflows');
        
            return view ('admin.harvest',['user'=>$user,'outflow'=>$outflow]);
          }

          
    
}
