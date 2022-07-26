1_
SELECT users.id,users.name AS name, cities.name AS city from users JOIN cities ON users."cityId"=cities.id;

2_
SELECT testimonials.id, user1.name AS writer, user2.name AS recipient, testimonials.message
FROM testimonials
JOIN  users user1 ON testimonials."writerId" = user1.id
JOIN  users user2 ON testimonials."recipientId" = user2.id