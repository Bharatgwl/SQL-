/*MY sql Indexes
CREATE INDEX statement in SQL is used to create indexes in tables 
The indexes are used to retreive data from the database more quickly than others.
The user cant see the indexes, and they are just used to speed up their queries/searches.
NOTE: updating the table with indexes will take a lot of time than without indexes
This is because the indexes also need to update.
So,only create indexes on those columns that will be frequently searched against. 
*/

use employee;
SELECT 
    *
FROM
    person;
desc person;

create index index_city_name on person(city_name);

