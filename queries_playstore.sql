-- Comments in SQL Start with dash-dash --
\c playstore

SELECT * FROM analytics
WHERE id = 1880;

SELECT * FROM analytics
WHERE last_updated = '2018-08-01';

SELECT category, COUNT(*) FROM analytics
GROUP BY category;

SELECT app_name, reviews 
FROM analytics
ORDER BY rating Desc
LIMIT 5;

SELECT app_name, rating, reviews FROM analytics
WHERE rating >= 4.8
ORDER BY reviews DESC
LIMIT 1;

SELECT category, AVG(rating) FROM analytics
GROUP BY category
ORDER BY AVG(rating) DESC;

SELECT app_name, price, rating FROM analytics
WHERE rating < 3
ORDER BY price DESC
LIMIT 1;

SELECT app_name, min_installs, rating, reviews FROM analytics
WHERE reviews > 0 AND min_installs < 50
ORDER BY rating DESC;

SELECT app_name, rating, reviews FROM analytics WHERE rating < 3
AND reviews >= 10000;

SELECT app_name, rating, last_updated FROM analytics
ORDER BY last_updated
LIMIT 1;

SELECT app_name, price FROM analytics
ORDER BY price DESC
LIMIT 1;

SELECT SUM(reviews) as total_reviews FROM analytics;

SELECT category, COUNT(*) FROM analytics
GROUP BY category
HAVING COUNT(*) > 300;

SELECT app_name, reviews, min_installs, min_installs/reviews as proportion
FROM analytics
WHERE min_installs > 100000
ORDER BY min_installs/reviews DESC
LIMIT 1;