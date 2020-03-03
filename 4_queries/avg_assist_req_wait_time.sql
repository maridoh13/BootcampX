-- Average Assistance Request Wait Time

SELECT avg(started_at - created_at) AS avg_wait_time
FROM assistance_requests;
