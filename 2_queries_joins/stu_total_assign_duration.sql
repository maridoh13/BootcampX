-- Student's Total Assignment Duration

SELECT sum(duration)
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE name = 'Ibrahim Schimmel';