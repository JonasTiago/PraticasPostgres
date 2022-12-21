SELECT users.name AS writer, COUNT(*) AS "testimonialCount" FROM testimonials t JOIN users ON t."writerId" = users.id WHERE users.id = 435 GROUp BY users.id;
