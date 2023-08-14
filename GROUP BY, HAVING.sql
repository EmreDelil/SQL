-- 1- Film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
-- 2- Film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan
-- replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
-- 3- Customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir?
-- 4- city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı
-- barındıran country_id bilgisini ve şehir sayısını paylaşınız.

SELECT rating, COUNT(*) FROM film
GROUP BY rating;

SELECT replacement_cost, COUNT(*) FROM film
GROUP BY replacement_cost
HAVING COUNT(replacement_cost) > 50;

SELECT store_id, COUNT(*) FROM customer
GROUP BY store_id;

SELECT country_id, COUNT(*) FROM city
GROUP BY country_id
ORDER BY COUNT(country_id) DESC;