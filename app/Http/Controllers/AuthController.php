<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Auth\Events\Registered;
use Illuminate\Http\Request;
use App\Http\Requests\SignUpRequest;
use Illuminate\Foundation\Auth\ResetsPasswords;
use Illuminate\Support\Facades\Auth;
use DB;


class AuthController extends Controller
{
    use ResetsPasswords;

    public function signUp()
    {
        return view('layouts.secondary', [
            'page' => 'pages.sign-up',
            'title' => 'Sign Up',
            'withInstagramFooter' => false,
            'ways' => ['Registration']

        ]);
    }

    public function signUpPost(SignUpRequest $request)
    {
        $user = new User();

        $user->email = $request->input('email');
        $user->password = bcrypt($request->input('password'));
        $user->name = $request->input('name');
        $user->phone = $request->input('phone');

        $user->save();

        Auth::login($user);

        event(new Registered($user));

        return redirect()->route('verification.notice');

    }

    public function logIn()
    {
        if (Auth::check()) {
            Auth::logout();
        }

        session()->put('from', url()->previous());


        return view('layouts.secondary', [
            'page' => 'pages.log-in',
            'title' => 'Log in',
            'withInstagramFooter' => false,
            'ways' => ['Authorization']

        ]);
    }

    public function logInPost(Request $request)
    {
        $credentials = $request->only('email', 'password');
        $remember = $request->input('remember');

        if (Auth::attempt($credentials, $remember)) {
            return redirect(session()->pull('from'));
        } else {
            return redirect()->back()->withErrors(['Authorisation Error!']);
        }
    }
}
