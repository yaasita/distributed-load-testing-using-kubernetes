#!/bin/bash
set -eu

cd /locust-tasks

if [[ "$LOCUST_MODE" = "master" ]]; then
    locust --master
elif [[ "$LOCUST_MODE" = "worker" ]]; then
    locust --worker --master-host=$LOCUST_MASTER
fi
