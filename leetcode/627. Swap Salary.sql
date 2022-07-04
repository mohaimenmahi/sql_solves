# https://leetcode.com/problems/swap-salary/

UPDATE SALARY
SET sex = IF(sex = 'f', 'm', 'f')
WHERE sex = IF(sex = 'f', 'f', 'm')