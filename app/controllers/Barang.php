<?php 

class Barang extends Controller {

    private $form;

    public function __construct()
    {
        $this -> form = new Form(BASEURL.'/mahasiswa/new', "Daftar");
    }

    public function index()
    {
        $data['title'] = "Martphone - Belanja aman dan senang!";
        $this -> view('templates/header', $data);
        // Konten produk
        $this -> view('templates/produk-nav');
        $this -> view('barang/index');
        $this -> view('templates/produk-footer');
        $this -> view('templates/footer');
    }

    public function detail()
    {
        $data['title'] = "Martphone - Belanja aman dan senang!";
        $this -> view('templates/header', $data);
        // Konten produk
        $this -> view('templates/produk-nav');
        $this -> view('barang/detail');
        $this -> view('templates/produk-footer');
        $this -> view('templates/footer');
    }
}