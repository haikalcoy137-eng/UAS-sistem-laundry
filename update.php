<?php
include 'koneksi.php';

$id=$_POST['id'];
$nama=trim($_POST['nama']);
$alamat=trim($_POST['alamat']);
$hp=trim($_POST['hp']);

if($nama=="" || $alamat=="" || $hp==""){
    echo "<script>
    alert('Data tidak boleh kosong');
    history.back();
    </script>";
    exit;
}

mysqli_query($conn,"UPDATE pelanggan SET

nama_pelanggan='$nama',
alamat='$alamat',
no_hp='$hp'

WHERE id_pelanggan='$id'");

echo "<script>
alert('Data berhasil diupdate');
window.location='index.php';
</script>";
?>