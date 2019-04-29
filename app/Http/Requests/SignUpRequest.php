<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SignUpRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required|min:2|max:40',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6|max:100',
            'password2' => 'required|same:password',
            'phone' => 'required|', //add phone validation
            'is_confirmed' => 'accepted'
        ];
    }
}
