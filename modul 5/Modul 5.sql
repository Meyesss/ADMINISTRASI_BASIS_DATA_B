-- Nama : Ika damayanti
-- Kelas : B 
-- Modul : Modul 5 : JOIN, UNION, LIMIT

-- Menggunakan database
USE pti_mart;

-- JOIN 
-- menggabungkan dua buah tabel berdasarkan kolom yang sama

-- praktek 1
-- Ambil nama pelanggan yang pernah bertransaksi beserta qty nya
-- artinya ambil kolom kode_pelanggan, nama_pelanggan, dan qty dari 
-- penggabungan tabel penjualan dan tabel pelanggan 

SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
FROM tr_penjualan as tp
JOIN ms_pelanggan as mp
ON tp.kode_pelanggan = mp.kode_pelanggan;

-- praktek 2
-- Menggabungkan 2 tabel tanpa memperhatikan relational keys
-- Ambil nama pelanggan yang pernah beetransaksi beserta qty nya
-- menggabungkan tabel penjualan dan tabel pelanggan tanpa
-- memperhatikan kolom yang menjadi primary key

SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
FROM tr_penjualan as tp
JOIN ms_pelanggan as mp
ON TRUE; 

-- INNER JOIN
-- join yang megambil data dari dua sisi table yang berhubungan
-- praktek 3
-- ambil kode pelanggan, nama pelanggan, nama produk, qty
-- dari hasil join table penjualan dan table pelanggan 

SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.nama_produk, tp.qty
FROM tr_penjualan as tp
INNER JOIN ms_pelanggan as mp
ON tp.kode_pelanggan = mp.kode_pelanggan;

