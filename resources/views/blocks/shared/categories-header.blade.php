<li><a href="#">Categories</a>
    <ul class="dropdown">
    @foreach($categories as $category)
            <li><a href="{{ route('main.list.category', $category->name) }}">{{ $category->name }}</a></li>
    @endforeach
    </ul>
</li>