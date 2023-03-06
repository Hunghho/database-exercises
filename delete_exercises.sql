USE codeup_test_db;

-- First:
SELECT * FROM albums WHERE release_date > 1991;
-- Convert to:
DELETE FROM albums WHERE release_date > 1991;

SELECT * FROM albums;

-- First:
SELECT * FROM albums WHERE genre = "disco";
-- Covert to:
DELETE FROM albums WHERE genre = "disco";

SELECT * FROM albums;

-- First:
SELECT * FROM albums WHERE artist = "Pink Floyd";
-- Convert to:
DELETE FROM albums WHERE artist = "Pink Floyd";

SELECT * FROM albums;