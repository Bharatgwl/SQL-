-- use campusx;
-- CREATE TABLE marks (
--     student_id INTEGER PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(255),
--     branch VARCHAR(255),
--     marks INTEGER
-- );
-- INSERT INTO
--     marks (name, branch, marks)
-- VALUES
--     ('Nitish', 'EEE', 82),
--     ('Rishabh', 'EEE', 91),
--     ('Anukant', 'EEE', 69),
--     ('Rupesh', 'EEE', 55),
--     ('Shubham', 'CSE', 78),
--     ('Ved', 'CSE', 43),
--     ('Deepak', 'CSE', 98),
--     ('Arpan', 'CSE', 95),
--     ('Vinay', 'ECE', 95),
--     ('Ankit', 'ECE', 88),
--     ('Anand', 'ECE', 81),
--     ('Rohit', 'ECE', 95),
--     ('Prashant', 'MECH', 75),
--     ('Amit', 'MECH', 69),
--     ('Sunny', 'MECH', 39),
--     ('Gautam', 'MECH', 51)
SELECT
    *
FROM
    marks;

SELECT
    name,
    branch,
    avg(marks) OVER ()
FROM
    marks;

-- window function return the same number of rows as the original query
SELECT
    *,
    avg(marks) over (PARTITION BY branch)
FROM
    marks;

SELECT
    *,
    min(marks) OVER () AS 'over all min marks',
    max(marks) OVER () AS 'over all max marks',
    avg(marks) OVER () AS 'over all avg marks',
    avg(marks) OVER (PARTITION by branch) AS 'branch wise avg marks'
FROM
    marks;

--  find the student who scored more than average marks of their branch
SELECT
    *
FROM
    (
        SELECT
            *,
            avg(marks) over(PARTITION BY branch) AS 'branch_avg_marks'
        FROM
            marks
    ) AS t1
WHERE
    t1.marks > t1.branch_avg_marks;