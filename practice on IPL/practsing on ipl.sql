SELECT 
    batter, SUM(batsman_run)
FROM
    campusx.ipl_ball_by_ball_2008_2022
GROUP BY batter
ORDER BY SUM(batsman_run) DESC
LIMIT 1;


	

SELECT 
    batter, COUNT(*) AS count_sixes
FROM
    campusx.ipl_ball_by_ball_2008_2022
WHERE
    batsman_run = 6
GROUP BY batter
ORDER BY count_sixes DESC;


 select * from campusx.ipl_ball_by_ball_2008_2022 where batter = 'V Kohli';


SELECT 
    batter, ID, SUM(batsman_run) AS 'score'
FROM
    campusx.ipl_ball_by_ball_2008_2022
GROUP BY batter , ID
HAVING score >= 100
ORDER BY batter DESC;


SELECT 
    batter,
    SUM(batsman_run),
    COUNT(batsman_run),
    ROUND(SUM(batsman_run) / COUNT(batsman_run) * 100,2) AS sr
FROM
    campusx.ipl_ball_by_ball_2008_2022
GROUP BY batter
HAVING COUNT(batsman_run) >= 1000
ORDER BY sr DESC
LIMIT 5;
