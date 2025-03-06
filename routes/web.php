<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\ContactController;

Route::get('/', function () {
    return Auth::check() ? redirect()->route('contacts.index') : redirect()->route('auth');
});

Route::get('/auth', function () {
    return view('auth.auth');
})->name('auth');

Route::post('/login', function () {
    $credentials = request()->validate([
        'email' => 'required|email',
        'password' => 'required',
    ]);

    if (Auth::attempt($credentials)) {
        return redirect()->route('contacts.index');
    }

    return redirect()->route('auth')->with('login_error', 'Invalid credentials.');
})->name('login');

Route::post('/register', function () {
    $data = request()->validate([
        'name' => 'required|string|max:255',
        'email' => 'required|string|email|max:255|unique:users',
        'password' => 'required|string|min:6|confirmed',
    ]);

    $user = \App\Models\User::create([
        'name' => $data['name'],
        'email' => $data['email'],
        'password' => bcrypt($data['password']),
    ]);

    Auth::login($user);
    return redirect()->route('contacts.index');
})->name('register');

// Logout Route
Route::post('/logout', function () {
    Auth::logout();
    return redirect()->route('auth');
})->name('logout');

Route::middleware(['auth'])->group(function () {
    Route::get('/contacts', [ContactController::class, 'index'])->name('contacts.index');
    Route::get('/contacts/create', [ContactController::class, 'create'])->name('contacts.create');
    Route::post('/contacts', [ContactController::class, 'store'])->name('contacts.store');
    Route::get('/contacts/{contact}/edit', [ContactController::class, 'edit'])->name('contacts.edit');
    Route::put('/contacts/{contact}', [ContactController::class, 'update'])->name('contacts.update');
    Route::delete('/contacts/{contact}', [ContactController::class, 'destroy'])->name('contacts.destroy');
});
