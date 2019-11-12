<!DOCTYPE html>
<html lang="en">
<head>
  <title>Full Width Form</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<?=base_url('/css/bootstrap.min.css');?>"
</head>
<body>
<div class="container">
  <div class="card">
    <div class="card-header bg-primary text-white"><b>Form Tambah Data</b></div>
    <div class="card-body">
      <form action="<?=base_url().'index.php/C_controler/insert'?>" method="POST">

        <div class="form-group">
          <label for="nama">NIM</label>
          <input type="text" class="form-control" name="nim">
        </div>
        <div class="form-group">
          <label for="nama">Nama</label>
          <input type="text" class="form-control" name="nama_mhs">
        </div>
     	<div class="form-group">
          <label for="nama">Jenis Kelamin</label>
          <input type="text" class="form-control" name="gender">
        </div>
        <div class="form-group">
          <label for="nama">Alamat</label>
          <input type="text" class="form-control" name="alamat">
        </div>
        <div class="form-group">
          <label for="nama">No HP</label>
          <input type="text" class="form-control" name="no_hp">
        </div>
        <button type="submit" name="submit" value="Tambah" class="btn btn-primary">Tambah</button>
        <a class="btn btn-primary" href="<?=base_url().'index.php/C_controler/index'?>">Batal</a>
      </form>
    </div>
  </div>
</div>
</body>
</html>