CREATE TABLE
    t_album_basic_info
    (
        id bigint unsigned NOT NULL AUTO_INCREMENT,
        name VARCHAR(100) NOT NULL,
        free CHAR(1) NOT NULL,
        price TINYINT(3) unsigned,
        remark VARCHAR(1000),
        cover_image_url VARCHAR(100),
        cover_image2_url VARCHAR(100),
        PRIMARY KEY (id)
    )
    ENGINE=InnoDB DEFAULT CHARSET=utf8;
    
CREATE TABLE
    t_album_content
    (
        id bigint NOT NULL AUTO_INCREMENT,
        album_id bigint NOT NULL,
        url VARCHAR(100) NOT NULL,
        name VARCHAR(100),
        create_time DATETIME NOT NULL,
        PRIMARY KEY (id)
    )
    ENGINE=InnoDB DEFAULT CHARSET=utf8;
    
CREATE TABLE
    t_image
    (
        id bigint NOT NULL AUTO_INCREMENT,
        file_name VARCHAR(1000) NOT NULL,
        file_size bigint NOT NULL,
        url VARCHAR(100) NOT NULL,
        create_time DATETIME NOT NULL,
        status VARCHAR(5) NOT NULL,
        PRIMARY KEY (id)
    )
    ENGINE=InnoDB DEFAULT CHARSET=utf8;
    
CREATE TABLE
    t_user
    (
        id bigint NOT NULL AUTO_INCREMENT,
        name VARCHAR(100) NOT NULL,
        password VARCHAR(100) NOT NULL,
        create_time DATETIME NOT NULL,
        PRIMARY KEY (id),
        CONSTRAINT t_user_name_index UNIQUE (name)
    )
    ENGINE=InnoDB DEFAULT CHARSET=utf8;