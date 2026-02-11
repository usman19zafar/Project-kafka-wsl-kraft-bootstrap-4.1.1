Bullet list, each with symptom → cause → fix:

Symptom: Socket server failed to bind to 0.0.0.0:9093: Address already in use.  
Cause: ghost port / WSL networking + hostname resolution.
Fix: pin to 127.0.0.1, then wsl --shutdown.

Symptom: No readable meta.properties files found.  
Cause: KRaft directory not formatted or wiped.
Fix: rm -rf /tmp/kraft-combined-logs + kafka-storage.sh format.

Symptom: bin/kafka-topics.sh: No such file or directory  
Cause: running from ~ instead of Kafka directory.
Fix: cd ~/kafka_2.13-4.1.1.

Symptom: topics list prints nothing, no errors.
Cause: cluster healthy but no topics.
Fix: create uzi-test and re‑list.
