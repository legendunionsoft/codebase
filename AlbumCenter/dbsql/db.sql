CREATE TABLE
    t_album
    (
        id bigint unsigned NOT NULL AUTO_INCREMENT,
        name VARCHAR(100),
        cover_image_url VARCHAR(100),
        inside_front_cover_image_url VARCHAR(100),
        PRIMARY KEY (id)
    )
    ENGINE=InnoDB DEFAULT CHARSET=utf8;