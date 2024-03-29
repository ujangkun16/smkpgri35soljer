<?php

namespace App\Http\Controllers;
use App\Models\Galeri;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\View\View;
class galeriController extends Controller
{
    //
    public function index():View
    {
        $datagaleri=Galeri::all();
        return view('admin.galeri', compact('datagaleri'));
    }

    public function tampil()
    {
        $tampil = Galeri::orderBy('created_at','DESC')->get();
        return view('galeri', compact(['tampil']));
    }

    public function store(Request $request): RedirectResponse
    {
$this->validate($request, [
    'media' => 'required|image|mimes:png,jpg,jpeg|max:2048'
]);
$imageName=time() .'.'. $request->media->extension();
$request->media->move(public_path('img'), $imageName);


Galeri::create([

    'media'=> $imageName,
    'caption' => $request->caption,
]);
return redirect("/admin/galeri")->with(['succes' => 'Data Berhasil di Simpan']);
    }

    public function hapusgaleri($id)
    {
        $galeri=Galeri::find($id);
        //dd($galeri);
        $galeri->delete();
        return redirect('/admin/galeri');
    }


    public function editgaleri($id)
    {
        $galeri=Galeri::find($id);
        //dd($galeri);
        return view("admin.editgaleri", compact(['galeri']));
    }

    public function updategaleri($id, Request $request){
        $galeri=Galeri::find($id);
      
        $this->validate($request, [
            'media' => 'required|image|mimes:png,jpg,jpeg|max:2048'
        ]);
        $imageName=time() .'.'. $request->media->extension();
        $request->media->move(public_path('img'), $imageName);
        
        
        $galeri->update([
        
            'media'=> $imageName,
            'caption' => $request->caption,
       ]);
        return redirect('/admin/galeri');
    }
}
