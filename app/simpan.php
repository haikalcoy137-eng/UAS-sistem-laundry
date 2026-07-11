<?php
include 'koneksi.php';

$nama = trim($_POST['nama']);
$alamat = trim($_POST['alamat']);
$hp = trim($_POST['hp']);

if($nama=="" || $alamat=="" || $hp==""){
    echo "<script>
    alert('Semua data wajib diisi!');
    window.location='tambah.php';
    </script>";
    exit;
}

mysqli_query($conn,"INSERT INTO pelanggan
(nama_pelanggan,alamat,no_hp)
VALUES
('$nama','$alamat','$hp')");

echo "<script>
alert('Data berhasil ditambahkan');
window.location='index.php';
</script>";
?>