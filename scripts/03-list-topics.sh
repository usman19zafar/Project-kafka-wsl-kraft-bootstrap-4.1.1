#!/usr/bin/env bash
set -euo pipefail

KAFKA_HOME="${KAFKA_HOME:-$HOME/kafka_2.13-4.1.1}"
cd "$KAFKA_HOME"

bin/kafka-topics.sh --bootstrap-server 127.0.0.1:9092 --list
