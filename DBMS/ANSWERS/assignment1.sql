CREATE TABLE CUST(
CUST_ID VARCHAR2(3) NOT NULL,
LNAME	VARCHAR2(15),
FNAME	VARCHAR2(15),
AREA    VARCHAR2(2),
PHONE_NO VARCHAR2(8),
PRIMARY KEY(CUST_ID)
);
CREATE TABLE MOVIE(
MY_NO VARCHAR2(2) NOT NULL,
TITLE	VARCHAR2(25),
TYPE	VARCHAR2(10),
STAR    VARCHAR2(25),
PRIMARY KEY(MY_NO)
);
CREATE TABLE INVOICE(
INVC_NO VARCHAR2(3) NOT NULL,
MY_NO	VARCHAR2(2),
CUST_ID	VARCHAR2(3),
ISSUE_DATE DATE,
RETURN_DATE DATE,
PRIMARY KEY(INVC_NO)
);
SELECT*FROM TAB;
DESC CUST;
DESC MOVIE;
DESC INVOICE;
ALTER TABLE INVOICE ADD CONSTRAINT C1 FOREIGN KEY(CUST_ID) REFERENCES CUST(CUST_ID);
ALTER TABLE INVOICE ADD CONSTRAINT C2 FOREIGN KEY(MY_NO) REFERENCES MOVIE(MY_NO);
ALTER TABLE CUST MODIFY (LNAME NOT NULL);
ALTER TABLE CUST MODIFY (FNAME NOT NULL);
ALTER TABLE MOVIE MODIFY (TITLE NOT NULL);
ALTER TABLE MOVIE MODIFY (TYPE NOT NULL);
ALTER TABLE MOVIE ADD PRICE NUMBER(8,2);