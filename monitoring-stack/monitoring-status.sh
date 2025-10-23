#!/bin/bash

echo "== Checking for container updates =="
echo "Checked at: $(date '+%Y-%m-%d %H:%M:%S')"
docker images | grep -E "prometheus|grafana"
echo ""

echo "== Monitoring stack status=="
echo ""

# checking if prom is running

if docker ps | grep -q prometheus; then
  echo "✅ Prometheus: Running"
else
  echo "❌ Prometheus: NOT Running"
fi

# Checking if Grafana is running

if docker ps | grep -q grafana; then
  echo "✅ Grafana: Running"
else
  echo "❌ Grafana: NOT Running"
fi

echo ""
echo "== Access URL's =="
echo "Prometheus: http://192.168.0.246:9090"
echo "Grafana: http://192.168.0.246:3000"