<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Job;

class JobController extends Controller
{
    private $admin = '/admin_123';

    public function index()
    {
        $jobs = Job::all();

        return view('admin.jobs.jobs', compact('jobs'));
    }


    public function create()
    {
        return view('admin.jobs.create');
    }


    public function store(Request $request)
    {
        if ($request->isMethod('post')) {
            $input = $request->except('_token');
            $job = new Job();
            $job->fill($input);

            if ($job->save()) {

                return redirect($this->admin.'/jobs')->with('status', 'Job was created');
            } else {

                return redirect($this->admin.'/create')->withErrors('Job wasn\'t created');
            }
        }

        return redirect()->route('create_job')->withErrors('Error STORE');
    }


    public function edit($id)
    {
        $job = Job::find($id);

        return view('admin.jobs.edit', compact('job'));
    }


    public function update(Request $request, $id)
    {
        if ($request->isMethod('post')) {
            $input = $request->except('_token');

            $job = Job::find($id);

            $job->fill($input);

            if ($job->update()) {

                return redirect($this->admin.'/jobs')->with('status', 'Job was updated');
            } else {

                return redirect($this->admin.'/edit/'.$id)->withErrors('Job wasn\'t updated');
            }
        }

        return redirect()->route('jobs')->withErrors('Error UPDATE');
    }


    public function destroy(Request $request, $id)
    {
        if ($request->isMethod('post')) {

            $job = Job::find($id);

            if ($job->delete()) {

                return redirect($this->admin.'/jobs')->with('status', 'Job was deleted');
            } else {

                return redirect($this->admin.'/jobs')->withErrors('Job wasn\'t deleted');
            }
        }

        return redirect()->route('jobs')->withErrors('Error Deleting');
    }
}
