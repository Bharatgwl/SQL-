# Mathematical expression 

SELECT 
    model,
    SQRT(resolution_width * resolution_width + resolution_height * resolution_height) / screen_size AS 'ppi'
FROM
    campusx.smartphones
order by(ppi) desc;


select model, rating/10 from campusx.smartphones;