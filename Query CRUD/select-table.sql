-- Menambilkan daftar barang dengan harga kurang dari sama dengan 150000
mysql> SELECT tk.nama AS nama_toko,
    ->     br.nama AS nama_barang,
    ->     br.stok AS stok_barang,
    ->     br.harga AS harga_barang
    -> FROM barang AS br
    -> INNER JOIN toko AS tk ON br.id_toko = tk.id
    -> WHERE harga <= 150000
    -> ORDER BY harga_barang DESC;
+-----------------+-----------------+-------------+--------------+
| nama_toko       | nama_barang     | stok_barang | harga_barang |
+-----------------+-----------------+-------------+--------------+
| Kiki Collection | Kaos Polo Short |          12 |       140000 |
| Indah Cake      | Kue Tart        |           5 |       100000 |
| Sport Nation    | Pull Up Bar     |          20 |        90000 |
| Kiki Collection | Rok Span        |          15 |        60000 |
| Sport Nation    | Resisten bench  |          50 |        50000 |
+-----------------+-----------------+-------------+--------------+
5 rows in set (0.00 sec)

-- Menampilkan data barang dari semua toko
mysql> SELECT tk.nama AS nama_toko,
    ->     br.nama AS nama_barang,
    ->     br.stok AS stok_barang,
    ->     br.harga AS harga_barang
    -> FROM barang AS br
    -> RIGHT JOIN toko AS tk ON br.id_toko = tk.id
    -> ORDER BY nama_toko ASC;
+-----------------+----------------------+-------------+--------------+
| nama_toko       | nama_barang          | stok_barang | harga_barang |
+-----------------+----------------------+-------------+--------------+
| Carkit          | NULL                 |        NULL |         NULL |
| electroxx       | Mouse Gaming         |          10 |       200000 |
| electroxx       | Laptop Pavilion 14   |           3 |     15000000 |
| Fishswim        | NULL                 |        NULL |         NULL |
| Gang Motor      | NULL                 |        NULL |         NULL |
| Greeny          | NULL                 |        NULL |         NULL |
| Helmetku        | Helm Bogo            |           5 |       180000 |
| Indah Cake      | Kue Tart             |           5 |       100000 |
| Kiki Collection | Kaos Polo Short      |          12 |       140000 |
| Kiki Collection | Celana Panjang Cargo |           6 |       200000 |
| Kiki Collection | Jubah Plisket        |           8 |       250000 |
| Kiki Collection | Rok Span             |          15 |        60000 |
| Pretty          | NULL                 |        NULL |         NULL |
| Sport Nation    | Pull Up Bar          |          20 |        90000 |
| Sport Nation    | Resisten bench       |          50 |        50000 |
+-----------------+----------------------+-------------+--------------+
15 rows in set (0.00 sec)

-- Menampilkan data dari koneksi 4 tabel
mysql> SELECT pb.nama AS nama_pembeli,
    ->     br.nama AS nama_barang,
    ->     tk.nama AS nama_toko,
    ->     br.harga AS harga_barang,
    ->     tr.jumlah AS jumlah_barang,
    ->     tr.total_harga AS total_transaksi,
    ->     tr.keterangan
    -> FROM transaksi AS tr
    -> INNER JOIN pembeli AS pb ON tr.id_pembeli = pb.id
    -> INNER JOIN barang AS br ON tr.id_barang = br.id
    -> INNER JOIN toko AS tk ON br.id_toko = tk.id
    -> WHERE tr.total_harga BETWEEN 80000 AND 300000 AND
    ->     tr.keterangan = 'Berhasil' AND
    ->     pb.nama LIKE '%u%'
    -> ORDER BY tr.jumlah DESC;
+----------------+----------------------+-----------------+--------------+---------------+-----------------+------------+
| nama_pembeli   | nama_barang          | nama_toko       | harga_barang | jumlah_barang | total_transaksi | keterangan |
+----------------+----------------------+-----------------+--------------+---------------+-----------------+------------+
| Putri Indah    | Rok Span             | Kiki Collection |        60000 |             3 |          180000 | Berhasil   |
| Bagus Prasetyo | Celana Panjang Cargo | Kiki Collection |       200000 |             1 |          200000 | Berhasil   |
+----------------+----------------------+-----------------+--------------+---------------+-----------------+------------+
2 rows in set (0.00 sec)
