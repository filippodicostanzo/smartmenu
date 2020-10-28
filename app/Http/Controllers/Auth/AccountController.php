<?php

namespace App\Http\Controllers\Auth;
use App\Http\Controllers\Controller;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AccountController extends Controller
{
    /**
     * Show the form for editing the specified resource.
     *
     * @param User $user
     * @return \Illuminate\Http\Response
     */
    public function edit()
    {
        $item = auth()->user();
        return view('auth.account.edit', compact('item'));

    }


    public function update(Request $request)
    {
        $user = auth()->user();

        $this->validate($request, [
            'name' => 'required',
            'email' => 'required',
            'password' => 'required',
        ]);

        $input = $request->all();
        $input['password'] = Hash::make($request->input('password'));

        $res = User::find($user->id)->update($input);

        $message = $res ? 'L\'Utente ' . $user->name . ' è stato modificato' : 'L\'Utente ' .  $user->name . ' non è stato modificato';
        session()->flash('message', $message);
        return redirect()->route('account.edit');
    }
}
