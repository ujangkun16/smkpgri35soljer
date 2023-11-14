<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Guru;

class GuruController extends Controller
{
    //
    public function index()
    {
        $guru = Guru::all();
        return view("admin.guru", compact(['guru']));
    }
    public function store(Request $req)
    {
Guru::create($req->except(['_token','submit']));
return redirect('/admin/guru');
    }

}
