USE codeup_test_db;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'none',
    album_name VARCHAR(50) DEFAULT 'none',
    release_date INT UNSIGNED,
    sales FLOAT UNSIGNED,
    genra VARCHAR(50) DEFAULT 'none',
    PRIMARY KEY (id)
);

