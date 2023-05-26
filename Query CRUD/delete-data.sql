-- Delete data di tabel transaksi dengan kondisi
mysql> DELETE FROM transaksi WHERE keterangan='Gagal' AND id_barang='1';
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM transaksi WHERE keterangan='Gagal' AND id_barang='1';
Empty set (0.00 sec)

mysql> SELECT * FROM transaksi;
+----+------------+-----------+--------+-------------+------------+------------+
| id | id_pembeli | id_barang | jumlah | total_harga | tanggal    | keterangan |
+----+------------+-----------+--------+-------------+------------+------------+
|  1 |          1 |         2 |      1 |       90000 | 2023-02-09 | Berhasil   |
|  2 |          1 |         4 |      2 |      280000 | 2023-02-09 | Berhasil   |
|  3 |          1 |         9 |      1 |      200000 | 2023-02-14 | Berhasil   |
|  5 |          5 |         5 |      1 |      200000 | 2023-02-21 | Berhasil   |
|  6 |          2 |         1 |      1 |       50000 | 2023-02-21 | Berhasil   |
|  7 |          3 |         8 |      2 |      420000 | 2023-03-05 | Berhasil   |
|  8 |          8 |        10 |      1 |    15000000 | 2023-03-25 | Gagal      |
|  9 |          7 |         7 |      3 |      180000 | 2023-03-28 | Berhasil   |
| 10 |          5 |         3 |      1 |       50000 | 2023-03-30 | Berhasil   |
+----+------------+-----------+--------+-------------+------------+------------+
9 rows in set (0.00 sec)

-- Delete data dari tabel pembeli dengan fungsi ORDER BY LIMIT 2
mysql> SELECT * FROM pembeli ORDER BY nama DESC;
+----+----------------+---------------+-------------+--------------------------------+
| id | nama           | jenis_kelamin | no_telp     | alamat                         |
+----+----------------+---------------+-------------+--------------------------------+
|  9 | Zulfan Putra   | L             | 83213670001 | Jl Putri No 99 Banten          |
|  4 | Wahyu Widya    | P             | 81198299922 | Jl Batu angus No 289 Jakarta   |
|  8 | Vinka Mambo    | P             | 81145600154 | Jl Dewantara No 22 Lumajang    |
|  6 | Setyo Damar    | L             | 87827288733 | Jl Merdeka No 09 Jakarta       |
|  1 | Setiawan       | P             | 82938393844 | Jl Luri No 23 Bandung          |
|  2 | Selviana       | L             | 82399838332 | Jl Karang taruna No 10 Bandung |
|  7 | Putri Indah    | P             | 87721113998 | Jl Cokro No 11 Malang          |
|  3 | Erik Wasis     | P             | 81299283332 | Jl Gejayan No 76 Semarang      |
|  5 | Bagus Prasetyo | L             | 82223867511 | Jl Pegangsaan No 21 Tangerang  |
| 10 | Agung Kumbara  | L             | 82331450111 | Jl Semanggi No 45 Suarabaya    |
+----+----------------+---------------+-------------+--------------------------------+
10 rows in set (0.00 sec)

mysql> DELETE FROM pembeli ORDER BY nama DESC LIMIT 2;
Query OK, 2 rows affected (0.01 sec)

mysql> SELECT * FROM pembeli ORDER BY nama ASC;
+----+----------------+---------------+-------------+--------------------------------+
| id | nama           | jenis_kelamin | no_telp     | alamat                         |
+----+----------------+---------------+-------------+--------------------------------+
| 10 | Agung Kumbara  | L             | 82331450111 | Jl Semanggi No 45 Suarabaya    |
|  5 | Bagus Prasetyo | L             | 82223867511 | Jl Pegangsaan No 21 Tangerang  |
|  3 | Erik Wasis     | P             | 81299283332 | Jl Gejayan No 76 Semarang      |
|  7 | Putri Indah    | P             | 87721113998 | Jl Cokro No 11 Malang          |
|  2 | Selviana       | L             | 82399838332 | Jl Karang taruna No 10 Bandung |
|  1 | Setiawan       | P             | 82938393844 | Jl Luri No 23 Bandung          |
|  6 | Setyo Damar    | L             | 87827288733 | Jl Merdeka No 09 Jakarta       |
|  8 | Vinka Mambo    | P             | 81145600154 | Jl Dewantara No 22 Lumajang    |
+----+----------------+---------------+-------------+--------------------------------+
8 rows in set (0.00 sec)