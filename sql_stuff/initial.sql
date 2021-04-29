/*
all sql statements for the db inilisation
creates all tables and the relations between them
*/

CREATE TABLE tbl_contacts (
    contactID INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    phone TEXT NOT NULL UNIQUE
);

INSERT INTO tbl_contacts (first_name, last_name, email, phone)
VALUES ('John', 'Doe', 'john@doe.com', '777')