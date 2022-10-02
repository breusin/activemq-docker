#!/bin/bash

echo "Starting ActiveMQ"

/opt/activemq/bin/activemq start

tail -f /dev/null
