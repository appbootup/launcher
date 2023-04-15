#!/bin/bash
kafka-topics \
  --bootstrap-server ${BROKER_DNS}:${BROKER_PORT} \
  --create --if-not-exists \
  --topic ${MACHINE_ID}_data   \
  --replication-factor ${REPLICATION_FACTOR} \
  --partitions ${PARTITION_COUNT}
kafka-topics \
  --bootstrap-server ${BROKER_DNS}:${BROKER_PORT} \
  --create --if-not-exists \
  --topic ${MACHINE_ID}_limits   \
  --replication-factor ${REPLICATION_FACTOR} \
  --partitions ${PARTITION_COUNT}
kafka-topics \
  --bootstrap-server ${BROKER_DNS}:${BROKER_PORT} \
  --create --if-not-exists \
  --topic ${MACHINE_ID}_alarms   \
  --replication-factor ${REPLICATION_FACTOR} \
  --partitions ${PARTITION_COUNT}  
kafka-topics \
  --bootstrap-server ${BROKER_DNS}:${BROKER_PORT} \
  --create --if-not-exists \
  --topic ${MACHINE_ID}_alerts   \
  --replication-factor ${REPLICATION_FACTOR} \
  --partitions ${PARTITION_COUNT}
kafka-topics \
  --bootstrap-server ${BROKER_DNS}:${BROKER_PORT} \
  --create --if-not-exists \
  --topic ${MACHINE_ID}_events   \
  --replication-factor ${REPLICATION_FACTOR} \
  --partitions ${PARTITION_COUNT}