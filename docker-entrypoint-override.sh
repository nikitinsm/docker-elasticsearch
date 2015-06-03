#!/bin/bash
set -e

# Add the admin user
echo "adding admin user..."
esusers useradd $ES_USER -p $ES_PASS -r admin

exec /docker-entrypoint.sh $@
