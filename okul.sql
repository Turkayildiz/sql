--Bir tabloya yeni kayit ekelemek icin insert komutu kullanilir. 
--insert into <tabloAdi> (kolonl, kolon2,...) values (valuel, value2,....) 
insert into ogrenciler (ad, soyad) values ('ali', 'yilmaz'); 
select * from ogrenciler o; 

insert into ogrenciler (ad, soyad, tc, cinsiyet) values ('ayse','kaya','12312312113',TRUE);
select * from ogrenciler o ;

insert into ogrenciler (ad, soyad, tc, cinsiyet,dogumtarihi) values ('kemal','kaya','12512231236',FALSE, DATE'2000-01-01');
select * from ogrenciler o ;

-- Kayitlari guncellemek icin Update ifadesi kullanilir. 
--Mutlaka where sartinin verilmesi lazim. Yoksa butun tablo update olur 
--alinin te no'sunu degistirme 
update ogrenciler set tc='12312332132' where ad = 'ali'; 
select * from ogrenciler o;

-- fatmanin gsm numarasini guncelleme 
update ogrenciler set gsm-'555 444 33 33' where ad = 'fatma'; 
select * from ogrenciler o