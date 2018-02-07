<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\User;
use App\Http\Controllers\Controller;
use App\Http\Requests;

class UserController extends Controller
{
    /**
     * Show the profile for the given user.
     *
     * @param  int  $id
     * @return Response
     */
    public function index()
    {

        $users = User::all();

        return view('home', compact('users'));

    }

    public function delete($id)
    {
        $users = User::find($id);
        $users->delete();

        return redirect('/home');
    }

    public function edit($id, Request $request)
    {
        $user = User::find($id);
        if ("".$request->user()->id == $id || $request->user()->role == "admin") {
            return view('useredit', compact('user'));
        } else {
            return redirect('/home');
        }
    }

    public function update($id, Request $request)
    {
        $userUpdate = $request->all();
        $userUpdate['password'] = bcrypt($userUpdate['password']);
        $user = User::find($id);

        $user->update($userUpdate);
        return redirect('/home');
    }

    public function show($id)
    {
        return view('user.profile', ['user' => User::findOrFail($id)]);
    }
}