<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $email = $request->has('email')? $request->get('email'):'';
        $pass = $request->has('pass')? $request->get('pass'):'';
        $user_info = User::where('email','=',$email)->where('password','=',$pass)->first();
        
        if(isset($user_info)&&$user_info!=NULL){
            $product_controller = new ProductController();
            return $product_controller->addProduct();
            // return redirect('/admin_products');
        }
        else{
            return redirect()->back();
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'uname'=> 'required|max:50',
            'email'=> 'required|max:100|unique:users',
            'mobile'=> 'numeric',
            'pass'=> 'required|min:6'
        ]);
            User::insert([
            'name'=>$request->has('uname')? $request->get('uname'):'',
            'email'=>$request->has('email')? $request->get('email'):'',
            'mobile_number'=>$request->has('moble')? $request->get('mobile'):'',
            'password'=>$request->has('pass')? $request->get('pass'):''
        ]);
        return redirect('/admin_products');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    public function __construct(){
        $this->middleware('checkuser')->only('store');
    }
}
