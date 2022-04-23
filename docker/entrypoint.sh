#!/bin/bash

function log () {
    level=$1
    message=$2
    echo $(date  '+%d-%m-%Y %H:%M:%S') [${level}]  ${message}
}

HIVE_START_CMD="/opt/hive-metastore/bin/start-metastore"

log "INFO" "Starting Hive Metastore service. Command: ${HIVE_START_CMD}"

exec "$HIVE_START_CMD"
