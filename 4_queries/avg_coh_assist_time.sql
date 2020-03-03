-- Average Cohort Assistance Time

SELECT cohorts.name AS cohort, AVG(completed_at - started_at) AS average_assist_time
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assist_time;