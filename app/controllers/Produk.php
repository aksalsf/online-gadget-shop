<?php 

class Produk extends Controller {

    private $formProduk;

    public function __construct()
    {
        $this -> formProduk = new Form(BASEURL. '/Produk/insertData', 'Tambah');
    }

    public function index() {
        // nama tab
        $data['title'] = "Produk Ponsel";
        // menampung semua $data
        $this -> view('templates/header', $data);
        // Ini konten kita
        $data['dataProduk'] = $this -> model('ProdukModel') -> ambilSemuaDataProduk();
        $this -> view('produk/dashProduk', $data);
        $this -> view('templates/footer');
    }

    public function tambah() {
        $data['title'] = "Form Tambah Produk Ponsel";
        $this -> view('templates/header', $data);
        //Menambahkan field
        $this -> formProduk -> addField('Id', 'id_ponsel', 'text'); 
        $this -> formProduk -> addField('Nama', 'nama', 'text'); 
        $this -> formProduk -> addField('Merk', 'id_merk', 'select', ['APPL05','OPPO02','REDM04','SAM01','VIVO03'], ['Apple 7 Plus','Oppo Reno 3','Redmi Note 8','Samsung Gx A71','Vivo Y30'] ); 
        $this -> formProduk -> addField('Harga', 'harga', 'number'); 
        $this -> formProduk -> addField('Berat', 'berat', 'number'); 
        $this -> formProduk -> addField('Spesifikasi', 'spesifikasi', 'textarea'); 
        $this -> formProduk -> addField('Gambar', 'gambar', 'text'); 
        $this -> formProduk -> addField('Stok', 'stok', 'number'); 
        //Menyimpan form ke dalam $data['form]
        $data['form'] = $this -> formProduk;
        $this -> view('produk/tambah', $data);
        $this -> view('templates/footer');
    }

    public function insertData() {
        if ($this -> model('ProdukModel') -> tambahData($_POST) > 0) {
            Flasher::setFlash('berhasil', 'ditambahkan', 'success');
        } else {
            Flasher::setFlash('gagal', 'ditambahkan', 'danger');
        }
        header('Location:'.BASEURL.'/produk');
        exit;
    }
}

?>