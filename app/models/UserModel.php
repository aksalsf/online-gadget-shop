<?php 

    class UserModel {
        private $table = 'tb_user'; // untuk menyimpan nama tabel
        private $db;

        public function __construct()
        {
            $this -> db = new Database;
        }

        public function ambilSemuaDataUser()
        {
            $this -> db -> query('SELECT * FROM ' . $this -> table);
            return $this -> db -> resultAllSet(); // app/core/database.php
        }

        public function tambahData($data) {
            $query = "INSERT INTO " . $this -> table . " VALUES(:nama, :password, :email)";
            $this -> db -> query($query);

            $this -> db -> bind('nama', $data['jeneng']);

            $this -> db -> bind('email', $data['email']);

            $this -> db -> bind('password', $data['password']);

            $this -> db -> execute();
            return $this -> db -> rowCount();
        }
    }

?>