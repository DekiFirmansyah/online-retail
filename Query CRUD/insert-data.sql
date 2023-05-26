
-- Insert data to table pembeli
mysql> INSERT INTO pembeli (nama,jenis_kelamin,no_telp,alamat)
    -> VALUES ('Setiawan','P','082938393844','Jl Luri No 23 Bandung'),
    ->        ('Selviana','L','082399838332','Jl Karang taruna No 10 Bandung'),
    ->        ('Erik Wasis','P','081299283332','Jl Gejayan No 76 Semarang'),
    ->        ('Wahyu Widya','P','081198299922','Jl Batu angus No 289 Jakarta'),
    ->        ('Bagus Prasetyo','L','082223867511','Jl Pegangsaan No 21 Tangerang'),
    ->        ('Setyo Damar','L','087827288733','Jl Merdeka No 09 Jakarta'),
    ->        ('Putri Indah','P','087721113998','Jl Cokro No 11 Malang'),
    ->        ('Vinka Mambo','P','081145600154','Jl Dewantara No 22 Lumajang'),
    ->        ('Zulfan Putra','L','083213670001','Jl Putri No 99 Banten'),
    ->        ('Agung Kumbara','L','082331450111','Jl Semanggi No 45 Suarabaya')
    -> ;
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM pembeli;
+----+----------------+---------------+-------------+--------------------------------+
| id | nama           | jenis_kelamin | no_telp     | alamat                         |
+----+----------------+---------------+-------------+--------------------------------+
|  1 | Setiawan       | P             | 82938393844 | Jl Luri No 23 Bandung          |
|  2 | Selviana       | L             | 82399838332 | Jl Karang taruna No 10 Bandung |
|  3 | Erik Wasis     | P             | 81299283332 | Jl Gejayan No 76 Semarang      |
|  4 | Wahyu Widya    | P             | 81198299922 | Jl Batu angus No 289 Jakarta   |
|  5 | Bagus Prasetyo | L             | 82223867511 | Jl Pegangsaan No 21 Tangerang  |
|  6 | Setyo Damar    | L             | 87827288733 | Jl Merdeka No 09 Jakarta       |
|  7 | Putri Indah    | P             | 87721113998 | Jl Cokro No 11 Malang          |
|  8 | Vinka Mambo    | P             | 81145600154 | Jl Dewantara No 22 Lumajang    |
|  9 | Zulfan Putra   | L             | 83213670001 | Jl Putri No 99 Banten          |
| 10 | Agung Kumbara  | L             | 82331450111 | Jl Semanggi No 45 Suarabaya    |
+----+----------------+---------------+-------------+--------------------------------+
10 rows in set (0.00 sec)

-- Insert data to table toko
mysql> INSERT INTO toko (nama,kategori,alamat)
    -> VALUES ('Indah Cake','Toko Kue','Jl Luri No 23 Bandung'),
    ->        ('Sport Nation','Toko Olahraga','Jl Karang taruna No 10 Bandung'),
    ->        ('Kiki Collection','Toko Baju','Jl Gejayan No 76 Semarang'),
    ->        ('Pretty','Toko Aksesoris','Jl Batu angus No 289 Jakarta'),
    ->        ('Gang Motor','Toko Onderdil Motor','Jl Pegangsaan No 21 Tangerang'),
    ->        ('Carkit','Toko Onderdil Mobil','Jl Merdeka No 09 Jakarta'),
    ->        ('Fishswim','Toko Ikan','Jl Cokro No 11 Malang'),
    ->        ('Helmetku','Toko Helm','Jl Dewantara No 22 Lumajang'),
    ->        ('Greeny','Toko Tumbuhan','Jl Putri No 99 Banten'),
    ->        ('electroxx','Toko Elektronik','Jl Semanggi No 45 Suarabaya')
    -> ;
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM toko;
+----+-----------------+---------------------+--------------------------------+
| id | nama            | kategori            | alamat                         |
+----+-----------------+---------------------+--------------------------------+
|  1 | Indah Cake      | Toko Kue            | Jl Luri No 23 Bandung          |
|  2 | Sport Nation    | Toko Olahraga       | Jl Karang taruna No 10 Bandung |
|  3 | Kiki Collection | Toko Baju           | Jl Gejayan No 76 Semarang      |
|  4 | Pretty          | Toko Aksesoris      | Jl Batu angus No 289 Jakarta   |
|  5 | Gang Motor      | Toko Onderdil Motor | Jl Pegangsaan No 21 Tangerang  |
|  6 | Carkit          | Toko Onderdil Mobil | Jl Merdeka No 09 Jakarta       |
|  7 | Fishswim        | Toko Ikan           | Jl Cokro No 11 Malang          |
|  8 | Helmetku        | Toko Helm           | Jl Dewantara No 22 Lumajang    |
|  9 | Greeny          | Toko Tumbuhan       | Jl Putri No 99 Banten          |
| 10 | electroxx       | Toko Elektronik     | Jl Semanggi No 45 Suarabaya    |
+----+-----------------+---------------------+--------------------------------+
10 rows in set (0.00 sec)

