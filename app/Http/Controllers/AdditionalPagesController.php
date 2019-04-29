<?php

namespace App\Http\Controllers;

use App\Http\Requests\ContactRequest;
use App\Mail\ContactMail;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;

class AdditionalPagesController extends Controller
{
    public function about()
    {
        return view('layouts.secondary', [
            'page' => 'pages.about',
            'title' => 'About us',
            'withInstagramFooter' => true,
            'ways' => ['About']
        ]);
    }

    public function contact()
    {
        return view('layouts.secondary', [
            'page' => 'pages.contact',
            'title' => 'Contact',
            'withInstagramFooter' => true,
            'ways' => ['Contact'],
        ]);
    }
}
