# https://leetcode.com/problems/market-analysis-i/

# example of template table
# creating a tabble with onlyb the count of 2019 purcchases group by buyer id
# the rest is joining 

with temp as
(
    select buyer_id, count(*) as count
    from Orders
    where order_date >= '2019-01-01' and order_date <= '2019-12-31'
    group by buyer_id
)

select u.user_id as buyer_id, u.join_date, ifnull(t.count, 0) as orders_in_2019
from Users u
left join temp t
on u.user_id = t.buyer_id


#### solution with HAVING count

SELECT EMAIL
FROM PERSON 
GROUP BY EMAIL
HAVING COUNT(EMAIL) >= 2