CREATE ROLE postgres_exporter WITH LOGIN PASSWORD 'password';
CREATE EXTENSION pg_stat_statements;

GRANT pg_monitor to postgres_exporter;

CREATE SCHEMA IF NOT EXISTS postgres_exporter;
GRANT USAGE ON SCHEMA postgres_exporter TO postgres_exporter;