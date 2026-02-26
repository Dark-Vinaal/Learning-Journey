-- Data Manipulation Language (DML)

-- Creating the Table
mysql> CREATE TABLE Student(ID INT PRIMARY KEY, Name VARCHAR(20), Age INT, Phone_No BIGINT, Studies VARCHAR(30));
Query OK, 0 rows affected (0.092 sec)

-- Describing The Table
mysql> DESCRIBE Student;
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

-- Altering the Table
mysql> ALTER TABLE Student ADD COLUMN Salary DECIMAL(10, 2);
Query OK, 0 rows affected (0.107 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESCRIBE Student;
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

-- Renaming Table
mysql> RENAME TABLE Student TO Person;
Query OK, 0 rows affected (0.026 sec)

mysql> DESCRIBE Person;
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

-- Truncate will delete all the records in a Table
mysql> TRUNCATE TABLE Person;
Query OK, 0 rows affected (0.018 sec)

mysql> DESCRIBE Person;
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

-- Drop (Deleting) the Table
mysql> DROP TABLE Person;
Query OK, 0 rows affected (0.091 sec)

  -- Since the Table is deleted, DESCRIBE Query does'nt work. So error pops up!
mysql> DESCRIBE Person;
ERROR 1146 (42S02): Table '-.Person' doesn't exist
