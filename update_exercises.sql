USE codeup_test_db;

-- After each SELECT add an UPDATE statement to:
--
-- Make all the albums 10 times more popular (sales * 10)
-- Move all the albums before 1980 back to the 1800s.
-- Change 'Michael Jackson' to 'Peter Jackson'
-- Add SELECT statements after each UPDATE so you can see the results of your handiwork

SELECT * from albums;
UPDATE albums
SET sales_in_millions = sales_in_millions * 10;


SELECT * from albums where release_year < 1980;
UPDATE albums
SET release_year = 1883
WHERE release_year < 1980;



select * FROM ALBUMS WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';


