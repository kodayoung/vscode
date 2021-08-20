1.
mysql> INSERT INTO sql_practice VALUES ('hong1234', '8o4bkg', '홍길동', 'male', '1990-01-31'),
('sexysung', '87awjkdf', '성춘향', 'female', '1992-03-31'),
('power70', 'qxur8sda', '변사또', 'male', '1970-05-02'),
('hanjo', 'jk48fn4', '한조', 'male', '1984-10-18'),
('widowmaker', '38ewifh3', '위도우', 'female', '1986-06-27'),
('dvadva', 'k3f3ah', '송하나', 'female', '1994-06-03'),
('jungkrat', '4ifha7f', '정크랫', 'male', '1975-11-11')

mysql> SELECT * FROM sql_practice;
+------------+----------+-----------+--------+------------+
| id         | pw       | name      | gender | birthday   |
+------------+----------+-----------+--------+------------+
| hong1234   | 8o4bkg   | 홍길동    | male   | 1990-01-31 |
| sexysung   | 87awjkdf | 성춘향    | female | 1992-03-31 |
| power70    | qxur8sda | 변사또    | male   | 1970-05-02 |
| hanjo      | jk48fn4  | 한조      | male   | 1984-10-18 |
| widowmaker | 38ewifh3 | 위도우    | female | 1986-06-27 |
| dvadva     | k3f3ah   | 송하나    | female | 1994-06-03 |
| jungkrat   | 4ifha7f  | 정크랫    | male   | 1975-11-11 |
+------------+----------+-----------+--------+------------+
7 rows in set (0.00 sec)

2.
mysql> SELECT * FROM sql_practice ORDER BY birthday ASC;
+------------+----------+-----------+--------+------------+
| id         | pw       | name      | gender | birthday   |
+------------+----------+-----------+--------+------------+
| power70    | qxur8sda | 변사또    | male   | 1970-05-02 |
| jungkrat   | 4ifha7f  | 정크랫    | male   | 1975-11-11 |
| hanjo      | jk48fn4  | 한조      | male   | 1984-10-18 |
| widowmaker | 38ewifh3 | 위도우    | female | 1986-06-27 |
| hong1234   | 8o4bkg   | 홍길동    | male   | 1990-01-31 |
| sexysung   | 87awjkdf | 성춘향    | female | 1992-03-31 |
| dvadva     | k3f3ah   | 송하나    | female | 1994-06-03 |
+------------+----------+-----------+--------+------------+
7 rows in set (0.00 sec)

3.
mysql> SELECT * FROM sql_practice WHERE gender='male' ORDER BY birthday ASC;
+----------+----------+-----------+--------+------------+
| id       | pw       | name      | gender | birthday   |
+----------+----------+-----------+--------+------------+
| power70  | qxur8sda | 변사또    | male   | 1970-05-02 |
| jungkrat | 4ifha7f  | 정크랫    | male   | 1975-11-11 |
| hanjo    | jk48fn4  | 한조      | male   | 1984-10-18 |
| hong1234 | 8o4bkg   | 홍길동    | male   | 1990-01-31 |
+----------+----------+-----------+--------+------------+
4 rows in set (0.00 sec)

4.
mysql> SELECT * FROM sql_practice WHERE birthday LIKE '199%';
+----------+----------+-----------+--------+------------+
| id       | pw       | name      | gender | birthday   |
+----------+----------+-----------+--------+------------+
| hong1234 | 8o4bkg   | 홍길동    | male   | 1990-01-31 |
| sexysung | 87awjkdf | 성춘향    | female | 1992-03-31 |
| dvadva   | k3f3ah   | 송하나    | female | 1994-06-03 |
+----------+----------+-----------+--------+------------+
3 rows in set, 1 warning (0.00 sec)

