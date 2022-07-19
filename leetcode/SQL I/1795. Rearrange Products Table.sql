# https://leetcode.com/problems/rearrange-products-table/

select * from 
(
    select product_id, 'store1' store, store1 price from Products
    union 
    select product_id, 'store2' store, store2 price from Products
    union
    select product_id, 'store3' store, store3 price from Products
)t
where price is not null;

# 'store1' store means "Set the 'store1' to store column"
# store1 price means "Set the store1 column values to price columns"
# Subqueries need an alias name. In this case it is t.
# With this name you can refer to the result of the subquery and its columns.