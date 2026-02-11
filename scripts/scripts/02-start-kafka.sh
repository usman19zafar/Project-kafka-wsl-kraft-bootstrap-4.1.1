#!/usr/bin/env bash
set -euo pipefail

KAFKA_HOME="${KAFKA_HOME:-$HOME/kafka_2.13-4.1.1}"
cd "$KAFKA_HOME"

bin/kafka-server-start.sh config/server.properties > /tmp/kafka.log 2>&1 &
echo "Kafka starting; log: /tmp/kafka.log"
