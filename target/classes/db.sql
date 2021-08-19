use my_db_test;

CREATE TABLE users
(
    id    int         NOT NULL AUTO_INCREMENT,
    firstName       VARCHAR(50) NOT NULL,
    lastName    VARCHAR(50) NOT NULL,
    password   VARCHAR(255),
    age    int         NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE roles
(
    id      int         NOT NULL AUTO_INCREMENT,
    role    VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE user_roles
(
    user_id INT NOT NULL,
    role_id INT NOT NULL,
    PRIMARY KEY (user_id, role_id),
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO users (firstName, lastName, age, password) VALUES ('Admin', 'qwerty',25, 'admin');
INSERT INTO users (firstName, lastName, age, password) VALUES ('User1', 'User1',29, 'user1');
INSERT INTO users (firstName, lastName, age, password) VALUES ('User2', 'User2',34, 'user2');

INSERT INTO roles (role) VALUES ('ROLE_ADMIN');
INSERT INTO roles (role) VALUES ('ROLE_USER');

INSERT INTO user_roles (user_id, role_id) VALUES (1,1);
INSERT INTO user_roles (user_id, role_id) VALUES (1,2);
INSERT INTO user_roles (user_id, role_id) VALUES (2,1);
INSERT INTO user_roles (user_id, role_id) VALUES (3,1);

INSERT INTO roles (role) VALUES ('ROLE_SUPER-USER');
INSERT INTO roles (role) VALUES ('ROLE_SUPER-ADMIN');