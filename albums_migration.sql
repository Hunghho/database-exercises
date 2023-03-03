USE codeup_test_db;

    drop table albums;

    CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(128) NOT NULL,
    name VARCHAR(128),
    release_date SMALLINT UNSIGNED,
    sales FLOAT,
    genre VARCHAR(128),
    PRIMARY KEY (id)
    );