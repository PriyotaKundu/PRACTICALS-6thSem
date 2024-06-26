CREATE VIEW CustView AS
SELECT CUST_ID AS custno, FNAME, LNAME
FROM CUST;

SELECT FNAME, LNAME
FROM CUST;

CREATE VIEW IssuedMoviesView AS
SELECT DISTINCT C.CUST_ID, C.FNAME, C.LNAME
FROM CUST C
JOIN INVOICE I ON C.CUST_ID = I.CUST_ID;

CREATE TABLE OddEvenNumbers (
  OddNumber NUMBER,
  EvenNumber NUMBER
);


CREATE SEQUENCE OddSequence
  START WITH 1
  INCREMENT BY 2
  MAXVALUE 100
  CYCLE;

CREATE SEQUENCE EvenSequence
  START WITH 2
  INCREMENT BY 2
  MAXVALUE 100
  CYCLE;


CREATE SEQUENCE MovieNoSequence
  START WITH 10
  INCREMENT BY 1
  MAXVALUE 100
  CYCLE;


-- Generate sequence for MY_NO in MOVIE table
ALTER TABLE MOVIE ADD COLUMN MY_NO INT AUTO_INCREMENT PRIMARY KEY;

-- Create index on PRICE column in MOVIE table
CREATE INDEX idx_price ON MOVIE (PRICE);

-- Retrieve indexed data from MOVIE table
SELECT * FROM MOVIE WHERE PRICE BETWEEN 100 AND 200 ORDER BY PRICE;