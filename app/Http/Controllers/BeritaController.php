<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Berita;

class BeritaController extends Controller
{
    //
    public function index()
    {
        $berita = Berita::all();
        return view("admin.berita", compact(['berita']));
    }
    public function store(Request $req)
    {
Berita::create($req->except(['_token','submit']));
return redirect('/admin/berita');
    }

    public function hapusberita($id)
    {
        $berita=Berita::find($id);
        //dd($berita);
        $berita->delete();
        return redirect('/admin/berita');
    }


    public function editberita($id)
    {
        $berita=Berita::find($id);
        //dd($berita);
        return view("admin.editberita", compact(['berita']));
    }

    public function updateberita($id, Request $req){
        $berita=Berita::find($id);
        $berita->update($req->except(['_token','submit']));
        return redirect('/admin/berita');
    }
}


