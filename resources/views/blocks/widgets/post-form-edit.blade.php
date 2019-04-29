<div class="container">
    <div class="widget-author widget-auth-form boxed">
        <div class="row">
            <div class="col-12  col-xs-offset-1">
                <h2 style="margin-bottom: 40px; padding-left: 10px;">Edit Post</h2>
                <form class="form-horizontal" method="POST" enctype="multipart/form-data" >
                    {{ csrf_field() }}

                    <div class="form-group">
                        <label class="col-sm-3 control-label">Title</label>
                        <div class="col-sm-9">
                            <input value = "{{ old('title') ?? $post->title ?? null }}" type="text" class="form-control{{ $errors->has('title') ? ' is-invalid' : '' }}" placeholder="Title" name="title">
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
                            <input  value = "{{ old('preview') ?? $post->preview ?? null }}" type="text" class="form-control{{ $errors->has('preview') ? ' is-invalid' : '' }}" placeholder="Preview" name="preview">
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
                            <textarea name="body" placeholder="Body text" class="form-control{{ $errors->has('body') ? ' is-invalid' : '' }}" cols="30" rows="10">{{ old('body') ?? $post->body ?? null }}</textarea>
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
                                @foreach($categories as $category)
                                    <option
                                            @if($category->id == $post->category->id)
                                            selected="selected"  value="{{ $category->id }}">{{ $category->name }}
                                        @else
                                            value="{{ $category->id }}">{{ $category->name }}
                                        @endif
                                    </option>
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
                            <input value = "{{ old('tags') ?? $tagList ?? null }}" type="text" class="form-control{{ $errors->has('tags') ? ' is-invalid' : '' }}" placeholder="Separate tags with commas" name="tags">
                            @if ($errors->has('tags'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('tags') }}</strong>
                                </span>
                            @endif
                        </div>
                    </div>
                    <div id="oldimage" class="d-flex flex-column">
                        <label class="col-sm-3 control-label">Old image</label>
                        <img  src="{{ asset('uploads/cover_images/' . $post->cover_image) }}" height="500" width="500" class="pl-3" alt="">
                    </div>
                    <div class="form-group">
                        <label class="col-sm-6 control-label">If you want to change image choose new one</label>
                        <div class="col-sm-9">
                            <input id = "fileinput" type="file" name="cover_image">
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
