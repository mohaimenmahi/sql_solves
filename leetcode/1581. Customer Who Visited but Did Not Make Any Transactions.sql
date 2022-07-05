# https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/

select customer_id, count(customer_id) as count_no_trans
from Visits
where visit_id not in (select visit_id from Transactions)
group by customer_id