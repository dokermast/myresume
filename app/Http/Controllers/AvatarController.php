<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Avatar;

class AvatarController extends Controller
{
    public function index()
    {
        $avatars = Avatar::all();

        return view('admin.avatars.avatars', ['avatars' => $avatars ]);
    }


    public function store(Request $request)
    {
        if ($request->isMethod('POST')) {
            $input = $request->except('_token');
            $avatar = new Avatar();
            $filename = $input['avatar']->getClientOriginalName();
            $avatar->filename = $filename;
//            asset('storage/app/public/avatars/'.$filename);
            $path = $request->file('avatar')->store('uploads/avatars', 'public');

//            $path = $request->file('image')->store('/storage/app/public/uploads/images', 'public');
//            $avatar->path = $path;

            $avatar->path = '/storage/app/public/'.$path;

            if(!$avatar->save()){
                unlink('public/storage/'.$path);

                return redirect(env('ADMIN').'/avatars')->withErrors('Avatar wasn\'t uploaded');
            }

            return redirect(env('ADMIN').'/avatars')->with('status', 'Avatar was uploaded');
        }
    }


    public function update(Request $request, Avatar $avatar)
    {
        Avatar::where('status', 1)->update(['status' => 0]);
        $avatar = Avatar::find($avatar->id);
        $avatar->status = 1;
        if($avatar->update()){

            return redirect(env('ADMIN').'/avatars')->with('status', 'The Avatar was update');
        }

        return redirect(env('ADMIN').'/avatars')->withErrors('The Avatar wasn\'t updated');
    }


    public function destroy(Request $request, $id)
    {
        if ($request->isMethod('POST')) {

            $avatar = Avatar::find($id);

            if($avatar){

                unlink('public/storage/'.$avatar->path);

                if($avatar->delete()) {

                    return redirect(env('ADMIN').'/avatars')->with('status', 'Avatar was deleted');

                } else {

                    return redirect(env('ADMIN').'/avatars')->withErrors('Avatar wasn\'t deleted');
                }
            }

            return redirect(env('ADMIN').'/avatars')->with('status', 'Avatar was uploaded');
        }
    }

}
