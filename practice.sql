1-
SELECT COUNT(experiences."endDate") as "currentExperiences" From experiences;

2-
SELECT COUNT(courses.id) AS educations, users.id 
FROM educations 
JOIN users ON users.id=educations."userId"
JOIN courses ON educations."courseId"= courses.id 
GROUP BY users.id

3-
SELECT COUNT(testimonials.id) AS "testimonialCount", users.name AS writer 
FROM testimonials 
JOIN users ON testimonials."writerId"=users.id
WHERE users.id=435
GROUP BY writer

4-
SELECT MAX(jobs.salary) AS "maximumSalary", roles.name AS role from jobs 
JOIN roles ON jobs."roleId"=roles.id
WHERE jobs.active=true
GROUP BY role
ORDER BY "maximumSalary" ASC