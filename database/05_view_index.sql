-- =====================================
-- VIEW
-- =====================================

CREATE VIEW v_laporan_laundry AS
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

-- =====================================
-- INDEX
-- =====================================

CREATE INDEX idx_nama_pelanggan
ON pelanggan(nama_pelanggan);

CREATE INDEX idx_status_transaksi
ON transaksi(status);
