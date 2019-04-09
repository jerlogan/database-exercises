USE codeup_test_db;

-- The name of all albums by Pink Floyd.
-- The year Sgt. Pepper's Lonely Hearts Club Band was released
-- The genre for Thriller
-- Which albums were released in the 1990s
-- Which albums had less than 20 million certified sales
-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?

select record_name from albums where artist = 'Pink Floyd';
select release_year from albums where record_name = 'Sgt. Pepper''s Lonely Hearts Club Band';
select genre from albums where record_name = 'Thriller';
select * from albums where release_year between 1990 and 2000;
select * from albums where sales_in_millions < 20;
select * from albums where genre = 'Rock';

