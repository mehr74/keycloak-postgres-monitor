# Postgres monitoring with prometheus and grafana
This repository contains a docker-compose file to run a postgres database, 
a prometheus server, a grafana server and a postgres exporter. The exporter 
is used to collect metrics from the database and send them to the prometheus 
server. The prometheus server is used to store the metrics and the grafana 
server is used to visualize the metrics.

## Requirements
- docker and docker-compose

## Usage
Run the following command to start the services:
```bash
docker-compose up
```

## Services 

Service | Description | URL
--- | --- | ---
Postgres | Database | postgres://postgres:xxxxxxxx@xxxxxxxxx:5432/postgres
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