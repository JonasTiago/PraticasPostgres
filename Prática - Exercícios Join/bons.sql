SELECT s.id AS "schoolId", s.name AS school, c.name AS course, co.name AS company, r.name AS role
FROM educations e
JOIN courses c ON e."courseId" = c.id
JOIN schools s ON e."schoolId" = s.id
JOIN users u ON e."userId" = u.id
JOIN applicants a ON a."userId" = u.id
JOIN jobs j ON a."jobId" = j.id
JOIN companies co ON j."companyId" = co.id
JOIN roles r ON j."roleId"= r.id
WHERE co.id = 10 AND r.name = 'Software Engineer' AND j.active = true;