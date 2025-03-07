<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'My Laravel App')</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>


<body>

    {{-- haeader --}}
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="{{ url('/') }}">Contacts</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    @guest
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('auth') }}">Login / Register</a>
                        </li>
                    @else
                        {{-- <li class="me-3">
                            <a href="{{ route('contacts.create') }}" class="btn btn-success">Add Contact</a>
                        </li> --}}

                        @if (request()->routeIs('contacts.create'))
                            <li class="me-3">
                                <a href="{{ route('contacts.index') }}" class="btn btn-secondary">Back</a>
                            </li>
                        @else
                            <li class="me-3">
                                <a href="{{ route('contacts.create') }}" class="btn btn-success">Add Contact</a>
                            </li>
                        @endif

                        <li class="nav-item">
                            <form action="{{ route('logout') }}" method="POST">
                                @csrf
                                <button type="submit" class="btn btn-danger">Logout</button>
                            </form>
                        </li>
                    @endguest
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-4">
        @yield('content')
    </div>

    {{-- footer --}}
    <footer class="bg-dark text-white text-center py-3 mt-5">
        <div class="container">
            <p>&copy; {{ date('Y') }} My Laravel App. All rights reserved.</p>
            <p>
                <a href="{{ url('/') }}" class="text-white">Home</a> |
                <a href="#" class="text-white">Privacy Policy</a> |
                <a href="#" class="text-white">Terms of Service</a>
            </p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
