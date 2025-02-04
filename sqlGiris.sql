-- yorum satiri
--Aciklama veritabaninda ki tablolari sorgulamak icin Select komutu kullanilir. 
--Select * from tabloAdi; komutu ile tabloAdi tablosundaki tum verileri sorgulayabiliriz.
SELECT * from customers; -- Musterileri sorgular
select * from categories; -- categorileri sorgular
SELECT * from shippers; -- kargo firmalarini sorgular
-- * ifadesi tum sutunlari getirir. Eger sadece belirli sutunlari getirmek istiyorsak
-- Select sutunAdi1, sutunAdi2 from tabloAdi; seklinde kullanabiliriz.
select company_Name,contact_name ,city , country , phone from customers; -- Musteri adi ve sehir sutunlarini sorgular
-- tablodaki belirli sayidaki kaydi getirme 
select company_Name,contact_name ,city , country , phone 
from customers
limit 10 ; -- ilk 10 kaydi getirir
 -- Musteri adi ve sehir sutunlarini sorgular


-- Tablodaki verileri sorgularken 
-- where komutu kullanilir.

select * from customers 
where city='London'; -- Londra da olan musterileri sorgular
-- Birden fazla alana gore sorgulama yaparsak and operatorunu kullanmaliyiz
SELECT * from products 
where unit_price > 20 
and discontinued=1
and category_id=6; --istedigimz kadar and operatur ile sorgulama yapabiliriz
-- or operatoru ile sorgulama yapmak istersek
SELECT * from products 
where (unit_price > 20
and discontinued=0)
or category_id=4; -- unit_price i 20 den buyuk ve discontinued i 0 olan veya category_id si 4 olan urunleri sorgular

-- like kullanimi 
-- where sartindan sonra genelde string ifadelere verilir. % operatoru ile kullanilir.
select * from products 
where product_name ilike  'a%'; -- a ile baslayan urunler 
select * from products 
where product_name ilike  '%a'; -- a ile biten urunler
select * from products 
where product_name ilike  '%a%'; -- a iceren urunler

select * from products 
where product_name ilike  '%ab%'; -- ab iceren urunler

select * from products 
where product_name ilike  '%a%'  or product_name ilike '%b%'; -- a yada b iceren urunler

select * from products 
where product_name ilike  '%a%'  and product_name ilike '%b%'; -- a  b iceren urunler

--siralamak icin ordey by kullanilir. Where sartindan sonra yazilmasi gerekir.
select * from products 
where product_name ilike  '%a%'  and product_name ilike '%b%'
order by product_name; -- a ve  b iceren urunleri siralar

select * from products 
where product_name ilike  '%a%'  and product_name ilike '%b%'
order by product_name,unit_price desc; -- a ve  b iceren urunleri siralar

SELECT * from Customers
where company_Name ilike 'b%' -- a ile baslayan sirketleri sorgular
ORDER by company_Name,city ; -- Musterileri sirket adina gore sonra city ' gore siralar