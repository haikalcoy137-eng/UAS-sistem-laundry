<!DOCTYPE html>

<html>

<head>

<title>Tambah Pelanggan</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>

<div class="container mt-5">

<h3>Tambah Pelanggan</h3>

<form action="simpan.php" method="POST">

<label>Nama</label>

<input
type="text"
name="nama"
class="form-control"
required>

<br>

<label>Alamat</label>

<input
type="text"
name="alamat"
class="form-control"
required>

<br>

<label>No HP</label>

<input
type="text"
name="hp"
class="form-control"
required>

<br>

<button class="btn btn-primary">

Simpan

</button>

<a href="index.php" class="btn btn-secondary">

Kembali

</a>

</form>

</div>

</body>

</html>