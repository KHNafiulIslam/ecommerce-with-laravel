<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class mailController extends Controller
{
    public function sendMail(Request $request)
    {
     if($request->has('email'))
     {
         $email = $request->get('email');
         $pass = Rand(100001,999999);
         $details = [
             'title' => 'Send User Password',
             'body' => 'Your password is '. $pass
         ];
         Mail::to($email)->send(new TestMail($details));
         return json_encode(['success'=>true,'responce_code'=>200]);
     }else{
        return json_encode(['success'=>false,'responce_code'=>404]);
     }
    }   
}
