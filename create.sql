CREATE DATABASE test;
-- SHOW DATABASES;
USE test;
DROP TABLE IF EXISTS company;
CREATE TABLE company (
                        id int PRIMARY KEY AUTO_INCREMENT,
                        name varchar(50) NOT NULL CHECK ( length(name) > 2 ),
                        address text,
                        email varchar(50) DEFAULT 'test@test.nu',
                        phone varchar(10),
                        appointment timestamp CHECK ( appointment > '2024-01-01' )
);

INSERT INTO company (name, address, email, phone, appointment)
VALUES ('Lisa', 'Stockholm', 'lisa@example.com', '1234567890', '2024-12-08 08:00:00');


CREATE TABLE person
(
    person_id INT               NOT NULL AUTO_INCREMENT,
    person_name VARCHAR(100)    NOT NULL,
    PRIMARY KEY (person_id)
);

CREATE TABLE orders (
                         order_id INT NOT NULL UNIQUE,
                         order_number INT NOT NULL,
                         person_id INT NOT NULL,
                         PRIMARY KEY (order_id),
                         FOREIGN KEY (person_id) REFERENCES person(person_id)
);
