USE codeup_test_db;

select name 'These are all the albums by Pink Floyd from this table.' from albums where artist='Pink Floyd';

select release_date "This is the year the album 'Sgt. Pepper's Lonely Hearts Club Band' was released." from albums where name='Sgt. Peppers Lonely Hearts Club Band';

select genre "This is the genre of the album 'Nevermind'." from albums where name='Nevermind';

select name "These are the albums that were released in the 1990's.", release_date "Year" from albums where release_date BETWEEN 1990 AND 1999;

select name "These are the albums that had less than 20 million certified sales." from albums where sales < 20000000;

select name "These are the albums that are in the genre 'Rock'." from albums where genre='Rock';