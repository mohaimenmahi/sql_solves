# https://leetcode.com/problems/sales-person/

select name 
from SalesPerson
where sales_id not in (
    select sales_id from Orders
    where com_id in (
        select com_id from Company where name = 'RED'
    )
)