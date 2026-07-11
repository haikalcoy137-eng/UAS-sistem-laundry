-- Query JOIN 1
SELECT
    t.id_transaksi,
    p.nama_pelanggan,
    pg.nama_pegawai,
    t.status
FROM transaksi t
JOIN pelanggan p
ON t.id_pelanggan = p.id_pelanggan
JOIN pegawai pg
ON t.id_pegawai = pg.id_pegawai;

-- Query JOIN 2
SELECT
    p.nama_pelanggan,
    pk.nama_paket,
    d.berat,
    d.subtotal
FROM detail_transaksi d
JOIN transaksi t
ON d.id_transaksi = t.id_transaksi
JOIN pelanggan p
ON t.id_pelanggan = p.id_pelanggan
JOIN paket_laundry pk
ON d.id_paket = pk.id_paket;
