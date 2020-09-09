<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Visitor;

class VisitorController extends Controller
{
    public function index()
    {
        $visitors = Visitor::all();

        return view('admin.visitors.visitors', compact('visitors'));
    }
}
