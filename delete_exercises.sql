USE codeup_test_db;

select name "Albums released after 1991", release_date "Year" from albums where release_date > 1991;
select name "Albums with the genre 'disco'" from albums where genre = 'disco';
select name "Albums by Whitney Houston" from albums where artist LIKE '%Whitney Houston%';

delete from albums where release_date > 1991;
delete from albums where genre = 'disco';
delete from albums where artist LIKE '%Whitney Houston%';