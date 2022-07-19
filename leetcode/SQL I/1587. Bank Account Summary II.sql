# https://leetcode.com/problems/bank-account-summary-ii/

# Runtime: 1231ms

select name, balance 
from Users
right join (
    select account, sum(amount) as balance
    from Transactions
    group by account
    having balance > 10000
)temp
on users.account = temp.account

# Runtime: 541ms

with temp as (
    select account, sum(amount) as balance
    from Transactions
    group by account
    having balance > 10000
)

select name, balance 
from Users
right join temp
on users.account = temp.account