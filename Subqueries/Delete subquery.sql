-- Delete the custoemr records who have never oredered 
Delete from sub_query_users
where
    user_id not in (
        select distinct
            user_id
        from
            subquery_orders
    );


SELECT * from sub_query_users