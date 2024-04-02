CREATE TABLE dummy_table (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

INSERT INTO dummy_table (name) VALUES ('Dummy 1');
INSERT INTO dummy_table (name) VALUES ('Dummy 2');
INSERT INTO dummy_table (name) VALUES ('Dummy 3');