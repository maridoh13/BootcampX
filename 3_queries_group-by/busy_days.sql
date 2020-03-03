SELECT day, count(assignments) AS total_assignments
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;