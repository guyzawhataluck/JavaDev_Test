1.)
SELECT bike_name, bike_year 
FROM bike
JOIN brand
ON brand.brand_id = bike.brand_id
WHERE brand_name = 'HONDA'
ORDER BY bike_year;

2.)
SELECT COUNT(bike_id), brand_name
FROM bike
JOIN brand
ON brand.brand_id = bike.brand_id
GROUP BY brand_name;

3.)
SELECT technical.name_th, techinal.name_en, bike_technical.technical_detail
FROM technical
JOIN bike_technical
ON technical.tech_id = bike_technical.technical_id
WHERE bike_technical.bike_id IN (
	SELECT bike.bike_id
	FROM bike
	JOIN brand
	ON brand.brand_id = bike.brand_id
	WHERE brand.brand_name = 'Kawasaki'
	AND bike.bike_name = 'Z 900 ABS Special Edition'
);

4.)
SELECT technical.name_th, techinal.name_en, bike_technical.technical_detail
FROM technical
JOIN bike_technical
ON technical.tech_id = bike_technical.technical_id
WHERE bike_technical.bike_id IN (
	SELECT bike.bike_id
	FROM bike
	JOIN brand
	ON brand.brand_id = bike.brand_id
	WHERE brand.brand_name = 'Honda' 
	AND (bike.bike_name = 'CB650R' OR bike.bike_name = 'CB650F')
);

5.)
Field 'Price' is not 'explicitly' indicated in the database.

6.)
Field 'Price' is not 'explicitly' indicated in the database.