Bash
# 0. Go to Kafka home
cd ~/kafka_2.13-4.1.1

# 1. Format KRaft storage
rm -rf /tmp/kraft-combined-logs
bin/kafka-storage.sh format -t 5fyL_53mRhaaTCbPX8RQ3g -c config/server.properties

# 2. Start Kafka
bin/kafka-server-start.sh config/server.properties > /tmp/kafka.log 2>&1 &

# 3. Verify listeners
grep "Awaiting socket connections" -n /tmp/kafka.log

# 4. List topics
bin/kafka-topics.sh --bootstrap-server 127.0.0.1:9092 --list

# 5. Create test topic
bin/kafka-topics.sh --bootstrap-server 127.0.0.1:9092 --create --topic uzi-test --partitions 1 --replication-factor 1
