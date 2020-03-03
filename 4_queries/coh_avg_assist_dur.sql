-- Cohort Average Assistance Duration

SELECT AVG(total_duration) AS avg_total_duration
FROM (
  SELECT cohorts.name AS cohort, SUM(assistance_requests.completed_at - assistance_requests.started_at) AS total_duration
  FROM assistance_requests
  JOIN students ON student_id = students.id
  JOIN cohorts ON cohort_id = cohorts.id
  GROUP BY cohorts.name
) as total_durations;