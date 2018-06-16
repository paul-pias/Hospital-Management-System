<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Admincontroller extends Controller
{

   public function doctor()
  {
    return view('doctor');
  }

  public function patient()
 {
   return view('patient');
 }
 public function gallery()
{
  return view('gallery');
}
public function our_team()
{
 return view('our_team');
}
public function about()
{
 return view('about');
}
public function contact()
{
 return view('contact');
}

}

 ?>
