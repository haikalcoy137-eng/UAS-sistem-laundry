-- =====================================
-- TRANSACTION
-- =====================================

START TRANSACTION;

UPDATE transaksi
SET status='Selesai'
WHERE id_transaksi=1;

COMMIT;

-- =====================================
-- CONTOH ROLLBACK
-- =====================================

START TRANSACTION;

UPDATE transaksi
SET status='Proses'
WHERE id_transaksi=1;

ROLLBACK;
