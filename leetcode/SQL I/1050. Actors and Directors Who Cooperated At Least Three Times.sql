# https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/

select actor_id, director_id
from (
    select actor_id, director_id, count(director_id) as count
    from ActorDirector
    group by actor_id, director_id
    having count(count) >=3
)t