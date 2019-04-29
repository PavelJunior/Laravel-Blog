@if ($message = Session::get('success'))
    <div class="alert alert-success alert-block" style="margin-bottom: 0px;">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong>{{ $message }}</strong>
    </div>
@endif

@if ($message = Session::get('info'))
    <div class="alert alert-warning alert-block" style="margin-bottom: 0px">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong>{{ $message }}</strong>
    </div>
@endif