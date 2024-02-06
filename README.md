# Postgres Monitoring with Prometheus and Grafana

This repository contains a docker-compose file to run a PostgreSQL 
database with Keycloak as a backend. The goal is to monitor the 
database using Prometheus and Grafana.

## Overview

To achieve this, we use the following components:

- **Postgres Exporter**: Collects metrics from the database and sends them to the Prometheus server.
- **pg_stat_statements**: A PostgreSQL extension that collects query metrics inside the database.
- **Prometheus**: Stores the metrics collected from the Postgres Exporter.
- **Grafana**: Visualizes the metrics stored in Prometheus.
- **Alertmanager**: Sends alerts to the Slack channel.
- **Mailhog**: SMTP server for testing.

## Requirements
- docker and docker-compose

## Usage
Run the following command to start the services:
```bash
docker compose up
```

## Services 

Service | Description | URL
--- | --- | ---
Postgres Exporter | Collects metrics from the database and sends them to the prometheus server | http://localhost:9187
Keycloak | Identity and Access Management | https://localhost
Prometheus | Stores the metrics | http://localhost:9090
Grafana | Visualizes the metrics | http://localhost:3000
Alertmanager | Sends alerts to the slack channel | http://localhost:9093
Mailhog | SMTP server for testing | http://localhost:8025


# References
* [prometheus postgres expoter repository](https://github.com/prometheus-community/postgres_exporter)
* [Postgres image on docker hub](https://hub.docker.com/_/postgres)
* [pg_stat_statements - postgre documentation](https://www.postgresql.org/docs/current/pgstatstatements.html)
* [postgresql documentation - warm standby](https://www.postgresql.org/docs/16/warm-standby.html)

# Contact
For more information, please contact me at:
* [Website](https://mehrshad.io)
* [LinkedIn](https://www.linkedin.com/in/mehrshad-lotfi)