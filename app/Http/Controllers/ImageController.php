<?php

namespace App\Http\Controllers;

use App\Image;
use Illuminate\Http\Request;

class ImageController extends Controller
{
    private $admin = '/admin_123';

    public function index()
    {
        $images = Image::all();

        return view('admin.images.images', ['images' => $images ]);
    }

    public function store(Request $request)
    {
        if ($request->isMethod('POST')) {

            $input = $request->except('_token');
            $image = new Image();
            $filename = $input['image']->getClientOriginalName();
            $image->filename = $filename;
//            asset('storage/app/public/avatars/'.$filename);
            $path = $request->file('image')->store('uploads/images', 'public');
            $image->path = $path;

            if(!$image->save()){
                unlink('public/storage/'.$path);

                return redirect($this->admin.'/images')->withErrors('Image wasn\'t uploaded');
            }

            return redirect($this->admin.'/images')->with('status', 'Image was uploaded');
        }
    }


    public function update(Request $request, Image $image)
    {
        Image::where('status', 1)->update(['status' => 0]);
        $image = Image::find($image->id);
        $image->status = 1;
        if($image->update()){

            return redirect($this->admin.'/images')->with('status', 'The Image was update');
        }

        return redirect($this->admin.'/imagess')->withErrors('The Image wasn\'t updated');
    }

}
