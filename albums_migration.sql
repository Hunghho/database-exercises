USE codeup_test_db;
    CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) NOT NULL,
    name VARCHAR(100),
    release_date DATE,
    sales FLOAT,
    genre VARCHAR(46),
    PRIMARY KEY (id)
    );