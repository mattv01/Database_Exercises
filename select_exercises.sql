USE codeup_test_db;

SELECT 'These are all the albums by Pink Floyd from this table.' AS 'Info';
select name from albums where artist='Pink Floyd';

SELECT "This is the year the album Sgt. Pepper's Lonely Hearts Club Band was released." AS 'Info';
select release_date from albums where name='Sgt. Peppers Lonely Hearts Club Band';

SELECT "This is the genre of the album 'Nevermind'." AS 'Info';
select genre from albums where name='Nevermind';

SELECT "These are the albums that were released in the 1990's." AS 'Info';
select name from albums where release_date BETWEEN 1990 AND 1999;

SELECT "These are the albums that had less than 20 million certified sales." AS 'Info';
select name from albums where sales < 20000000;

SELECT "These are the albums that are in the genre 'Rock'." AS 'Info';
select name from albums where genre='Rock';