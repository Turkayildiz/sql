--1- ulkesi ingiltere olan musterilerin listesi (customers)
SELECT * FROM customers WHERE country = 'UK';

--2- Almanyaya gonderilen siparislerin listesi (orders)
SELECT * FROM orders WHERE ship_country = 'Germany';

--3- categori_id'si 2 olan urunlerin fiyati 20$ dan buyuk olan larin lis
SELECT * FROM products WHERE category_id = 2 AND unit_price > 20;

--4- Italyadan mal aldigim tedarikciler hangileridir. (Suppliers)
SELECT * FROM suppliers WHERE country = 'Italy';