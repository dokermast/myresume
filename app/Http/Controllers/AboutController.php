<?php

namespace App\Http\Controllers;

use App\Job;
use Illuminate\Http\Request;
use App\Aboutme;

class AboutController extends Controller
{
    private $admin = '/admin_123';

    public function index()
    {
        $about = Aboutme::all();

        return view('admin.about.about', compact('about'));
    }


    public function create()
    {
        //
    }


    public function store(Request $request)
    {
        //
    }


    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $about = Aboutme::find($id);

        return view('admin.about.edit', compact('about'));
    }


    public function update(Request $request, $id)
    {
        if ($request->isMethod('post')) {

            $input = $request->except('_token');

            $about = Aboutme::find($id);

            $about->fill($input);

            if ($about->update()) {

                return redirect($this->admin.'/about')->with('status', 'About Info was updated');
            } else {

                return redirect($this->admin.'/about/edit/'.$id)->withErrors('About info wasn\'t updated');
            }
        }

        return redirect()->route('about')->withErrors('Error UPDATE');
    }

    public function updatestatus(Request $request)
    {
        if ($request->isMethod('post')) {

            $input = $request->except('_token');

            Aboutme::where('status', 1)->update(['status' => 0]);

            $about = Aboutme::find($input['status']);

            $about->status = true;

            if ($about->update()) {

                return redirect($this->admin.'/about')->with('status', 'About Info was updated');
            } else {

                return redirect($this->admin.'/about')->withErrors('About info wasn\'t updated');
            }
        }

        return redirect($this->admin.'/about/')->withErrors('About info wasn\'t updated. Wrong method');
    }


    public function destroy($id)
    {
        //
    }
}
