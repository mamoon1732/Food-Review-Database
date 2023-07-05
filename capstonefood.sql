use capstonefoodreview;

create table Meals	(
	MealName VARCHAR(200) PRIMARY KEY,
	RestaurantName VARCHAR(200),
    RestaurantType VARCHAR(200),
    MealType VARCHAR(200),
	RestaurantAddress VARCHAR(1000),
	Price double,
	City VARCHAR(200)
);

create table Reviews	(
	ReviewID int Primary Key,
	MealName VARCHAR (200),
	ReviewName VARCHAR(200),
	ReviewScore VARCHAR(200),
	Review VARCHAR (2000)
);

INSERT INTO Meals
(MealName, RestaurantName, RestaurantType, MealType, RestaurantAddress, Price, City)
VALUES ('Chicken Vegatable Curry', 'India Palace', 'Restaurant', 'Indian', '2570 Cleveland Ave N', 14.95, 'Saint Paul'),
('Lamb Curry', 'India Palace', 'Restaurant', 'Indian', '2570 Cleveland Ave N', 15.95, 'Saint Paul'),
('Rice with Orange Chicken', 'Leeann Chin', 'Fast Food', 'Asian', '1730 New Brighton Blvd', 10.99, 'Saint Paul'),
('Steak Tacos', 'Los Ocampo', 'Restaurant', 'Mexican', '615 University Ave W', 15.99, 'Saint Paul');

INSERT INTO Meals
(MealName, RestaurantName, RestaurantType, MealType, RestaurantAddress, City)
VALUES ('Cream Cheese Stuffed French Toast', 'Coffee Cup', 'Diner', 'Breakfast', '1333 Randolph Ave', 'Saint Paul');

SELECT * 
FROM meals;

SELECT DISTINCT RestaurantName FROM Meals;

INSERT INTO reviews
(reviewID, MealName, ReviewName, ReviewScore, Review)
VALUES (1, 'Chicken Vegatable Curry', 'Mamoon Salam', 10, 'Great food! Really enjoyed the taste of the curry!'),
(2, 'Lamb Curry', 'Maya', 7, 'The food is always good and I''m always craving it but today I was a little let down because my aloo naan didn''t have any potato in it (it should, that''s why I order it) and my curry wasn''t spicy even though I picked hot as the spice option. The curry was still overall delicious and I''ll still eat there again');

SELECT M.MealName, M.RestaurantName, M.RestaurantAddress, M.Price, M.City, R.ReviewName, R.ReviewScore, R.Review
FROM Meals M INNER JOIN Reviews R
ON M.MealName = R.MealName; 

SELECT *
FROM Reviews;

DELETE
FROM Reviews
WHERE ReviewID = 6;

INSERT INTO reviews
(reviewID, MealName, ReviewName, ReviewScore, Review)
VALUES (3,'Rice with Orange Chicken', 'Mamoon Salam', 10, 'Great food! Really enjoyed the taste of the rice!'),
(4, 'Rice with Orange Chicken', 'Moon', 6, 'The orange chicken was okay'),
(5, 'Lamb Curry', 'Mamoon Salam', 9, 'I really enjoy the taste of Lamb Curry!');

SELECT AVG(ReviewScore) AS AverageScore
FROM reviews
WHERE MealName = 'lamb curry';