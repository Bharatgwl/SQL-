-- 1. Create the table
CREATE TABLE students11 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT
);

-- 2. Start a transaction
BEGIN;

-- 3. Insert some data
INSERT INTO students11 (id, name, marks) VALUES (11, 'Bharat', 85);
INSERT INTO students11 (id, name, marks) VALUES (2, 'hitesh', 90);

-- 4. Save a point in transaction
SAVEPOINT sp1;

-- 5. Insert more data
INSERT INTO students11 (id, name, marks) VALUES (3, 'Aryan', 76);
INSERT INTO students11 (id, name, marks) VALUES (4, 'Simran', 88);

-- 6. Rollback to savepoint
ROLLBACK TO sp1;

-- 7. Only Bharat and Astha will remain
-- 8. Commit changes
COMMIT;
delete from students11 where id = 2;
-- 9. Check data
SELECT * FROM students11;

