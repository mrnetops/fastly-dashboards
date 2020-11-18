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

## Getting started

```
env FASTLY_API_TOKEN=$MY_TOKEN docker-compose up
```

Access the Grafana dashboard at http://localhost:3000.

| Fastly Service | Fastly Top Services | Fastly Top Datacenters |
| ---------------|---------------------|------------------------|
| ![Fastly Service](/images/Fastly-Service.png) | ![Fastly Top Services](/images/Fastly-Top-Services.png) | ![Fastly Top Datacenters](/images/Fastly-Top-Datacenters.png) |

## Fastly Altitude 2020 presentation

### [Magic tricks with Docker (or how to monitor Fastly in about five minutes)][altitude-2020-video]

[![Magic tricks with Docker (or how to monitor Fastly in about five minutes)](/images/Fastly-Altitude-2020.jpeg)][altitude-2020-video]

[altitude-2020-video]: https://vimeo.com/480545143
