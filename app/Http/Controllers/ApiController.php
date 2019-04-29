<?php

namespace App\Http\Controllers;

use App\Http\Requests\ContactRequest;
use App\Mail\ContactMail;
use Illuminate\Support\Facades\Mail;


class ApiController extends Controller
{
    public function contact(ContactRequest $request)
    {
        Mail::to('laravelblog92@gmail.com')
            ->send(new ContactMail($request->all()));
    }
}
