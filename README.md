# fastly-dashboards

## All singing, all dancing Fastly dashboards!

[mrnetops/fastly-dashboards][fastly-dashboards] contains a [Docker Compose][compose] setup,
which boots up a full [fastly-exporter][fastly-exporter] + [Prometheus][prom] + 
[Grafana][grafana] + [Fastly][fastly] dashboard stack.

[fastly-dashboards]: https://github.com/mrnetops/fastly-dashboards
[compose]: https://github.com/docker/compose
[fastly-exporter]: https://github.com/peterbourgon/fastly-exporter
[fastly]: https://www.fastly.com
[prom]: https://prometheus.io
[grafana]: https://grafana.com

## Fastly Altitude 2020 presentation

### [Magic tricks with Docker (or how to monitor Fastly in about five minutes)][altitude-2020-video]

[![Magic tricks with Docker (or how to monitor Fastly in about five minutes)](/images/Fastly-Altitude-2020.jpeg)][altitude-2020-video]

[altitude-2020-video]: https://vimeo.com/480545143

## Getting started

```
export FASTLY_API_TOKEN=$MY_TOKEN 

git clone https://github.com/mrnetops/fastly-dashboards.git
cd fastly-dashboards
```

### Running with docker 

Prerequisites
* docker

```
docker compose up
```

### Running with docker-compose

Prerequisites
* docker
* docker-compose > 1.29

```
docker-compose up
```

### Running with containerd & nerdctl

Note: we have to work around nerdctl not supporting
* environmental variable interpolation from the parent environment
* depends_on: service_completed_successfully

```
env > .env
nerdctl run envsubst
nerdctl compose up
```

Access the Grafana dashboard at http://localhost:3000.

| Fastly Service | Fastly Top Services | Fastly Top Datacenters |
| ---------------|---------------------|------------------------|
| ![Fastly Service](https://raw.githubusercontent.com/mrnetops/fastly-dashboards/main/images/Fastly-Service.png) | ![Fastly Top Services](https://raw.githubusercontent.com/mrnetops/fastly-dashboards/main/images/Fastly-Top-Services.png) | ![Fastly Top Datacenters](https://raw.githubusercontent.com/mrnetops/fastly-dashboards/main/images/Fastly-Top-Datacenters.png) |

## Troubleshooting

### Graphs are broken and my system is dying!

It can be a wee bit intensive to drink from the Fastly metric firehose, especially if you have a lot of services.

Try adding this when running to only harvest stats for 1/10th of yer services

```
export FASTLY_EXPORTER_OPTIONS="-service-shard 1/10"
```
