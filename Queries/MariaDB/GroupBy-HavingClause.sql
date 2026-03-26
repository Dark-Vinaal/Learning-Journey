-- GROUP BY and HAVING Clause


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

MariaDB [-]> INSERT INTO Student VALUES (6, 'Frank',   22, 9654321098, 'Physics',          55.00);
Query OK, 1 row affected (0.004 sec)

MariaDB [-]> INSERT INTO Student VALUES (7, 'Grace',   21, 9543210987, 'Computer Science', 92.00);
Query OK, 1 row affected (0.004 sec)

MariaDB [-]> INSERT INTO Student VALUES (8, 'Henry',   23, 9432109876, 'Mathematics',      60.50);
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
|  6 | Frank   |   22 | 9654321098 | Physics          | 55.00 |
|  7 | Grace   |   21 | 9543210987 | Computer Science | 92.00 |
|  8 | Henry   |   23 | 9432109876 | Mathematics      | 60.50 |
+----+---------+------+------------+------------------+-------+
8 rows in set (0.001 sec)

-- GROUP BY: Count of Students per Studies
MariaDB [-]> SELECT Studies, COUNT(*) AS Total_Students FROM Student GROUP BY Studies;
+------------------+----------------+
| Studies          | Total_Students |
+------------------+----------------+
| Computer Science |              3 |
| Mathematics      |              3 |
| Physics          |              2 |
+------------------+----------------+
3 rows in set (0.001 sec)

-- GROUP BY: Average Marks per Studies
MariaDB [-]> SELECT Studies, ROUND(AVG(Marks), 2) AS Avg_Marks FROM Student GROUP BY Studies;
+------------------+-----------+
| Studies          | Avg_Marks |
+------------------+-----------+
| Computer Science |     81.83 |
| Mathematics      |     72.92 |
| Physics          |     73.38 |
+------------------+-----------+
3 rows in set (0.001 sec)

-- GROUP BY: Total Marks per Studies
MariaDB [-]> SELECT Studies, SUM(Marks) AS Total_Marks FROM Student GROUP BY Studies;
+------------------+-------------+
| Studies          | Total_Marks |
+------------------+-------------+
| Computer Science |      245.50 |
| Mathematics      |      218.75 |
| Physics          |      146.75 |
+------------------+-------------+
3 rows in set (0.001 sec)

-- GROUP BY: Min and Max Marks per Studies
MariaDB [-]> SELECT Studies, MIN(Marks) AS Min_Marks, MAX(Marks) AS Max_Marks FROM Student GROUP BY Studies;
+------------------+-----------+-----------+
| Studies          | Min_Marks | Max_Marks |
+------------------+-----------+-----------+
| Computer Science |     65.00 |     92.00 |
| Mathematics      |     60.50 |     82.25 |
| Physics          |     55.00 |     91.75 |
+------------------+-----------+-----------+
3 rows in set (0.001 sec)

-- HAVING: Studies where Average Marks is greater than 75
MariaDB [-]> SELECT Studies, ROUND(AVG(Marks), 2) AS Avg_Marks FROM Student GROUP BY Studies HAVING AVG(Marks) > 75;
+------------------+-----------+
| Studies          | Avg_Marks |
+------------------+-----------+
| Computer Science |     81.83 |
+------------------+-----------+
1 row in set (0.001 sec)

-- HAVING: Studies where Total Students is greater than 2
MariaDB [-]> SELECT Studies, COUNT(*) AS Total_Students FROM Student GROUP BY Studies HAVING COUNT(*) > 2;
+------------------+----------------+
| Studies          | Total_Students |
+------------------+----------------+
| Computer Science |              3 |
| Mathematics      |              3 |
+------------------+----------------+
2 rows in set (0.001 sec)

-- HAVING: Studies where Total Marks is greater than 200
MariaDB [-]> SELECT Studies, SUM(Marks) AS Total_Marks FROM Student GROUP BY Studies HAVING SUM(Marks) > 200;
+------------------+-------------+
| Studies          | Total_Marks |
+------------------+-------------+
| Computer Science |      245.50 |
| Mathematics      |      218.75 |
+------------------+-------------+
2 rows in set (0.001 sec)
