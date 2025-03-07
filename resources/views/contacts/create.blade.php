@extends('layouts.app')

@section('title', 'Add Contact')

@section('content')
    <h1 class="text-center mb-4">Add New Contact</h1>

    <div class="card p-4 shadow w-50 mx-auto">
        <form action="{{ route('contacts.store') }}" method="POST">
            @csrf
            <div class="mb-3">
                <label class="form-label">Name:</label>
                <input type="text" name="name" class="form-control form-control-sm" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Email:</label>
                <input type="email" name="email" class="form-control form-control-sm" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Phone:</label>
                <input type="text" name="phone" class="form-control form-control-sm" required>
            </div>
            <div class="d-flex justify-content-between">
                <a href="{{ route('contacts.index') }}" class="btn btn-secondary">Back</a>
                <button type="submit" class="btn btn-success">Save</button>
            </div>
        </form>
    </div>
@endsection
