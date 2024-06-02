select sqrt(price) from movie;

select count(cust_id) from cust;

select sum(price) from movie;

select avg(price) from movie;

select max(price) "MAX_PRICE",min(price) "MIN_PRICE" from movie;

select count(mv_no) from movie where price>=150;

select type,avg(price) from movie group by type;

select type,count(type) from movie group by type;

select type,count(type) from movie group by type having type in('comedy','thriller');

select type,avg(price) from movie where price<=150 group by type;

select type,avg(price) from movie where price>=150 group by type having type in ('comedy','thriller');

select inv_no,issue_date from invoice;

select to_char(return_date,'dd-month-yy')from invoice;

select to_char(issue_date+15,'dd-month-yy')from invoice;

select sysdate-return_date from invoice;