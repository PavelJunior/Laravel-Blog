<div class="container">

    <form class="text-center border border-light p-5 col-md-6" style="margin: 0 auto" method="POST" action="{{ route('auth.signup.post') }}">
        <p class="h4 mb-4">Sign up</p>

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

        <input type="password" class="form-control mb-4 {{ $errors->has('password2') ? ' is-invalid' : '' }}" name="password2" placeholder="Password Confirmation">
         @if ($errors->has('password2'))
            <span class="invalid-feedback" role="alert" style="margin-top: -20px; margin-bottom: 20px;">
                <strong>{{ $errors->first('password2') }}</strong>
            </span>
        @endif

        <input type="text" class="form-control mb-4 {{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ old('name') }}" placeholder="Ivan Ivanov">
         @if ($errors->has('name'))
            <span class="invalid-feedback" role="alert" style="margin-top: -20px; margin-bottom: 20px;">
                <strong>{{ $errors->first('name') }}</strong>
            </span>
        @endif

        <input type="text" class="form-control mb-4 {{ $errors->has('phone') ? ' is-invalid' : '' }}" name="phone" value="{{ old('phone') }}" placeholder="Phone">
         @if ($errors->has('phone'))
            <span class="invalid-feedback" role="alert" style="margin-top: -20px; margin-bottom: 20px;">
                <strong>{{ $errors->first('phone') }}</strong>
            </span>
        @endif


        <div class="d-flex justify-content-around">
            <div>
                <!-- Remember me -->
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" id="defaultLoginFormRemember" class="custom-control-input" name="is_confirmed"  {{ old('is_confirmed') ? 'checked' : '' }}>
                    <label class="custom-control-label" for="defaultLoginFormRemember">I agree to the storage and processing of personal data</label>

                </div>
            </div>
        </div>
        @if ($errors->has('is_confirmed'))
            <span class="invalid-feedback" style=" margin-bottom: 20px;">
                <strong>Agree with site polices</strong>
            </span>
        @endif


        <!-- Sign in button -->
        <button class="btn btn-warning btn-block my-4" type="submit">Sign up</button>

        <!-- Register -->
        <p>Already a member?
            <a href="{{ route('auth.login.get') }}">Login</a>
        </p>

        <!-- Social login -->
        <p>or sign in with:</p>

        <a type="button" class="mx-2" style="font-size: 20px; padding: 0px 5px" href="{{ route('api.login', "google") }}">
            <i class="fa fa-google"></i>
        </a>
        <a type="button" class="mx-2" style="font-size: 20px; padding: 0px 5px" href="{{ route('api.login', "twitter") }}" >
            <i class="fa fa-twitter"></i>
        </a>
        <a type="button" class="light-blue-text mx-2" style="font-size: 20px; padding: 0px 5px" href="{{ route('api.login', "linkedin") }}">
            <i class="fa fa-linkedin"></i>
        </a>
        <a type="button" class="light-blue-text mx-2" style="font-size: 20px; padding: 0px 5px" href="{{ route('api.login', "github") }}">
            <i class="fa fa-github"></i>
        </a>

    </form>
</div>

