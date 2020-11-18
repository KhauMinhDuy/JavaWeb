CREATE TABLE role (
    id BIGINT AUTO_INCREMENT NOT NULL,
    name NVARCHAR(255) NOT NULL,
    code VARCHAR(255) NOT NULL,
    createdate TIMESTAMP NULL,
    modifieddate TIMESTAMP NULL,
    createby VARCHAR(255) NULL,
    modifiedby VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE user (
    id BIGINT AUTO_INCREMENT NOT NULL,
    name NVARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    fullname VARCHAR(255) NULL,
    status INT NOT NULL,
    createdate TIMESTAMP NULL,
    modifieddate TIMESTAMP NULL,
    createby VARCHAR(255) NULL,
    modifiedby VARCHAR(255) NULL,
    roleid BIGINT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE news (
    id BIGINT AUTO_INCREMENT NOT NULL,
    title NVARCHAR(255) NOT NULL,
    thumbnail VARCHAR(255) NOT NULL,
    shortdescription TEXT NULL,
    content TEXT NOT NULL,
    createdate TIMESTAMP NULL,
    modifieddate TIMESTAMP NULL,
    createby VARCHAR(255) NULL,
    modifiedby VARCHAR(255) NULL,
    categoryid BIGINT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE category (
    id BIGINT AUTO_INCREMENT NOT NULL,
    name VARCHAR(255),
    code VARCHAR(255),
    createdate TIMESTAMP NULL,
    modifieddate TIMESTAMP NULL,
    createby VARCHAR(255) NULL,
    modifiedby VARCHAR(255) NULL,
    PRIMARY KEY (id)
);

CREATE TABLE comments
(
	id BIGINT AUTO_INCREMENT NOT NULL,
    content TEXT NULL,
    createddate TIMESTAMP NULL,
    modifieddate TIMESTAMP NULL,
    createdby TIMESTAMP NULL,
    modifiedby TIMESTAMP NULL,
    userid BIGINT NOT NULL,
    newid BIGINT NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE user ADD CONSTRAINT fk_userrole_user FOREIGN KEY (roleid) REFERENCES role(id);
ALTER TABLE news ADD CONSTRAINT fk_news_category FOREIGN KEY (categoryid) REFERENCES category(id);
ALTER TABLE comments ADD CONSTRAINT fk_comment_user FOREIGN KEY (userid) REFERENCES user(id);
ALTER TABLE comments ADD CONSTRAINT fk_comment_news FOREIGN KEY (newid) REFERENCES news(id);





