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
WHERE testimonials."writerId"=435