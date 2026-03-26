-- Data Manipulation Language (DML)


-- INSERT Records into the Table
MariaDB [-]> INSERT INTO Student (ID, Name, Age, Phone_No, Studies) VALUES (1, 'Alice', 20, 9876543210, 'Computer Science');
Query OK, 1 row affected (0.018 sec)

MariaDB [-]> INSERT INTO Student (ID, Name, Age, Phone_No, Studies) VALUES (2, 'Bob', 22, 9123456789, 'Mathematics');
Query OK, 1 row affected (0.005 sec)

MariaDB [-]> INSERT INTO Student (ID, Name, Age, Phone_No, Studies) VALUES (3, 'Charlie', 21, 9988776655, 'Physics');
Query OK, 1 row affected (0.004 sec)

-- SELECT all records from the Table
MariaDB [-]> SELECT * FROM Student;
+----+---------+------+------------+------------------+
| ID | Name    | Age  | Phone_No   | Studies          |
+----+---------+------+------------+------------------+
|  1 | Alice   |   20 | 9876543210 | Computer Science |
|  2 | Bob     |   22 | 9123456789 | Mathematics      |
|  3 | Charlie |   21 | 9988776655 | Physics          |
+----+---------+------+------------+------------------+
3 rows in set (0.001 sec)

-- UPDATE a record in the Table
MariaDB [-]> UPDATE Student SET Age = 23, Studies = 'Data Science' WHERE ID = 2;
Query OK, 1 row affected (0.010 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [-]> SELECT * FROM Student;
+----+---------+------+------------+------------------+
| ID | Name    | Age  | Phone_No   | Studies          |
+----+---------+------+------------+------------------+
|  1 | Alice   |   20 | 9876543210 | Computer Science |
|  2 | Bob     |   23 | 9123456789 | Data Science     |
|  3 | Charlie |   21 | 9988776655 | Physics          |
+----+---------+------+------------+------------------+
3 rows in set (0.001 sec)

-- DELETE a record from the Table
MariaDB [-]> DELETE FROM Student WHERE ID = 3;
Query OK, 1 row affected (0.007 sec)

MariaDB [-]> SELECT * FROM Student;
+----+-------+------+------------+------------------+
| ID | Name  | Age  | Phone_No   | Studies          |
+----+-------+------+------------+------------------+
|  1 | Alice |   20 | 9876543210 | Computer Science |
|  2 | Bob   |   23 | 9123456789 | Data Science     |
+----+-------+------+------------+------------------+
2 rows in set (0.001 sec)

-- TRUNCATE will delete all the records in a Table
MariaDB [-]> TRUNCATE TABLE Student;
Query OK, 0 rows affected (0.018 sec)
  
MariaDB [-]> SELECT * FROM Student;
Empty set (0.001 sec)
