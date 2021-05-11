<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ChubblifeDashboard extends Controller
{
    //
      // Show View Dashboard
      public function viewDashboard()
      {
          return view('chubblife.dashboard');
      }
}
