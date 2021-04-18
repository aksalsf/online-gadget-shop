<?php
    class ProdukModel {
        private $table = 'tb_ponsel'; //untuk menyimpan nama tabe;
        private $db; 
   
        public function __construct()
        {
            $this -> db = new Database;
        }

        public function ambilSemuaDataProduk()
        {
            $this -> db -> query('SELECT * FROM ' . $this -> table);
            return  $this -> db -> resultAllSet(); //sumber -> app/core/database.php
        }

        public function ambilDataMerk($kolom)
        {
            $this -> db -> query('SELECT '.$kolom.' FROM tb_merk' );
            return  $this -> db -> resultAllSet(); //sumber -> app/core/database.php
        }

        public function tambahData($data){
            // Bisa mengurangi di hack
            $query = "INSERT INTO " . $this -> table . " VALUES(:id_ponsel, :nama, :id_merk, :harga, :berat, :spesifikasi, :gambar, :stok)";

            $this -> db -> query($query);
            $this -> db -> bind('id_ponsel', $data['id_ponsel']);
            $this -> db -> bind('nama', $data['nama']);
            $this -> db -> bind('id_merk', $data['id_merk']);
            $this -> db -> bind('harga', $data['harga']);
            $this -> db -> bind('berat', $data['berat']);
            $this -> db -> bind('spesifikasi', $data['spesifikasi']);
            $this -> db -> bind('gambar', $data['gambar']);
            $this -> db -> bind('stok', $data['stok']);

            $this -> db -> execute();
            return $this -> db -> rowCount();
        }
    }
?>