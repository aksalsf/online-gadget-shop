<?php 

class User extends Controller {

    private $formUser;

    public function __construct() {
        $this -> formUser = new Form(BASEURL.'/user/insertData', 'Tambah');
    }

    public function index() {
        $data['title'] = "Dasbor Data User";
        $this -> view('templates/header', $data);
        // Data dari Database
        $data['dataUser'] = $this -> model('UserModel') -> ambilSemuaDataUser();
        $this -> view('user/dasbor', $data);
        $this -> view('templates/footer');
    }

    public function tambah() {
        $data['title'] = "Form Tambah User";
        $this -> view('templates/header', $data);
        // Menambahkan field
        $this -> formUser -> addField('Nama', 
        'jeneng', 'text');
        $this -> formUser -> addField('Password', 
        'password', 'password');
        $this -> formUser -> addField('Email', 
        'email', 'email');
        $data['form'] = $this -> formUser;
        $this -> view('user/tambah', $data);
        $this -> view('templates/footer');
    }

    public function insertData() {
        if ($this -> model('UserModel') -> tambahData($_POST) > 0) {
            Flasher::setFlash('berhasil', 'ditambahkan', 'success');
        } else {
            Flasher::setFlash('gagal', 'ditambahkan', 'danger');
        }
        header('Location:'.BASEURL.'/user');
        exit;
    }

}

?>