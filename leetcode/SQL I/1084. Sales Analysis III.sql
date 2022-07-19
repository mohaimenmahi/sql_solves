# https://leetcode.com/problems/sales-analysis-iii/

select distinct product_id, product_name
from (
    select p.product_id, p.product_name, s.sale_date
    from Product p
    right join Sales s
    on p.product_id = s.product_id
)t
where t.product_id not in(
    select product_id from Sales where sale_date > '2019-03-31' or sale_date < '2019-01-01'
) and t.sale_date >= '2019-01-01' and t.sale_date <= '2019-03-31'