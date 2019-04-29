<div class="container">
    <div class="widget-author widget-auth-form boxed">
        <div class="row">
            <div class="col-md-6  col-xs-offset-1">
                <h2>Login</h2>
                <p>To continue, you must enter your username and password</p>
                <form class="form-horizontal" method="POST" action="{{ route('Auth.logIn.Post') }}">
                    {{ csrf_field() }}
                    @if (count($errors) > 0)
                        <div class="alert alert-danger alert-dismissable" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                            <strong>{{ $errors->first() }}</strong><br>
                        </div>
                    @endif

                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-3 control-label">E-mail</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control{{ count($errors) > 0 ? ' is-invalid' : '' }}" placeholder="E-mail, specified during registration" name="email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-3 control-label">Пароль</label>
                        <div class="col-sm-9">
                            <input type="password" class="form-control{{ count($errors) > 0 ? ' is-invalid' : '' }}" placeholder="Password" name="password">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-6">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="remember"> Remember me</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary">Login</button>&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                    </div>
                    <div class="push-down-30">
                        Forgot your password? <a href="{{ route('password.update') }}" style="cursor: pointer">Reset password</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


