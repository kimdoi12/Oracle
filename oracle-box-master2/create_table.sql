CREATE TABLE member (
    id VARCHAR2(10) NOT NULL,
    password VARCHAR2(10) NOT NULL,
    name VARCHAR2(10) NOT NULL,
    gender VARCHAR2(4),
    birth VARCHAR2(10),
    mail VARCHAR2(30),
    phone VARCHAR2(20),
    address VARCHAR2(90),
    regist_day VARCHAR2(50),
    PRIMARY KEY (id)
);