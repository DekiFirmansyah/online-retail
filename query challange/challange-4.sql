-------------------------------------------------------------------------------------
-- Nominal rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir.
-------------------------------------------------------------------------------------

mysql> SELECT * FROM transaksi WHERE month(tanggal)='02' ORDER BY total_harga ASC;
+----+------------+-----------+--------+-------------+------------+------------+
| id | id_pembeli | id_barang | jumlah | total_harga | tanggal    | keterangan |
+----+------------+-----------+--------+-------------+------------+------------+
|  6 |          2 |         1 |      1 |       50000 | 2023-02-21 | Berhasil   |
|  1 |          1 |         2 |      1 |       90000 | 2023-02-09 | Berhasil   |
|  3 |          1 |         9 |      1 |      200000 | 2023-02-14 | Berhasil   |
|  5 |          5 |         5 |      1 |      200000 | 2023-02-21 | Berhasil   |
|  2 |          1 |         4 |      2 |      280000 | 2023-02-09 | Berhasil   |
+----+------------+-----------+--------+-------------+------------+------------+
5 rows in set (0.00 sec)

mysql> SELECT AVG(total_harga) AS rata2_transaksi,
    -> month(tanggal) AS bulan
    -> FROM transaksi
    -> WHERE keterangan='Berhasil' AND month(tanggal)='02';
+-----------------+-------+
| rata2_transaksi | bulan |
+-----------------+-------+
|          164000 |     2 |
+-----------------+-------+
1 row in set (0.00 sec)
