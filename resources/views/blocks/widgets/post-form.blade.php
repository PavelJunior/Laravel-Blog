<div class="container">
    <div class="widget-author widget-auth-form boxed">
        <div class="row">
            <div class="col-12  col-xs-offset-1">
                <h2 style="margin-bottom: 40px; padding-left: 10px;">Create Post</h2>
{{--                <p>Для продолжения необходимо ввести логин и пароль</p>--}}
                <form class="form-horizontal" method="POST" enctype="multipart/form-data" >
{{--                    action="{{ route('post.upload') }}"--}}
                    {{ csrf_field() }}

                    <div class="form-group">
                        <label class="col-sm-3 control-label">Title</label>
                        <div class="col-sm-9">
                            <input value = "{{ old('title') ?? null }}" type="text" class="form-control{{ $errors->has('title') ? ' is-invalid' : '' }}" placeholder="Title" name="title">
                            @if ($errors->has('title'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('title') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Preview</label>
                        <div class="col-sm-9">
                            <input  value = "{{ old('preview') ?? null }}" type="text" class="form-control{{ $errors->has('preview') ? ' is-invalid' : '' }}" placeholder="Preview" name="preview">
                            @if ($errors->has('preview'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('preview') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Body</label>
                        <div class="col-sm-9">
                            <textarea name="body" placeholder="Body text" class="form-control{{ $errors->has('body') ? ' is-invalid' : '' }}" cols="30" rows="10">{{ old('body')  ?? null }}</textarea>
                            @if ($errors->has('body'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('body') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Category</label>
                        <div class="col-sm-9">
                            <select class="form-control{{ $errors->has('category') ? ' is-invalid' : '' }}" name="category">
                                <option selected="selected" disabled>Choose category</option>
                                @foreach($categories as $category)
                                <option value="{{ $category->id }}">{{ $category->name }}</option>
                                @endforeach
                            </select>
                            @if ($errors->has('category'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('category') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Tags</label>
                        <div class="col-sm-9">
                            <input value = "{{ old('tags') ?? null }}" type="text" class="form-control{{ $errors->has('tags') ? ' is-invalid' : '' }}" placeholder="Separate tags with commas" name="tags">
                            @if ($errors->has('tags'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('tags') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Image</label>
                        <div class="col-sm-9">
                            <input value="{{ old('cover-image') ?? null }}" type="file" name="cover_image">
                            <p role="alert" style="color: #dc3544; font-size: 11px"><strong>{{ $errors->first('cover_image') }}</strong></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary">Submit</button>&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


