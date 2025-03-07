@extends('layouts.app')

@section('content')
<div class="container mt-4">
    <div class="d-flex justify-content-between align-items-center">
        <h2>Contact List</h2>
        {{-- <div>
            <!-- Add Contact Button -->
            <a href="{{ route('contacts.create') }}" class="btn btn-success">Add Contact</a>
        </div> --}}
    </div>

    @if (session('success'))
        <div class="alert alert-success mt-3">{{ session('success') }}</div>
    @endif

        <!-- Search and Sorting -->
        <form action="{{ route('contacts.index') }}" method="GET" class="d-flex mb-3">
            <input type="text" name="search" class="form-control me-2" placeholder="Search contacts..." value="{{ request('search') }}">
            <select name="sortBy" class="form-select me-2">
                <option value="name" {{ request('sortBy') == 'name' ? 'selected' : '' }}>Sort by Name</option>
                <option value="email" {{ request('sortBy') == 'email' ? 'selected' : '' }}>Sort by Email</option>
                <option value="phone" {{ request('sortBy') == 'phone' ? 'selected' : '' }}>Sort by Phone</option>
            </select>
            <select name="sortOrder" class="form-select me-2">
                <option value="asc" {{ request('sortOrder') == 'asc' ? 'selected' : '' }}>Ascending</option>
                <option value="desc" {{ request('sortOrder') == 'desc' ? 'selected' : '' }}>Descending</option>
            </select>
            <button type="submit" class="btn btn-primary">Search</button>
        </form>

    <table class="table mt-4">
        <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($contacts as $contact)
                <tr>
                    <td>{{ $contact->name }}</td>
                    <td>{{ $contact->email }}</td>
                    <td>{{ $contact->phone }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
    <div class="d-flex justify-content-center mt-4">
        {{ $contacts->links() }}
    </div>
</div>
@endsection
