<div class="container">
    <div class="widget-author widget-register-form boxed">
        <div class="row">
            <div class="col-md-6  col-xs-offset-1">
                <h2>Registration</h2>
                <p>fields marked * are <strong>required</strong></p>

                <form class="form-horizontal" method="POST" enctype="application/x-www-form-urlencoded" action="{{ route('Auth.signUp.Post') }}">
                    {{ csrf_field() }}
                    @if (count($errors) > 0)
                        <div class="alert alert-danger alert-dismissable" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                            <strong>Errors occurred while filling out the form!</strong><br>
                            Please correct them to complete registration.
                        </div>
                    @endif

                    @if ($errors->has('email'))
                        <div class="form-group has-error">
                            @else
                                <div class="form-group">
                                    @endif
                                    <label class="col-sm-4 control-label">E-mail <span class="req-field">*</span></label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" placeholder="user@domain.ru" value="{{ old('email') }}">
                                        @if ($errors->has('email'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('email') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>

                                @if ($errors->has('password'))
                                    <div class="form-group has-error">
                                        @else
                                            <div class="form-group">
                                                @endif
                                                <label class="col-sm-4 control-label">Password <span class="req-field">*</span></label>
                                                <div class="col-sm-8">
                                                    <input type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" value="{{ old('password') }}" placeholder="Create a password">
                                                    @if ($errors->has('password'))
                                                        <span class="invalid-feedback" role="alert">
                                                            <strong>{{ $errors->first('password') }}</strong>
                                                         </span>
                                                    @endif
                                                </div>
                                            </div>

                                            @if ($errors->has('password2'))
                                                <div class="form-group has-error">
                                                    @else
                                                        <div class="form-group">
                                                            @endif
                                                            <label class="col-sm-4 control-label">Repeat password <span class="req-field">*</span></label>
                                                            <div class="col-sm-8">
                                                                <input type="password" class="form-control" name="password2" value="{{ old('password2') }}" placeholder="Repeat the password">
                                                            </div>
                                                        </div>

                                                        @if ($errors->has('name'))
                                                            <div class="form-group has-error">
                                                                @else
                                                                    <div class="form-group">
                                                                        @endif
                                                                        <label class="col-sm-4 control-label">Name or nickname </label>
                                                                        <div class="col-sm-8">
                                                                            <input type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" placeholder="Ivan Ivanov" value="{{ old('name') }}">
                                                                            @if ($errors->has('name'))
                                                                                <span class="invalid-feedback" role="alert">
                                                                                    <strong>{{ $errors->first('name') }}</strong>
                                                                                </span>
                                                                            @endif
                                                                        </div>
                                                                    </div>

                                                                    @if ($errors->has('phone'))
                                                                        <div class="form-group has-error">
                                                                            @else
                                                                                <div class="form-group">
                                                                                    @endif
                                                                                    <label class="col-sm-4 control-label">Phone number</label>
                                                                                    <div class="col-sm-8">
                                                                                        <input type="text" class="form-control{{ $errors->has('phone') ? ' is-invalid' : '' }}" id="register_phone" name="phone" placeholder="+79991234567" value="{{ old('phone') }}">
                                                                                        @if ($errors->has('phone'))
                                                                                            <span class="invalid-feedback" role="alert">
                                                                                                <strong>{{ $errors->first('phone') }}</strong>
                                                                                            </span>
                                                                                        @endif
                                                                                    </div>
                                                                                </div>

                                                                                @if ($errors->has('is_confirmed'))
                                                                                    <div class="form-group has-error">
                                                                                        @else
                                                                                            <div class="form-group">
                                                                                                @endif
                                                                                                <div class="col-sm-offset-4 col-sm-8">
                                                                                                    <div class="checkbox">
                                                                                                        <label>
                                                                                                            <input type="checkbox" name="is_confirmed" {{ old('is_confirmed') ? 'checked' : '' }}><span class="text-no-error"> I agree to the storage and processing of personal data</span></label>
                                                                                                        @if ($errors->has('is_confirmed'))
                                                                                                            <br><br><span class="error-message">{{ $errors->first('is_confirmed') }}</span>
                                                                                                        @endif
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <div class="col-sm-offset-2 col-sm-10">
                                                                                                    <button type="submit" class="btn btn-primary">Submit</button>&nbsp;&nbsp;&nbsp;&nbsp;
                                                                                                    <button type="reset" class="btn btn-gray">Clear</button>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="push-down-30">
                                                                                                Already a member? <a href="{{ route('Auth.logIn.Get') }}" style="cursor: pointer">Login</a>
                                                                                            </div>
                </form>
            </div>
        </div>
    </div>

</div>

