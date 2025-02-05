/*
select * from orders
select CURRENT_DATE; -- bugunun tarihini getirir
select date_part('year',order_date) as yil 
from orders;
-- 1997 yilinda olan siparisleri sorgular
select * from orders
where date_part('year',order_date)=1997;

select * from orders
where date_part('year',order_date)=1997
and date_part('month',order_date)=1; -- 1997 yilinda ocak ayinda olan siparisleri sorgular

select * from orders
where date_part('year',order_date)=1997
and date_part('month',order_date)=1
and ship_country='Germany'; -- 1997 yilinda ocak ayinda almanya ya gonderilen siparisleri sorgular

/*
-- Eger icersinde zaman da varsa EXTRACT fonksiyonu kullanilarak gerekli ayrim yapilabilir.
select TIMESTAMP '2004-10-19 10:23:54'
SELECT EXTRACT(YEAR FROM TIMESTAMP '2001-02-16 20:38:40') Yil; --Yil
SELECT EXTRACT(MONTH FROM TIMESTAMP '2001-02-16 20:38:40') Ay; --Ay
SELECT EXTRACT(DAY FROM TIMESTAMP '2001-02-16 20:38:40') Gun; --Gun
*/
*/
-- 1998 yilinda ocak ayinda Italy ya gonderilen siparisler nelerdir
select * from orders
where date_part('year',order_date)=1998
and date_part('month',order_date)=1
and ship_country='Italy';
-- 1997 yilinda 2 numarali kargo firmasinin tasidigi siparisler nelerdir
select * from orders
where date_part('year',order_date)=1997
and employee_id =2;
-- 1997 yilinda ALFKI customer_id li musteriye yapilan satislar nelerdir
select * from orders
where date_part('year',order_date)=1997
and customer_id ='ALFKI';