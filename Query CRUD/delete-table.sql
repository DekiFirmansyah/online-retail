-- Delete table transaksi
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

mysql> DROP TABLE transaksi;
Query OK, 0 rows affected (0.01 sec)

mysql> show tables;
+-------------------------+
| Tables_in_online_retail |
+-------------------------+
| barang                  |
| pembeli                 |
| toko                    |
+-------------------------+
3 rows in set (0.00 sec)