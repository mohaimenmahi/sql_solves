# https://leetcode.com/problems/second-highest-salary/

select (
    select distinct(salary) from Employee 
    order by salary desc limit 1 offset 1
) as SecondHighestSalary

# explanation: https://thecodingbot.com/leetcode-176-second-highest-salary/