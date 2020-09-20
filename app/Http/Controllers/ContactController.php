<?php

namespace App\Http\Controllers;

use App\Contact;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use PHPMailer\PHPMailer\PHPMailer;


class  ContactController extends Controller
{

    public function index()
    {
        $contact = Contact::find(1);

        if(!$contact){
            $contact = [
                'id' => 1,
                'location' => 'City, Country',
                'linkin' => 'https://www.linkedin.com/feed/',
                'github' => 'https://github.com',
                'skype' => 'skype',
                'phone' => '111111111',
                'email' => 'mail@mail.com'
            ];

            $contact = (object)$contact;
        }

        return view('admin.contacts.contacts', compact('contact'));
    }

    public function edit()
    {
        $contact = Contact::find(1);

        if(!$contact){
            $contact = [
                'id' => 1,
                'location' => 'City, Country',
                'linkin' => 'https://www.linkedin.com/feed/',
                'github' => 'https://github.com',
                'skype' => 'skype',
                'phone' => '111111111',
                'email' => 'mail@mail.com'
            ];

            $contact = (object)$contact;
        }

        return view('admin.contacts.edit', compact('contact'));
    }

    public function update(Request $request, $id)
    {
        if ($request->isMethod('post')) {
            $input = $request->except('_token');

            $contact = Contact::find($id);

            if($contact){
                $contact->fill($input);
            } else {
                $contact = new Contact();
            }

            $contact->fill($input);
            $contact->save();

            return redirect(env('ADMIN').'/contacts')->with('status', 'Contact was updated');
        }

        return redirect()->route('jobs')->withErrors('Error UPDATE');
    }

}
