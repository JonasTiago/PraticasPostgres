SELECT u.id, u.name, c.name AS course, s.name AS school, e."endDate" 
FROM users u
JOIN educations e ON e.status = 'finished' 
JOIN courses c ON e."courseId" = c.id 
JOIN schools s ON e."schoolId" = schools.id   
WHERE u.id = 30 AND e.status = 'finished';