5.
mysql> SELECT * FROM sql_practice WHERE birthday LIKE '%-06-%' ORDER BY birthday ASC;
+------------+----------+-----------+--------+------------+
| id         | pw       | name      | gender | birthday   |
+------------+----------+-----------+--------+------------+
| widowmaker | 38ewifh3 | 위도우    | female | 1986-06-27 |
| dvadva     | k3f3ah   | 송하나    | female | 1994-06-03 |
+------------+----------+-----------+--------+------------+
2 rows in set, 1 warning (0.00 sec)

6.
mysql> SELECT * FROM sql_practice WHERE gender = 'male' AND birthday LIKE '199%';
+----------+--------+-----------+--------+------------+
| id       | pw     | name      | gender | birthday   |
+----------+--------+-----------+--------+------------+
| hong1234 | 8o4bkg | 홍길동    | male   | 1990-01-31 |
+----------+--------+-----------+--------+------------+
1 row in set, 1 warning (0.00 sec)

7.
mysql> SELECT * FROM sql_practice ORDER BY birthday ASC LIMIT 3;
+----------+----------+-----------+--------+------------+
| id       | pw       | name      | gender | birthday   |
+----------+----------+-----------+--------+------------+
| power70  | qxur8sda | 변사또    | male   | 1970-05-02 |
| jungkrat | 4ifha7f  | 정크랫    | male   | 1975-11-11 |
| hanjo    | jk48fn4  | 한조      | male   | 1984-10-18 |
+----------+----------+-----------+--------+------------+
3 rows in set (0.00 sec)

8.
mysql> SELECT * FROM sql_practice WHERE gender='female' OR birthday LIKE '199%';
+------------+----------+-----------+--------+------------+
| id         | pw       | name      | gender | birthday   |
+------------+----------+-----------+--------+------------+
| hong1234   | 8o4bkg   | 홍길동    | male   | 1990-01-31 |
| sexysung   | 87awjkdf | 성춘향    | female | 1992-03-31 |
| widowmaker | 38ewifh3 | 위도우    | female | 1986-06-27 |
| dvadva     | k3f3ah   | 송하나    | female | 1994-06-03 |
+------------+----------+-----------+--------+------------+
4 rows in set, 1 warning (0.00 sec)

9.
mysql> UPDATE sql_practice SET pw='12345678' WHERE id='hong1234';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM sql_practice;
+------------+----------+-----------+--------+------------+
| id         | pw       | name      | gender | birthday   |
+------------+----------+-----------+--------+------------+
| hong1234   | 12345678 | 홍길동    | male   | 1990-01-31 |
| sexysung   | 87awjkdf | 성춘향    | female | 1992-03-31 |
| power70    | qxur8sda | 변사또    | male   | 1970-05-02 |
| hanjo      | jk48fn4  | 한조      | male   | 1984-10-18 |
| widowmaker | 38ewifh3 | 위도우    | female | 1986-06-27 |
| dvadva     | k3f3ah   | 송하나    | female | 1994-06-03 |
| jungkrat   | 4ifha7f  | 정크랫    | male   | 1975-11-11 |
+------------+----------+-----------+--------+------------+
7 rows in set (0.00 sec)


10.
mysql> DELETE FROM sql_practice WHERE id='jungkrat';
Query OK, 1 row affected (0.00 sec)

mysql> SELECT * FROM sql_practice;
+------------+----------+-----------+--------+------------+
| id         | pw       | name      | gender | birthday   |
+------------+----------+-----------+--------+------------+
| hong1234   | 12345678 | 홍길동    | male   | 1990-01-31 |
| sexysung   | 87awjkdf | 성춘향    | female | 1992-03-31 |
| power70    | qxur8sda | 변사또    | male   | 1970-05-02 |
| hanjo      | jk48fn4  | 한조      | male   | 1984-10-18 |
| widowmaker | 38ewifh3 | 위도우    | female | 1986-06-27 |
| dvadva     | k3f3ah   | 송하나    | female | 1994-06-03 |
+------------+----------+-----------+--------+------------+
6 rows in set (0.00 sec)
