<?php
include 'koneksi.php';
?>

<!DOCTYPE html>
<html>
<head>

<title>Laporan Data Pelanggan</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>

<div class="container mt-5">

<h2>Laporan Data Pelanggan Laundry</h2>

<table class="table table-bordered">

<tr>

<th>No</th>

<th>Nama</th>

<th>Alamat</th>

<th>No HP</th>

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

</tr>

<?php } ?>

</table>

<button onclick="window.print()" class="btn btn-success">

Cetak

</button>

<a href="index.php" class="btn btn-secondary">

Kembali

</a>

</div>

</body>

</html>