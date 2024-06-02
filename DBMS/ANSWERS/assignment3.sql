select  lname, fname from cust;

select fname, area from cust;

select  title, type  from movie;

select 'The Invoice No. of Customer Id. '|| cust_id ||' is '|| INVC_NO || ' and Movie No. is '|| MY_NO from invoice ;


select cust_id||'  has taken Movie No. '|| MY_NO ||' on '|| issue_date ||' and will return on '|| return_date from invoice;


update cust set phone_no='466389' where fname='Pramada';


update invoice set Issue_Date=to_date('24-07-93', 'DD-MM-YY') where cust_id= 'a01';

update movie set price=250.00 where title= 'gone with the wind';


delete from invoice where inv_no=’i08’;

delete from invoice where return_date<’10-jul-93’;


update cust set area =’vs’ where cust_id=’a05’;

update invoice set Return_Date=to_date('16-08-93', 'DD-MM-YY') where inv_no= 'i08';

SELECT FNAME FROM CUST WHERE FNAME LIKE '_A%';

SELECT LNAME FROM CUST WHERE LNAME LIKE 'S%' OR LNAME LIKE 'J%';

SELECT FNAME,LNAME ,AREA FROM CUST WHERE AREA LIKE '_a%';