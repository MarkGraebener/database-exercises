USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'none',
    album_name VARCHAR(50) DEFAULT 'none',
    release_date INT UNSIGNED,
    genre VARCHAR(50) DEFAULT 'none',
    sales FLOAT UNSIGNED,
    PRIMARY KEY (id)
);


