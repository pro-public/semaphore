#!/bin/bash
init_semaphore_config() {
    if [ -f /data/semaphore_config.json ]
    then
        echo "already initialized"
    else
        echo "Initializing semaphore"
}

if [ -f /data/semaphore_config.sh ]
then
    . /data/semaphore_config.sh
    test_db_connect
    init_semaphore_config
fi

# run our command
exec "$@"
