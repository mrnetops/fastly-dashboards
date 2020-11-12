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
| ![Fastly Service](https://raw.githubusercontent.com/mrnetops/fastly-dashboards/main/images/Fastly-Service.png) | ![Fastly Top Services](https://raw.githubusercontent.com/mrnetops/fastly-dashboards/main/images/Fastly-Top-Services.png) | ![Fastly Top Datacenters](https://raw.githubusercontent.com/mrnetops/fastly-dashboards/main/images/Fastly-Top-Datacenters.png) |

