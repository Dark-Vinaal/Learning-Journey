-- Aggregate Functions 


-- Creating the Table as 'Student'
MariaDB [-]> CREATE TABLE Student(ID INT PRIMARY KEY, Name VARCHAR(20), Age INT, Phone_No BIGINT, Studies VARCHAR(30), Marks DECIMAL(5,2));
Query OK, 0 rows affected (0.092 sec)

-- Describing the Table
MariaDB [-]> DESCRIBE Student;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| ID       | int(11)      | NO   | PRI | NULL    |       |
| Name     | varchar(20)  | YES  |     | NULL    |       |
| Age      | int(11)      | YES  |     | NULL    |       |
| Phone_No | bigint(20)   | YES  |     | NULL    |       |
| Studies  | varchar(30)  | YES  |     | NULL    |       |
| Marks    | decimal(5,2) | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
6 rows in set (0.065 sec)

-- INSERT Records into the Table
MariaDB [-]> INSERT INTO Student VALUES (1, 'Alice',   20, 9876543210, 'Computer Science', 88.50);
Query OK, 1 row affected (0.018 sec)

MariaDB [-]> INSERT INTO Student VALUES (2, 'Bob',     22, 9123456789, 'Mathematics',      76.00);
Query OK, 1 row affected (0.005 sec)

MariaDB [-]> INSERT INTO Student VALUES (3, 'Charlie', 21, 9988776655, 'Physics',          91.75);
Query OK, 1 row affected (0.004 sec)

MariaDB [-]> INSERT INTO Student VALUES (4, 'Diana',   23, 9871234560, 'Computer Science', 65.00);
Query OK, 1 row affected (0.004 sec)

MariaDB [-]> INSERT INTO Student VALUES (5, 'Eve',     20, 9765432100, 'Mathematics',      82.25);
Query OK, 1 row affected (0.004 sec)

-- SELECT all records from the Table
MariaDB [-]> SELECT * FROM Student;
+----+---------+------+------------+------------------+-------+
| ID | Name    | Age  | Phone_No   | Studies          | Marks |
+----+---------+------+------------+------------------+-------+
|  1 | Alice   |   20 | 9876543210 | Computer Science | 88.50 |
|  2 | Bob     |   22 | 9123456789 | Mathematics      | 76.00 |
|  3 | Charlie |   21 | 9988776655 | Physics          | 91.75 |
|  4 | Diana   |   23 | 9871234560 | Computer Science | 65.00 |
|  5 | Eve     |   20 | 9765432100 | Mathematics      | 82.25 |
+----+---------+------+------------+------------------+-------+
5 rows in set (0.001 sec)

-- COUNT: Total number of Students
MariaDB [-]> SELECT COUNT(*) AS Total_Students FROM Student;
+----------------+
| Total_Students |
+----------------+
|              5 |
+----------------+
1 row in set (0.001 sec)

-- SUM: Total Marks of all Students
MariaDB [-]> SELECT SUM(Marks) AS Total_Marks FROM Student;
+-------------+
| Total_Marks |
+-------------+
|      403.50 |
+-------------+
1 row in set (0.001 sec)

-- MIN: Minimum Marks among all Students
MariaDB [-]> SELECT MIN(Marks) AS Min_Marks FROM Student;
+-----------+
| Min_Marks |
+-----------+
|     65.00 |
+-----------+
1 row in set (0.001 sec)

-- MAX: Maximum Marks among all Students
MariaDB [-]> SELECT MAX(Marks) AS Max_Marks FROM Student;
+-----------+
| Max_Marks |
+-----------+
|     91.75 |
+-----------+
1 row in set (0.001 sec)

-- AVG: Average Marks of all Students
MariaDB [-]> SELECT AVG(Marks) AS Avg_Marks FROM Student;
+-----------+
| Avg_Marks |
+-----------+
| 80.700000 |
+-----------+
1 row in set (0.001 sec)
