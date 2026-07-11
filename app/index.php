<?php
include 'koneksi.php';
?>

<!DOCTYPE html>
<html>
<head>
<title>Sistem Informasi Laundry</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

<div class="container">

<a class="navbar-brand" href="index.php">

Laundry App

</a>

<div>

</div>

</nav>
    <div class="container mt-5">

<h2 class="text-center">
SISTEM INFORMASI LAUNDRY
</h2>

<hr>

<a href="tambah.php" class="btn btn-primary">
Tambah Pelanggan
</a>

<a href="laporan.php" class="btn btn-success">
Laporan
</a>

<br><br>
<?php

$jumlah=mysqli_fetch_assoc(mysqli_query($conn,

"SELECT COUNT(*) AS total FROM pelanggan"));

?>

<div class="row mb-4">

<div class="col-md-4">

<div class="card text-bg-primary">

<div class="card-body">

<h5>Total Pelanggan</h5>

<h2><?= $jumlah['total']; ?></h2>

</div>

</div>

</div>

</div>

<table class="table table-bordered">

<tr>

<th>No</th>

<th>Nama</th>

<th>Alamat</th>

<th>No HP</th>

<th>Aksi</th>

</tr>

<?php

$no=1;

$data=mysqli_query($conn,"SELECT * FROM pelanggan");

while($d=mysqli_fetch_array($data)){

?>

<tr>

<td><?= $no++; ?></td>

<td><?= $d['nama_pelanggan']; ?></td>

<td><?= $d['alamat']; ?></td>

<td><?= $d['no_hp']; ?></td>

<td>

<a href="edit.php?id=<?= $d['id_pelanggan']; ?>" class="btn btn-warning btn-sm">

Edit

</a>

<a href="hapus.php?id=<?= $d['id_pelanggan']; ?>"

onclick="return confirm('Yakin ingin menghapus data?')"

class="btn btn-danger btn-sm">

Hapus

</a>

</td>

</tr>

<?php } ?>

</table>

</div>
<hr>

<center>

<p style="margin-top:100px;">
Copyright © 2026 Sistem Informasi Laundry
</p>

</center>
</body>

</html>