<div class="container">
    <form class="text-center border border-light p-5 col-md-6" style="margin: 0 auto" method="POST" action="{{ route('password.email') }}">
        <p class="h4 mb-4">Forgot Password</p>

        @if (count($errors) > 0)
            <div class="alert alert-danger alert-dismissable" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                <strong>{{ $errors->first() }}</strong><br>
            </div>
        @elseif (session('status'))
            <div class="alert alert-success" role="alert">
                {{ session('status') }}
            </div>
        @endif

        {{ csrf_field() }}

        <input id="email" type="email" class="form-control mb-4 {{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" placeholder="E-mail">


        <button type="submit" class="btn btn-warning">
            {{ __('Send Password Reset Link') }}
        </button>
    </form>
</div>

