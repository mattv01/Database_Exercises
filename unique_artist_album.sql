USE codeup_test_db;

ALTER TABLE albums
ADD UNIQUE (name, artist);