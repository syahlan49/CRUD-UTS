<!DOCTYPE html>
<html>
<head>
  <title>LOG</title>
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('/css/bootstrap.css'); ?>">
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body><center>
  <br>
  <h2>CRUD UTS</h2>
  <br>
  
  <h2>TABLE LOG PEMBARUAN No.Hp</h2>
  <h6>NAMA : Nur Syahlan A. </h6>
  <H6>NIM : 161240000510</H6>
  
  <br>
  </center>
<body>
	<center>
		<div class="table-responsive">
   		<table class="table table-bordered table-striped table-hover">
			<tr class="card-header bg-primary text-white">
				<th>No</th>
				<th>NIM</th>
				<th>Nomor Hp Lama</th>
				<th>Nomor Hp Baru</th>
				<th>Tanggal Diubah</th>
			</tr>
			<?php
			$no=1;
			foreach($data as $r) {
				?>
				<tr>
					<td align="center"><?php echo $no ?></td>
					<td><?php echo $r['nim'] ?></td>
					<td><?php echo $r['no_hp_lama'] ?></td>
					<td><?php echo $r['no_hp_baru'] ?></td>
					<td><?php echo $r['tgl_diubah'] ?></td>
				</tr>
				<?php
				$no++;
			}
			?>
		</table>
		<br>
		<a href="<?=base_url().'index.php/C_controler/index'?>" class="btn btn-primary btn-md" >HOME</a>
	</center>
	</div>
</body>
</html>