-- Insert data to table barang
mysql> INSERT INTO barang (id_toko,nama,stok,harga)
    -> VALUES (1,'Kue Tart',5,100000),
    ->        (2,'Pull Up Bar',20,90000),
    ->        (2,'Resisten bench',50,50000),
    ->        (3,'Kaos Polo Short',12,140000),
    ->        (3,'Celana Panjang Cargo',6,200000),
    ->        (3,'Jubah Plisket',8,250000),
    ->        (3,'Rok Span',15,60000),
    ->        (8,'Helm Bogo',7,210000),
    ->        (10,'Mouse Gaming',10,200000),
    ->        (10,'Laptop Pavilion 14',3,15000000)
    -> ;
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM barang;
+----+---------+----------------------+------+----------+
| id | id_toko | nama                 | stok | harga    |
+----+---------+----------------------+------+----------+
|  1 |       1 | Kue Tart             |    5 |   100000 |
|  2 |       2 | Pull Up Bar          |   20 |    90000 |
|  3 |       2 | Resisten bench       |   50 |    50000 |
|  4 |       3 | Kaos Polo Short      |   12 |   140000 |
|  5 |       3 | Celana Panjang Cargo |    6 |   200000 |
|  6 |       3 | Jubah Plisket        |    8 |   250000 |
|  7 |       3 | Rok Span             |   15 |    60000 |
|  8 |       8 | Helm Bogo            |    7 |   210000 |
|  9 |      10 | Mouse Gaming         |   10 |   200000 |
| 10 |      10 | Laptop Pavilion 14   |    3 | 15000000 |
+----+---------+----------------------+------+----------+
10 rows in set (0.00 sec)

-- Insert data to table transaksi
mysql> INSERT INTO transaksi (id_pembeli,id_barang,jumlah,total_harga,tanggal,keterangan)
    -> VALUES (1,2,1,90000,'2023-02-09','Berhasil'),
    ->        (1,4,2,280000,'2023-02-09','Berhasil'),
    ->        (1,9,1,200000,'2023-02-14','Berhasil'),
    ->        (2,1,1,100000,'2023-02-20','Gagal'),
    ->        (5,5,1,200000,'2023-02-21','Berhasil'),
    ->        (2,1,1,50000,'2023-02-21','Berhasil'),
    ->        (3,8,2,420000,'2023-03-05','Berhasil'),
    ->        (8,10,1,15000000,'2023-03-25','Gagal'),
    ->        (7,7,3,180000,'2023-03-28','Berhasil'),
    ->        (5,3,1,50000,'2023-03-30','Berhasil')
    -> ;
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM transaksi;
+----+------------+-----------+--------+-------------+------------+------------+
| id | id_pembeli | id_barang | jumlah | total_harga | tanggal    | keterangan |
+----+------------+-----------+--------+-------------+------------+------------+
|  1 |          1 |         2 |      1 |       90000 | 2023-02-09 | Berhasil   |
|  2 |          1 |         4 |      2 |      280000 | 2023-02-09 | Berhasil   |
|  3 |          1 |         9 |      1 |      200000 | 2023-02-14 | Berhasil   |
|  4 |          2 |         1 |      1 |      100000 | 2023-02-20 | Gagal      |
|  5 |          5 |         5 |      1 |      200000 | 2023-02-21 | Berhasil   |
|  6 |          2 |         1 |      1 |       50000 | 2023-02-21 | Berhasil   |
|  7 |          3 |         8 |      2 |      420000 | 2023-03-05 | Berhasil   |
|  8 |          8 |        10 |      1 |    15000000 | 2023-03-25 | Gagal      |
|  9 |          7 |         7 |      3 |      180000 | 2023-03-28 | Berhasil   |
| 10 |          5 |         3 |      1 |       50000 | 2023-03-30 | Berhasil   |
+----+------------+-----------+--------+-------------+------------+------------+
10 rows in set (0.00 sec)