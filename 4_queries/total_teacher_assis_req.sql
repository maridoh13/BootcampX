-- Total Teacher Assistance Requests

SELECT count(assistance_requests.id) AS total_reqs, teachers.name AS name
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
GROUP BY teachers.name
HAVING name = 'Waylon Boehm';