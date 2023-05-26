------------------------------------------------
-- 1 pelanggan membeli 3 barang yang berbeda.
------------------------------------------------

mysql> SELECT pb.nama AS nama_pembeli,
    ->     br.nama AS nama_barang,
    ->     br.harga AS harga_satuan,
    ->     tr.jumlah,
    ->     tr.total_harga,
    ->     tr.tanggal
    -> FROM transaksi AS tr
    -> INNER JOIN pembeli AS pb ON tr.id_pembeli = pb.id
    -> INNER JOIN barang AS br ON tr.id_barang = br.id
    -> WHERE keterangan='Berhasil';
+----------------+----------------------+--------------+--------+-------------+------------+
| nama_pembeli   | nama_barang          | harga_satuan | jumlah | total_harga | tanggal    |
+----------------+----------------------+--------------+--------+-------------+------------+
| Setiawan       | Pull Up Bar          |        90000 |      1 |       90000 | 2023-02-09 |
| Setiawan       | Kaos Polo Short      |       140000 |      2 |      280000 | 2023-02-09 |
| Setiawan       | Mouse Gaming         |       200000 |      1 |      200000 | 2023-02-14 |
| Bagus Prasetyo | Celana Panjang Cargo |       200000 |      1 |      200000 | 2023-02-21 |
| Selviana       | Kue Tart             |       100000 |      1 |       50000 | 2023-02-21 |
| Erik Wasis     | Helm Bogo            |       180000 |      2 |      420000 | 2023-03-05 |
| Putri Indah    | Rok Span             |        60000 |      3 |      180000 | 2023-03-28 |
| Bagus Prasetyo | Resisten bench       |        50000 |      1 |       50000 | 2023-03-30 |
+----------------+----------------------+--------------+--------+-------------+------------+
8 rows in set (0.00 sec)
