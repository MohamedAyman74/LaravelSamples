<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    function login(Request $request) {

        $request->validate([
            'email' => 'required|string',
            'password' => 'required|string'
        ]);

        $user = User::where('email', $request->email)->first();

        if(!$user) {
            return response([
                'message' => 'Email does not exist'
            ]);
        }
        elseif (!Hash::check($request->password, $user->password)) {
            return response([
                'messeage' => 'Wrong password'
            ]);
        }

        $token = $user->createToken('Access Token')->plainTextToken;

        return response([
            'user' => $user,
            'token' => $token
        ], 200);
    }

    function register(Request $request) {
        $request->validate([
            'name' => 'required|string',
            'email' => 'required|string|unique:users,email',
            'password' => 'required|string'
        ]);

        $user = new User([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password)
        ]);
        $user->save();

        $token = $user->createToken('Access Token')->plainTextToken;

        return response([
            'user' => $user,
            'token' => $token
        ], 201);
    }

    function logout() {
        $user = request()->user();
        $user->tokens()->where('id', $user->currentAccessToken()->id)->delete();

        return ['message' => 'Logged out'];
    }
}
