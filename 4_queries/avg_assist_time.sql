-- Average Assistance Time

SELECT AVG(completed_at - started_at) AS avg_assist_req_duration
FROM assistance_requests;