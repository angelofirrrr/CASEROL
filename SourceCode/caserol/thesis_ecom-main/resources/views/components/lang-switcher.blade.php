<li class="nav-item dropdown">
    <a class="nav-link" data-toggle="dropdown" href="#">
        <i class="fas fa-globe"></i>
    </a>
    <div class="dropdown-menu dropdown-menu-right">
        @foreach ($lang as $code => $name)
        <a href="{{ URL::current() }}?lang={{ $code }}" class="dropdown-item">
        {{-- <a href="{{ url($code . '/admin/categories') }}" class="dropdown-item"> --}}
            {{ $name }}
        </a>
        @endforeach
    </div>
</li>
