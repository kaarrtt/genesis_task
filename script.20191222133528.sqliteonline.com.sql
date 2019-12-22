select cat_name from (SELECT a.category_name as cat_name, avg(cost) as average from costs c inner join adverts a on a.advert_id = c.advert_id group by category_name) as t where average < '500'
