-- menggunakan database
  USE pti_mart;

-- soal 1
/*Munculkan kode pelanggan, nama produk, jumlah, harga, dan total 
dari semua produk yang pernah ditransaksikan, namun output yang 
diminta adalah total harga minimal 200.000 dan diurutkan berdasarkan total harga terkecil*/   

SELECT kode_pelanggan, nama_produk, jumlah, harga, (jumlah * harga) AS total
FROM transaksi_final
WHERE (jumlah * harga) >= 200000
ORDER BY total ASC;

-- soal 2
/* tampilkan nama pelanggan dan nilai transaksinya dengan nilai transalsi terbesar*/

SELECT p.nama_pelanggan,(dt.jumlah * pr.harga) AS nilai_transaksi
FROM pelanggan p
JOIN transaksi t ON p.kode_pelanggan = t.kode_pelanggan
JOIN produk_transaksi dt ON t.no_transaksi = dt.no_transaksi
JOIN produk pr ON dt.kode_produk = pr.kode_produk
ORDER BY nilai_transaksi DESC
LIMIT 1;

