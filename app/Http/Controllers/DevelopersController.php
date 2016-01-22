<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Developer;
use App\Models\Biodata;
use App\Models\Education;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class DevelopersController extends Controller
{
   public function lists(){
   		$developers = Developer::all();
   		return view('developers.list',compact('developers')); 
   }

   public function detail($id){
   	$developer = Developer::findOrFail($id);
   	$biodata = Biodata::findOrFail($developer->id);
   	$education = Education::findOrFail($developer->id);
   	return view('developers.detail',compact('developer', 'biodata', 'education'));
   }
}