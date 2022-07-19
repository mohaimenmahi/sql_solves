# https://leetcode.com/problems/rising-temperature/

select B.id 
from Weather A, Weather B
where A.temperature < B.temperature and datediff(B.recordDate, A.recordDate) = 1
order by id