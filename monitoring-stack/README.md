# SRE Learning Journey

My path from Junior to Intermediate SRE.

## Monitoring Stack

**Components:**
- Prometheus (metrics collection)
- Grafana (visualization)
- Node Exporter (system metrics)

**Deployed on:** Raspberry Pi 3

**Skills practiced:**
- Docker Compose
- Observability
- Bash scripting
- System monitoring

## Setup
```bash
docker-compose up -d
```

## Monitoring

Check stack status:
```bash
./monitoring_status.sh
```

Access dashboards:
- Prometheus: http://localhost:9090
- Grafana: http://localhost:3000
