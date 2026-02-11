#!/usr/bin/env bash
set -euo pipefail

KAFKA_HOME="${KAFKA_HOME:-$HOME/kafka_2.13-4.1.1}"
cd "$KAFKA_HOME"

rm -rf /tmp/kraft-combined-logs

bin/kafka-storage.sh format \
  -t 5fyL_53mRhaaTCbPX8RQ3g \
  -c config/server.properties
