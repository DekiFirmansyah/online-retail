-- Create table pembeli
mysql> CREATE TABLE pembeli (
    ->     id INT NOT NULL AUTO_INCREMENT,
    ->     nama VARCHAR(50) NOT NULL DEFAULT '',
    ->     jenis_kelamin VARCHAR(20) NOT NULL DEFAULT '',
    ->     no_telp BIGINT NOT NULL,
    ->     alamat VARCHAR(100) NOT NULL DEFAULT '',
    ->     PRIMARY KEY(id)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> DESC pembeli;
+---------------+--------------+------+-----+---------+----------------+
| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| id            | int(11)      | NO   | PRI | NULL    | auto_increment |
| nama          | varchar(50)  | NO   |     |         |                |
| jenis_kelamin | varchar(20)  | NO   |     |         |                |
| no_telp       | bigint(20)   | NO   |     | NULL    |                |
| alamat        | varchar(100) | NO   |     |         |                |
+---------------+--------------+------+-----+---------+----------------+
5 rows in set (0.01 sec)

-- Create table toko
mysql> CREATE TABLE toko (
    ->     id INT NOT NULL AUTO_INCREMENT,
    ->     nama VARCHAR(50) NOT NULL DEFAULT '',
    ->     kategori VARCHAR(50) NOT NULL DEFAULT '',
    ->     alamat VARCHAR(100) NOT NULL DEFAULT '',
    ->     PRIMARY KEY(id)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> DESC toko;
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| id       | int(11)      | NO   | PRI | NULL    | auto_increment |
| nama     | varchar(50)  | NO   |     |         |                |
| kategori | varchar(50)  | NO   |     |         |                |
| alamat   | varchar(100) | NO   |     |         |                |
+----------+--------------+------+-----+---------+----------------+
4 rows in set (0.01 sec)

-- Create table barang
mysql> CREATE TABLE barang (
    ->     id INT NOT NULL AUTO_INCREMENT,
    ->     id_toko INT NOT NULL,
    ->     nama VARCHAR(50) NOT NULL DEFAULT '',
    ->     stok INT NOT NULL,
    ->     harga FLOAT NOT NULL,
    ->     PRIMARY KEY(id),
    ->     CONSTRAINT id_toko FOREIGN KEY (`id_toko`) REFERENCES `toko` (`id`)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> DESC barang;
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| id      | int(11)     | NO   | PRI | NULL    | auto_increment |
| id_toko | int(11)     | NO   | MUL | NULL    |                |
| nama    | varchar(50) | NO   |     |         |                |
| stok    | int(11)     | NO   |     | NULL    |                |
| harga   | float       | NO   |     | NULL    |                |
+---------+-------------+------+-----+---------+----------------+
5 rows in set (0.01 sec)

-- Create table transaksi
mysql> CREATE TABLE transaksi (
    ->     id INT NOT NULL AUTO_INCREMENT,
    ->     id_pembeli INT NOT NULL,
    ->     id_barang INT NOT NULL,
    ->     jumlah INT NOT NULL,
    ->     total_harga FLOAT NOT NULL,
    ->     tanggal DATE NOT NULL,
    ->     PRIMARY KEY(id),
    ->     CONSTRAINT id_pembeli FOREIGN KEY (`id_pembeli`) REFERENCES `pembeli` (`id`),
    ->     CONSTRAINT id_barang FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`)
    -> );
Query OK, 0 rows affected (0.01 sec)

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

-- List table in database online_retail
mysql> show tables;
+-------------------------+
| Tables_in_online_retail |
+-------------------------+
| barang                  |
| pembeli                 |
| toko                    |
| transaksi               |
+-------------------------+
4 rows in set (0.00 sec)

