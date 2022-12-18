SELECT u.id, u.name, r.name AS "role", co.name AS company, e."startDate"
FROM experiences e
JOIN companies co ON e."companyId" = co.id
JOIN roles r ON e."roleId" = r.id
JOIN users u ON e."userId" = u.id
WHERE u.id = 50 AND e."endDate" IS NULL;