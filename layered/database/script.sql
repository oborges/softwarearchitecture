CREATE DATABASE mydb;

\c mydb;

CREATE TABLE users (
    id        SERIAL        PRIMARY KEY,
    name      VARCHAR(100)  NOT NULL,
    age       INT           NOT NULL
);



