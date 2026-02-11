Kafka WSL KRaft Bootstrap (4.1.1)
Bringing Apache Kafka 4.1.1 (KRaft combined‑mode) online inside WSL2 — a complete engineering record.

This repository documents the full lifecycle of diagnosing, fixing, and successfully launching a Kafka 4.1.1 KRaft cluster inside WSL2.
It includes:

The final working configuration

All major failure modes

Root‑cause analysis for each failure

Mechanical fixes applied step‑by‑step

Verified startup logs

A clean operational checklist

A minimal command suite for formatting, starting, and validating the cluster

This repo is designed as a legacy‑grade artifact: reproducible, auditable, and technically exact.

```code
+----------------------+---------------------------+
| Component            | Value                     |
+----------------------+---------------------------+
| Host OS              | Windows 11 (WSL2)         |
| Linux Distro         | Ubuntu (WSL2)             |
| Kafka Version        | kafka_2.13-4.1.1          |
| Mode                 | KRaft (combined‑mode)     |
| Controller Listener  | 127.0.0.1:9093            |
| Broker Listener      | 127.0.0.1:9092            |
| Metadata Directory   | /tmp/kraft-combined-logs  |
| Log File             | /tmp/kafka.log            |
+----------------------+---------------------------+
```

```code
kafka-wsl-kraft-4.1.1-bootstrapping/
├─ README.md
├─ docs/
│  ├─ 00-context.md
│  ├─ 01-environment.md
│  ├─ 02-config-evolution.md
│  ├─ 03-failures-and-fixes.md
│  ├─ 04-final-state-and-checklist.md
│  └─ 05-commands-cheatsheet.md
├─ config/
│  └─ server.properties
├─ logs/
│  ├─ kafka-startup-fail-port-9093.log
│  ├─ kafka-startup-fail-missing-meta.log
│  ├─ kafka-startup-success.log
│  └─ grep-awaiting-socket-connections.txt
├─ scripts/
│  ├─ 01-format-storage.sh
│  ├─ 02-start-kafka.sh
│  ├─ 03-list-topics.sh
│  ├─ 04-create-test-topic.sh
│  └─ 99-reset-wsl-note.md
└─ timeline/
   └─ 2026-02-11-bootstrap-session.md
```

