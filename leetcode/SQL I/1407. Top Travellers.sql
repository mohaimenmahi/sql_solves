# https://leetcode.com/problems/top-travellers/

select name, sum(
    case when distance is null then 0
         else distance
    end
) as travelled_distance
from (
    select name, distance, Users.id as id
    from Users
    left join Rides on Users.id = Rides.user_id
)t
group by id
order by travelled_distance desc, name asc 