<!DOCTYPE html>
<html lang="en">
<head>
    <title>Add Contact</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-4">
    <h1 class="text-center">Add New Contact</h1>

    <div class="card p-4 shadow">
        <form action="{{ route('contacts.store') }}" method="POST">
            @csrf
            <div class="mb-3">
                <label class="form-label">Name:</label>
                <input type="text" name="name" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Email:</label>
                <input type="email" name="email" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Phone:</label>
                <input type="text" name="phone" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-success">Save</button>
            <a href="{{ route('contacts.index') }}" class="btn btn-secondary">Back</a>
        </form>
    </div>
</body>
</html>
