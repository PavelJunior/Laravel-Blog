<div class="container">
    <form class="text-center border border-light p-5 col-md-6" style="margin: 0 auto" method="POST" action="{{ route('auth.login.post') }}">
        <p class="h4 mb-4">Log in</p>

        @if (count($errors) > 0)
            <div class="alert alert-danger alert-dismissable" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                <strong>{{ $errors->first() }}</strong><br>
            </div>
        @endif

        {{ csrf_field() }}

        <input type="email" id="defaultLoginFormEmail" class="form-control mb-4 {{ count($errors) > 0 ? ' is-invalid' : '' }}" placeholder="E-mail" name="email">

        <input type="password" id="defaultLoginFormPassword" class="form-control mb-4 {{ count($errors) > 0 ? ' is-invalid' : '' }}" placeholder="Password" name="password">

        <div class="d-flex justify-content-around">
            <div>
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" id="defaultLoginFormRemember" name="remember">
                    <label class="custom-control-label" for="defaultLoginFormRemember">Remember me</label>
                </div>
            </div>
            <div>
                <a href="{{ route('password.update') }}">Forgot password?</a>
            </div>
        </div>

        <button class="btn btn-warning btn-block my-4" type="submit">Sign in</button>

        <p>Not a member?
            <a href="{{ route('auth.signup.get') }}">Register</a>
        </p>

        <p>or sign in with:</p>

        <a type="button" class="light-blue-text mx-2" style="font-size: 20px; padding: 0px 5px" href="{{ route('api.login', "google") }}">
            <i class="fa fa-google"></i>
        </a>
        <a type="button" class="light-blue-text mx-2" style="font-size: 20px; padding: 0px 5px" href="{{ route('api.login', "twitter") }}" >
            <i class="fa fa-twitter"></i>
        </a>
    </form>
</div>
