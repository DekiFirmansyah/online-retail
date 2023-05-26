---------------------------------------------------------
-- Melihat Kategori barang yang paling banyak barangnya.
---------------------------------------------------------

mysql> SELECT tk.kategori AS kategori_barang,
    ->     tk.nama AS nama_toko,
    ->     COUNT(br.id_toko) AS jumlah_barang
    -> FROM barang AS br
    -> INNER JOIN toko AS tk ON br.id_toko = tk.id
    -> GROUP BY id_toko
    -> ORDER BY jumlah_barang DESC;
+-----------------+-----------------+---------------+
| kategori_barang | nama_toko       | jumlah_barang |
+-----------------+-----------------+---------------+
| Toko Baju       | Kiki Collection |             4 |
| Toko Elektronik | electroxx       |             2 |
| Toko Olahraga   | Sport Nation    |             2 |
| Toko Helm       | Helmetku        |             1 |
| Toko Kue        | Indah Cake      |             1 |
+-----------------+-----------------+---------------+
5 rows in set (0.00 sec)

