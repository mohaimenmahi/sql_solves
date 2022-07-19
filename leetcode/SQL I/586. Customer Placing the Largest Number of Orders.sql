# https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/

select customer_number
from (
    select customer_number, count(customer_number) as orderNumber
    from Orders
    group by customer_number
    order by orderNumber desc
    limit 1 offset 0
)t