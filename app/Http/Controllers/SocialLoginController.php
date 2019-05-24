<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Socialite;

class SocialLoginController extends Controller
{
    public function redirectToProvider($provider)
    {
        return Socialite::driver($provider)->redirect();
    }

    public function handleProviderCallback($provider)
    {
        $user = Socialite::driver($provider)->user();
        $authUser = $this->findOrCteateUser($user, $provider);
        Auth::login($authUser, true);
        return redirect()->route('main.index');
    }

    public function findOrCteateUser($user, $provider)
    {
        $authUser = User::where('provider_id', $user->id)->first();
        if($authUser){
            return $authUser;
        }
        $userName = $user->name == null ? $user->nickname : $user->name;
        return User::create([
            'name'=> $userName,
            'email'=> $user->email,
            'provider'=> strtoupper($provider),
            'provider_id' => $user->id,
            'role_id' => 3,
            'email_verified_at' => now()
        ]);
    }
}
