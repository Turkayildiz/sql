select * from Products limit 2;
select * from categories limit 2; 
select * from suppliers limit 10;

-- inner join iki kumenin kesisimini alir
select p.product_name,c.category_name 
from products p
join categories c on p.category_id=c.category_id;

-- bir sorguda birden fazla inner join kullanilarak verileri birlestirebiliriz
select * from Products limit 2;
select * from categories limit 2; 
select * from suppliers limit 10;

select p.product_name,c.category_name ,s.company_name
from products p
join categories c on p.category_id=c.category_id
join suppliers s on p.supplier_id=s.supplier_id;

-- Ornekler : Order tablosundaki kayitlardan ilk 5 kayda bakalim
--Buradaki customer_id yerine customer tablosundaki compnay_name alanini getirelim
SELECT * from orders limit 5;
select * from customers;

-- cozüm 
select o.order_id,c.company_name ,o.order_date,o.ship_country,c.country
from orders o 
join customers c on o.customer_id=c.customer_id

-- soru order tablosunda employee_id yerine employees tablosundan first_name alalim
select o.order_id,c.company_name ,o.order_date,o.ship_country,c.country
from orders o 
join customers c on o.customer_id=c.customer_id

select * 
from orders limit 5; 
select customer_id,company_name from customers where customer_id='VINET';
select employee_id,first_name,last_name from employees where employee_id=5;

-- yukaridaki sorguda gelecek olan kolonlari nasilki aralarina virgul koyarak yaziyorsak
-- sorgulanacak tablolarida aralarinda virgul olacak sekilde ifade edeblirz. Bu iki tabloyu birlestir
-- Daha eski tip sorgu modeli
select o.order_id,c.company_name ,o.order_date , e.first_name,e.last_name 
from orders o, customers c,employees e
where o.customer_id=c.customer_id 
and o.employee_id=e.employee_id;


-- Daha modern olan tipi
select o.order_id,c.company_name ,o.order_date , e.first_name,e.last_name 
from orders o
join customers c on o.customer_id=c.customer_id
join employees e on o.employee_id=e.employee_id

select * from orders limit 5;
select * from employees;
select * from customers ;





