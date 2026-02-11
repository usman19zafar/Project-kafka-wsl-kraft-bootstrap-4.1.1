Short checklist:

[x] config/server.properties uses combined‑mode KRaft.

[x] log.dirs=/tmp/kraft-combined-logs.

[x] kafka-storage.sh format shows “Formatting metadata directory …”.

[x] /tmp/kafka.log contains both:

Awaiting socket connections on 127.0.0.1:9093.

Awaiting socket connections on 127.0.0.1:9092.

[x] Created topic uzi-test. appears.

[x] bin/kafka-topics.sh --bootstrap-server 127.0.0.1:9092 --list shows uzi-test.
