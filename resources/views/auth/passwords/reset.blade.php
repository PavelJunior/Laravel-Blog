{{--<div class="container mt-50">--}}
{{--    <div class="row justify-content-center">--}}
{{--        <div class="col-md-8">--}}
{{--            <div class="card">--}}
{{--                <div class="card-header">{{ __('Reset Password') }}</div>--}}

{{--                <div class="card-body">--}}
{{--                    <form method="POST" action="{{ route('password.update') }}">--}}
{{--                        @csrf--}}

{{--                        <input type="hidden" name="token" value="{{ $token }}">--}}

{{--                        <div class="form-group row">--}}
{{--                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>--}}

{{--                            <div class="col-md-6">--}}
{{--                                <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ $email ?? old('email') }}" required autofocus>--}}

{{--                                @if ($errors->has('email'))--}}
{{--                                    <span class="invalid-feedback" role="alert">--}}
{{--                                        <strong>{{ $errors->first('email') }}</strong>--}}
{{--                                    </span>--}}
{{--                                @endif--}}
{{--                            </div>--}}
{{--                        </div>--}}

{{--                        <div class="form-group row">--}}
{{--                            <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>--}}

{{--                            <div class="col-md-6">--}}
{{--                                <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>--}}

{{--                                @if ($errors->has('password'))--}}
{{--                                    <span class="invalid-feedback" role="alert">--}}
{{--                                        <strong>{{ $errors->first('password') }}</strong>--}}
{{--                                    </span>--}}
{{--                                @endif--}}
{{--                            </div>--}}
{{--                        </div>--}}

{{--                        <div class="form-group row">--}}
{{--                            <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }}</label>--}}

{{--                            <div class="col-md-6">--}}
{{--                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>--}}
{{--                            </div>--}}
{{--                        </div>--}}

{{--                        <div class="form-group row mb-0">--}}
{{--                            <div class="col-md-6 offset-md-4">--}}
{{--                                <button type="submit" class="btn btn-primary">--}}
{{--                                    {{ __('Reset Password') }}--}}
{{--                                </button>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </form>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</div>--}}


<div class="container">

    <form class="text-center border border-light p-5 col-md-6" style="margin: 0 auto " method="POST" action="{{ route('password.update') }}">
        <p class="h4 mb-4">Reset Password</p>

        @if (count($errors) > 0)
            <div class="alert alert-danger alert-dismissable" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                <strong>Errors occurred while filling out the form!</strong><br>
                Please correct them to complete registration.
            </div>
        @endif
        {{ csrf_field() }}

        <input type="email" class="form-control mb-4 {{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" placeholder="E-mail">
        @if ($errors->has('email'))
            <span class="invalid-feedback" role="alert" style="margin-top: -20px; margin-bottom: 20px;">
                <strong>{{ $errors->first('email') }}</strong>
            </span>
        @endif

        <input type="password" class="form-control mb-4 {{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" placeholder="Password">
        @if ($errors->has('password'))
            <span class="invalid-feedback" role="alert" style="margin-top: -20px; margin-bottom: 20px;">
                <strong>{{ $errors->first('password') }}</strong>
            </span>
        @endif

        <input type="password" class="form-control mb-4 {{ $errors->has('password_confirmation') ? ' is-invalid' : '' }}" name="password_confirmation" placeholder="Password Confirmation">
        @if ($errors->has('password_confirmation'))
            <span class="invalid-feedback" role="alert" style="margin-top: -20px; margin-bottom: 20px;">
                <strong>{{ $errors->first('password_confirmation') }}</strong>
            </span>
        @endif

        <button type="submit" class="btn btn-warning">
            {{ __('Reset Password') }}
        </button>
    </form>
</div>
