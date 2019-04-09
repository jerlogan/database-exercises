USE codeup_test_db;

DELETE from albums where release_year > 1991;
DELETE from albums where genre = 'disco';
DELETE from albums where artist = 'Justin Bieber';

