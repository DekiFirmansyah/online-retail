--------------------------------------------------------------
-- Melihat 3 produk yang paling sering dibeli oleh pelanggan.
--------------------------------------------------------------

mysql> SELECT br.nama AS nama_barang,
    ->     SUM(tr.jumlah) AS jumlah_barang
    -> FROM transaksi AS tr
    -> INNER JOIN barang AS br ON tr.id_barang = br.id
    -> GROUP BY id_barang
    -> ORDER BY jumlah_barang DESC LIMIT 3;
+-----------------+---------------+
| nama_barang     | jumlah_barang |
+-----------------+---------------+
| Rok Span        |             3 |
| Helm Bogo       |             2 |
| Kaos Polo Short |             2 |
+-----------------+---------------+
3 rows in set (0.01 sec)