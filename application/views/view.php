<!DOCTYPE html>
<html>
<head>
  <title></title>
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('/css/bootstrap.css'); ?>">
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body><center>
  <br>
  <h2>CRUD UTS</h2>
  <br>
  
  <h6> NAMA : Nur Syahlan A. </h6>
  <h6>NIM : 161240000510</h6>
  <br>
  </center>
  <div class="table-responsive">
    <table class="table table-bordered table-striped table-hover">
      <thead class="card-header bg-primary text-white">
        <tr>
          <th>No</th>
          <th>NIM</th>
          <th>Nama</th>
          <th>Jenis Kelamin</th>
          <th>Alamat</th>
          <th>Nomor Hp</th>
          <th>Aksi</th>    
        </tr>
      </thead>
      <?php
      $no=1;
      foreach($data as $r) {
        ?>
      <tbody>
        <tr>
         <td align="center"><?php echo $no ?></td>
          <td align="center"><?php echo $r['nim'] ?></td>
          <td align="center"><?php echo $r['nama_mhs'] ?></td>
          <td align="center"><?php echo $r['gender'] ?></td>
          <td align="center"><?php echo $r['alamat'] ?></td>
          <td align="center"><?php echo $r['no_hp'] ?></td>
          <td align="center"><a href="<?=base_url().'index.php/C_controler/update/'.$r['nim']?>">Ubah</a> || <a href="<?=base_url().'index.php_controler/delete/'.$r['nim']?>">Hapus</a></td>
        </tr>
        <?php
        $no++; 
      }
      ?>
      </tbody>
    </table>
    <br>
    <CENTER>
      <tr align="center">
        <td width="50%"><a href="<?=base_url().'index.php/C_controler/insert'?>" class="btn btn-primary btn-md">Tambah Data</a></td>
        <td width="50%"><a href="<?=base_url().'index.php/C_controler/log'?>" class="btn btn-primary btn-md">Log</a></td>
      </tr>
      </CENTER>
    <br>
    <br>
  </div>
</body>
</html> 