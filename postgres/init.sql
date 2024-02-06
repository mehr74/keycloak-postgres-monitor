CREATE EXTENSION pg_stat_statements;
CREATE DATABASE test;
CREATE TABLE test_table (id serial PRIMARY KEY, name text);
INSERT INTO test_table (name) VALUES ('mehrshad');
INSERT INTO test_table (name) VALUES ('masoud');
INSERT INTO test_table (name) VALUES ('mobina');