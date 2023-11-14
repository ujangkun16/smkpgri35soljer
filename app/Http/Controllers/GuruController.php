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

    public function hapusguru($id)
    {
        $guru=Guru::find($id);
        //dd($guru);
        $guru->delete();
        return redirect('/admin/guru');
    }

    public function editguru($id)
    {
        $guru=Guru::find($id);
        //dd($guru);
        return view("admin.editguru", compact(['guru']));
    }

    public function updateguru($id, Request $req){
        $guru=Guru::find($id);
        $guru->update($req->except(['_token','submit']));
        return redirect('/admin/guru');
    }


}
