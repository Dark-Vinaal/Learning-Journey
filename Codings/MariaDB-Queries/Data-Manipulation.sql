-- Data Manipulation Language (DML)

MariaDB [-]> CREATE TABLE Student(ID INT PRIMARY KEY, Name VARCHAR(20), Age INT, Phone_No BIGINT, Studies VARCHAR(30));
Query OK, 0 rows affected (0.092 sec)

MariaDB [-]> DESCRIBE Student;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| ID       | int(11)     | NO   | PRI | NULL    |       |
| Name     | varchar(20) | YES  |     | NULL    |       |
| Age      | int(11)     | YES  |     | NULL    |       |
| Phone_No | bigint(20)  | YES  |     | NULL    |       |
| Studies  | varchar(30) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
5 rows in set (0.065 sec)

MariaDB [-]> ALTER TABLE Student ADD COLUMN Salary DECIMAL(10, 2);
Query OK, 0 rows affected (0.107 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [-]> DESCRIBE Student;
+----------+---------------+------+-----+---------+-------+
| Field    | Type          | Null | Key | Default | Extra |
+----------+---------------+------+-----+---------+-------+
| ID       | int(11)       | NO   | PRI | NULL    |       |
| Name     | varchar(20)   | YES  |     | NULL    |       |
| Age      | int(11)       | YES  |     | NULL    |       |
| Phone_No | bigint(20)    | YES  |     | NULL    |       |
| Studies  | varchar(30)   | YES  |     | NULL    |       |
| Salary   | decimal(10,2) | YES  |     | NULL    |       |
+----------+---------------+------+-----+---------+-------+
6 rows in set (0.001 sec)

MariaDB [-]> RENAME TABLE Student TO Person;
Query OK, 0 rows affected (0.026 sec)

MariaDB [-]> DESCRIBE Person;
+----------+---------------+------+-----+---------+-------+
| Field    | Type          | Null | Key | Default | Extra |
+----------+---------------+------+-----+---------+-------+
| ID       | int(11)       | NO   | PRI | NULL    |       |
| Name     | varchar(20)   | YES  |     | NULL    |       |
| Age      | int(11)       | YES  |     | NULL    |       |
| Phone_No | bigint(20)    | YES  |     | NULL    |       |
| Studies  | varchar(30)   | YES  |     | NULL    |       |
| Salary   | decimal(10,2) | YES  |     | NULL    |       |
+----------+---------------+------+-----+---------+-------+
6 rows in set (0.002 sec)

MariaDB [-]> TRUNCATE TABLE Person;
Query OK, 0 rows affected (0.018 sec)

MariaDB [-]> DESCRIBE Person;
+----------+---------------+------+-----+---------+-------+
| Field    | Type          | Null | Key | Default | Extra |
+----------+---------------+------+-----+---------+-------+
| ID       | int(11)       | NO   | PRI | NULL    |       |
| Name     | varchar(20)   | YES  |     | NULL    |       |
| Age      | int(11)       | YES  |     | NULL    |       |
| Phone_No | bigint(20)    | YES  |     | NULL    |       |
| Studies  | varchar(30)   | YES  |     | NULL    |       |
| Salary   | decimal(10,2) | YES  |     | NULL    |       |
+----------+---------------+------+-----+---------+-------+
6 rows in set (0.001 sec)

MariaDB [-]> DROP TABLE Person;
Query OK, 0 rows affected (0.091 sec)

MariaDB [-]> DESCRIBE Person;
ERROR 1146 (42S02): Table 'vinaal.Person' doesn't exist
