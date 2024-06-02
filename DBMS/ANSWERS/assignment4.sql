-- 3.17. Find the list of all customers who stay in area 'da' or area 'mu' or area 'gh'.
SELECT *
FROM customers
WHERE area IN ('da', 'mu', 'gh');

-- 3.18. Print the list of employees whose phone numbers are greater than the value 5550000.
SELECT *
FROM employees
WHERE phone > 5550000;

-- 3.19. Print the information from the invoice table of customers who have been issued movies in the month of September.
SELECT *
FROM invoice
WHERE EXTRACT(MONTH FROM issue_date) = 9;

-- 3.20. Display the invoice table information for cust – id 'a01' and 'a02'.
SELECT *
FROM invoice
WHERE cust_id IN ('a01', 'a02');

-- 3.21. Find the movies of type 'action' and ‘comedy’.
SELECT *
FROM movies
WHERE type IN ('action', 'comedy');

-- 3.22. Find the movies whose price is greater than 150 and less than or equal to 200.
SELECT *
FROM movies
WHERE price > 150 AND price <= 200;

-- 3.23. Find the movies that cost more than 150 and also find the new cost as original cost * 15.
SELECT title, price, price * 15 AS new_price
FROM movies
WHERE price > 150;

-- 3.24. Rename the new column in the above query as new-price.
SELECT title, price, price * 15 AS "new-price"
FROM movies
WHERE price > 150;

-- 3.25. List the movies in sorted order of their titles.
SELECT *
FROM movies
ORDER BY title;

-- 3.26. Print the names and types of all the movies except horror movies.
SELECT title, type
FROM movies
WHERE type != 'horror';

-- 3.27. Divide the cost of movie 'home alone' by the difference between its price and 100.
SELECT title, price / (price - 100) AS adjusted_price
FROM movies
WHERE title = 'home alone';

-- 3.28. List the names, areas and cust-id of customers without phone numbers.
SELECT name, area, cust_id
FROM customers
WHERE phone IS NULL;

-- 3.29. List the names of customers without lname.
SELECT name
FROM customers
WHERE lname IS NULL;

-- 3.30. List the mv-no, title, type of movies whose stars begin with the letter 'm'.
SELECT mv_no, title, type
FROM movies
WHERE stars LIKE 'm%';

-- 3.31. List the mv-no and inv-no of customers having inv-no less than 'i05' from the Invoice Transaction Table.
SELECT mv_no, inv_no
FROM invoice
WHERE inv_no < 'i05';
