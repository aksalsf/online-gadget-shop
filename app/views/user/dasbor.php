<div class="container-fluid d-flex">
    <div class="col-md-6 card p-5 mx-auto mt-3">
        <!-- 
            merah => danger
            biru => primary, info
            kuning => warning
            hijau => success
            hitam => dark
         -->
        <h1 class="text-center fw-bold">
            <?= $data['title']; ?>
        </h1>
        <hr>
        <!-- 
            Ini untuk perulangan data dari database
         -->
        <?php foreach($data['dataUser'] as $key => $user): ?>
        <div class="alert alert-primary d-flex justify-content-between">
            <h6 class="mb-0">
                <?= $user['nama']; ?>
            </h6>
            <div class="d-flex">
                <a href="#" class="badge bg-primary rounded-pill text-decoration-none text-white">Detail</a>

                <a href="#" class="badge bg-warning rounded-pill text-decoration-none text-white ms-1">Ubah</a>

                <a href="#" class="badge bg-danger rounded-pill text-decoration-none text-white ms-1">Hapus</a>
            </div>
        </div>
        <?php endforeach; ?>
        <a href="<?= BASEURL; ?>/user/tambah" class="btn btn-primary">[+] Tambah Data</a>
    </div>
</div>