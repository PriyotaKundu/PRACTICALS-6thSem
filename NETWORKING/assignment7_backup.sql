1.Create a view with custno, fname, lname of cust table. 
create view v1 as select cust_id,fname,lname from cust;
select * from v1;

2.Retrieve all customers name from cust table 
select fname,lname from v1;

3.Create another view for those customers who have been issued movies.
create view v2 as select fname,lname  from cust where cust_id in (select cust_id from invoice);
select * from v2;

4.Create a table with two columns odd number, even number to store odd and even numbers between 1 to 100.
create table oe(odd_no number(4), even_no number(4));
desc oddeven;

5.Generate odd and even numbers using sequences. 
create sequence odd start with 1 increment by 2 maxvalue 100;
create sequence even start with 2 increment by 2 maxvalue 100; 
insert into oe values(odd.nextval,even.nextval);
select * from oe;

6.Create a sequence for the column mv_no of movie table to generate movie no with initial value 10, maximum value 100 and incremented by 1. 
create sequence s3 start with 10 increment by 1 maxvalue 100;

7.Generate mv_no with sequence above in movie table. 
insert into movie values (s3.nextval,'Superman','action','christopher reeve',150);

8.Create an index on price column of movie table and retrieve the indexed data. 
create index i1 on movie (price);
show index from movie;