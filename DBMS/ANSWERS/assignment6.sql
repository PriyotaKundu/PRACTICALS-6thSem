SELECT mv_no FROM invoice JOIN cust ON invoice.cust_id = cust.cust_id WHERE fname = 'Ivan';

SELECT cust.fname, cust.lname, invoice.mv_no FROM invoice JOIN cust ON invoice.cust_id = cust.cust_id;

SELECT movie.title, invoice.cust_id, invoice.mv_no FROM invoice JOIN movie ON invoice.mv_no = movie.mv_no;

SELECT movie.title, movie.type FROM invoice JOIN movie ON invoice.mv_no = movie.mv_no JOIN cust ON invoice.cust_id = cust.cust_id WHERE cust.fname = 'Vandana';

SELECT DISTINCT cust.fname, cust.lname FROM invoice JOIN movie ON invoice.mv_no = movie.mv_no JOIN cust ON invoice.cust_id = cust.cust_id WHERE movie.type = 'drama';

SELECT 'The movie taken by ' || cust.fname || ' ' || cust.lname || ' is ' || movie.title FROM invoice JOIN movie ON invoice.mv_no = movie.mv_no JOIN cust ON invoice.cust_id = cust.cust_id WHERE invoice.mv_no >= 3;

SELECT cust.fname, cust.lname FROM invoice JOIN cust ON invoice.cust_id = cust.cust_id WHERE invoice.mv_no = 9;

SELECT cust.fname, cust.lname, cust.area FROM invoice JOIN cust ON invoice.cust_id = cust.cust_id WHERE invoice.inv_no = 'i10';

SELECT cust.fname, cust.lname, cust.phone_no FROM invoice JOIN cust ON invoice.cust_id = cust.cust_id WHERE invoice.issue_date < '01-aug-93';

SELECT movie.title FROM invoice JOIN movie ON invoice.mv_no = movie.mv_no JOIN cust ON invoice.cust_id = cust.cust_id WHERE cust.fname IN ('Vandana', 'Ivan');

SELECT invoice.mv_no, movie.title FROM invoice JOIN movie ON invoice.mv_no = movie.mv_no;

SELECT movie.type, invoice.mv_no FROM invoice JOIN movie ON invoice.mv_no = movie.mv_no WHERE invoice.cust_id IN ('a01', 'a02');

SELECT invoice.cust_id FROM invoice JOIN movie ON invoice.mv_no = movie.mv_no WHERE movie.star = 'tom cruise';

SELECT DISTINCT cust.lname, cust.fname FROM invoice JOIN cust ON invoice.cust_id = cust.cust_id;

SELECT cust.fname, cust.lname FROM cust WHERE cust.cust_id NOT IN (SELECT DISTINCT invoice.cust_id FROM invoice);