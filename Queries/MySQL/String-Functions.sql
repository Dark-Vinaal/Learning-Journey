-- String Functions 


-- Creating the Table as 'Student'
mysql> CREATE TABLE Student(ID INT PRIMARY KEY, Name VARCHAR(20), Age INT, Phone_No BIGINT, Studies VARCHAR(30));
Query OK, 0 rows affected (0.092 sec)

-- Describing the Table
mysql> DESCRIBE Student;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| ID       | int         | NO   | PRI | NULL    |       |
| Name     | varchar(20) | YES  |     | NULL    |       |
| Age      | int         | YES  |     | NULL    |       |
| Phone_No | bigint      | YES  |     | NULL    |       |
| Studies  | varchar(30) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
5 rows in set (0.065 sec)

-- INSERT Records into the Table
mysql> INSERT INTO Student VALUES (1, 'Alice',   20, 9876543210, 'Computer Science');
Query OK, 1 row affected (0.018 sec)

mysql> INSERT INTO Student VALUES (2, 'Bob',     22, 9123456789, 'Mathematics');
Query OK, 1 row affected (0.005 sec)

mysql> INSERT INTO Student VALUES (3, 'Charlie', 21, 9988776655, 'Physics');
Query OK, 1 row affected (0.004 sec)

mysql> INSERT INTO Student VALUES (4, 'Diana',   23, 9871234560, 'Computer Science');
Query OK, 1 row affected (0.004 sec)

mysql> INSERT INTO Student VALUES (5, 'Eve',     20, 9765432100, 'Mathematics');
Query OK, 1 row affected (0.004 sec)

-- SELECT all records from the Table
mysql> SELECT * FROM Student;
+----+---------+------+------------+------------------+
| ID | Name    | Age  | Phone_No   | Studies          |
+----+---------+------+------------+------------------+
|  1 | Alice   |   20 | 9876543210 | Computer Science |
|  2 | Bob     |   22 | 9123456789 | Mathematics      |
|  3 | Charlie |   21 | 9988776655 | Physics          |
|  4 | Diana   |   23 | 9871234560 | Computer Science |
|  5 | Eve     |   20 | 9765432100 | Mathematics      |
+----+---------+------+------------+------------------+
5 rows in set (0.001 sec)

-- CONCAT: Combine Name and Studies
mysql> SELECT ID, CONCAT(Name, ' - ', Studies) AS Name_Studies FROM Student;
+----+--------------------------+
| ID | Name_Studies             |
+----+--------------------------+
|  1 | Alice - Computer Science |
|  2 | Bob - Mathematics        |
|  3 | Charlie - Physics        |
|  4 | Diana - Computer Science |
|  5 | Eve - Mathematics        |
+----+--------------------------+
5 rows in set (0.001 sec)

-- SUBSTRING: First 3 letters of Name
mysql> SELECT ID, Name, SUBSTRING(Name, 1, 3) AS Short_Name FROM Student;
+----+---------+------------+
| ID | Name    | Short_Name |
+----+---------+------------+
|  1 | Alice   | Ali        |
|  2 | Bob     | Bob        |
|  3 | Charlie | Cha        |
|  4 | Diana   | Dia        |
|  5 | Eve     | Eve        |
+----+---------+------------+
5 rows in set (0.001 sec)

-- LENGTH: Number of characters in Name
mysql> SELECT ID, Name, LENGTH(Name) AS Name_Length FROM Student;
+----+---------+-------------+
| ID | Name    | Name_Length |
+----+---------+-------------+
|  1 | Alice   |           5 |
|  2 | Bob     |           3 |
|  3 | Charlie |           7 |
|  4 | Diana   |           5 |
|  5 | Eve     |           3 |
+----+---------+-------------+
5 rows in set (0.001 sec)

-- UPPER: Convert Name to Uppercase
mysql> SELECT ID, Name, UPPER(Name) AS Upper_Name FROM Student;
+----+---------+------------+
| ID | Name    | Upper_Name |
+----+---------+------------+
|  1 | Alice   | ALICE      |
|  2 | Bob     | BOB        |
|  3 | Charlie | CHARLIE    |
|  4 | Diana   | DIANA      |
|  5 | Eve     | EVE        |
+----+---------+------------+
5 rows in set (0.001 sec)

-- LOWER: Convert Name to Lowercase
mysql> SELECT ID, Name, LOWER(Name) AS Lower_Name FROM Student;
+----+---------+------------+
| ID | Name    | Lower_Name |
+----+---------+------------+
|  1 | Alice   | alice      |
|  2 | Bob     | bob        |
|  3 | Charlie | charlie    |
|  4 | Diana   | diana      |
|  5 | Eve     | eve        |
+----+---------+------------+
5 rows in set (0.001 sec)
