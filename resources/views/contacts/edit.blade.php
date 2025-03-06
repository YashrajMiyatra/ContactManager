<!DOCTYPE html>
<html lang="en">
<head>
    <title>Edit Contact</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-4">
    <h1 class="text-center">Edit Contact</h1>

    <div class="card p-4 shadow">
        <form action="{{ route('contacts.update', $contact) }}" method="POST">
            @csrf
            @method('PUT')
            <div class="mb-3">
                <label class="form-label">Name:</label>
                <input type="text" name="name" class="form-control" value="{{ $contact->name }}" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Email:</label>
                <input type="email" name="email" class="form-control" value="{{ $contact->email }}" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Phone:</label>
                <input type="text" name="phone" class="form-control" value="{{ $contact->phone }}" required>
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
            <a href="{{ route('contacts.index') }}" class="btn btn-secondary">Back</a>
        </form>
    </div>
</body>
</html>
