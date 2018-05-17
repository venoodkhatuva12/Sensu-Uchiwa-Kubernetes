#!/bin/bash
export RABBITMQ_URL="amqp://sensu:sensu@rabbitmq:5672/%2Fsensu#'/'"
export REDIS_URL="redis://redis:6379/0"
/opt/sensu/bin/sensu-client -d /etc/sensu/conf.d -e /etc/sensu/extensions
