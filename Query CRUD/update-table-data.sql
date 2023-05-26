-- Update field table pembeli
mysql> DESC pembeli;
+---------------+--------------+------+-----+---------+----------------+
| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| id            | int(11)      | NO   | PRI | NULL    | auto_increment |
| nama          | varchar(50)  | NO   |     |         |                |
| jenis_kelamin | varchar(20)  | NO   |     |         |                |
| no_telp       | int(11)      | NO   |     | NULL    |                |
| alamat        | varchar(100) | NO   |     |         |                |
+---------------+--------------+------+-----+---------+----------------+
5 rows in set (0.01 sec)

mysql> ALTER TABLE pembeli MODIFY jenis_kelamin enum('L','P') NOT NULL;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC pembeli;
+---------------+---------------+------+-----+---------+----------------+
| Field         | Type          | Null | Key | Default | Extra          |
+---------------+---------------+------+-----+---------+----------------+
| id            | int(11)       | NO   | PRI | NULL    | auto_increment |
| nama          | varchar(50)   | NO   |     |         |                |
| jenis_kelamin | enum('L','P') | NO   |     | NULL    |                |
| no_telp       | int(11)       | NO   |     | NULL    |                |
| alamat        | varchar(100)  | NO   |     |         |                |
+---------------+---------------+------+-----+---------+----------------+
5 rows in set (0.01 sec)

-- Add new field in table transaksi
mysql> DESC transaksi;
+-------------+---------+------+-----+---------+----------------+
| Field       | Type    | Null | Key | Default | Extra          |
+-------------+---------+------+-----+---------+----------------+
| id          | int(11) | NO   | PRI | NULL    | auto_increment |
| id_pembeli  | int(11) | NO   | MUL | NULL    |                |
| id_barang   | int(11) | NO   | MUL | NULL    |                |
| jumlah      | int(11) | NO   |     | NULL    |                |
| total_harga | float   | NO   |     | NULL    |                |
| tanggal     | date    | NO   |     | NULL    |                |
+-------------+---------+------+-----+---------+----------------+
6 rows in set (0.01 sec)

mysql> ALTER TABLE transaksi ADD keterangan VARCHAR(50) NOT NULL;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC transaksi;
+-------------+-------------+------+-----+---------+----------------+
| Field       | Type        | Null | Key | Default | Extra          |
+-------------+-------------+------+-----+---------+----------------+
| id          | int(11)     | NO   | PRI | NULL    | auto_increment |
| id_pembeli  | int(11)     | NO   | MUL | NULL    |                |
| id_barang   | int(11)     | NO   | MUL | NULL    |                |
| jumlah      | int(11)     | NO   |     | NULL    |                |
| total_harga | float       | NO   |     | NULL    |                |
| tanggal     | date        | NO   |     | NULL    |                |
| keterangan  | varchar(50) | NO   |     | NULL    |                |
+-------------+-------------+------+-----+---------+----------------+
7 rows in set (0.01 sec)

-- Update stok dan harga barang
mysql> UPDATE barang SET stok='5',harga='180000' WHERE nama='Helm Bogo';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM barang WHERE nama='Helm Bogo';
+----+---------+-----------+------+--------+
| id | id_toko | nama      | stok | harga  |
+----+---------+-----------+------+--------+
|  8 |       8 | Helm Bogo |    5 | 180000 |
+----+---------+-----------+------+--------+
1 row in set (0.00 sec)

-- Update keterangan berdasarkan urutan ID Barang terbawah
mysql> UPDATE transaksi SET keterangan='Gagal' ORDER BY id_barang DESC LIMIT 3;
Query OK, 2 rows affected (0.01 sec)
Rows matched: 3  Changed: 2  Warnings: 0

mysql> SELECT * FROM transaksi ORDER BY id_barang DESC;
+----+------------+-----------+--------+-------------+------------+------------+
| id | id_pembeli | id_barang | jumlah | total_harga | tanggal    | keterangan |
+----+------------+-----------+--------+-------------+------------+------------+
|  8 |          8 |        10 |      1 |    15000000 | 2023-03-25 | Gagal      |
|  3 |          1 |         9 |      1 |      200000 | 2023-02-14 | Gagal      |
|  7 |          3 |         8 |      2 |      420000 | 2023-03-05 | Gagal      |
|  9 |          7 |         7 |      3 |      180000 | 2023-03-28 | Berhasil   |
|  5 |          5 |         5 |      1 |      200000 | 2023-02-21 | Berhasil   |
|  2 |          1 |         4 |      2 |      280000 | 2023-02-09 | Berhasil   |
| 10 |          5 |         3 |      1 |       50000 | 2023-03-30 | Berhasil   |
|  1 |          1 |         2 |      1 |       90000 | 2023-02-09 | Berhasil   |
|  6 |          2 |         1 |      1 |       50000 | 2023-02-21 | Berhasil   |
+----+------------+-----------+--------+-------------+------------+------------+
9 rows in set (0.00 sec)