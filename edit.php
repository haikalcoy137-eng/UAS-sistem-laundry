<?php
include 'koneksi.php';

$id = $_GET['id'];

$data = mysqli_query($conn,"SELECT * FROM pelanggan WHERE id_pelanggan='$id'");

$d = mysqli_fetch_array($data);
?>

<!DOCTYPE html>
<html>
<head>
<title>Edit Pelanggan</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>

<div class="container mt-5">

<h3>Edit Data Pelanggan</h3>

<form action="update.php" method="POST">

<input type="hidden" name="id" value="<?= $d['id_pelanggan']; ?>">

<label>Nama</label>

<input
type="text"
name="nama"
class="form-control"
value="<?= $d['nama_pelanggan']; ?>"
required>

<br>

<label>Alamat</label>

<input
type="text"
name="alamat"
class="form-control"
value="<?= $d['alamat']; ?>"
required>

<br>

<label>No HP</label>

<input
type="text"
name="hp"
class="form-control"
value="<?= $d['no_hp']; ?>"
required>

<br>

<button class="btn btn-success">

Update

</button>

<a href="index.php" class="btn btn-secondary">

Kembali

</a>

</form>

</div>

</body>

</html>