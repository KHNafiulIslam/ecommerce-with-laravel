<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use App\Models\User;
class CheckUser
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        if($request->has('reg') && $request->has('uname'))
        {
            $user = User::where('email',$request->get('email'))->first();
            if(isset($user) && $user!=NULL)
            {
                return redirect()->back()->with('error','Email already exists!');
            }
        }
        return $next($request);
    }
}
