#!/bin/sh

MONGO_HOST=${MONGO_HOST:-localhost}
MONGO_PORT=${MONGO_PORT:-27017}
MONGO_DB=${MONGO_DB:-countly}

DIR=/opt/countly

# Replace configurations with environment variables
sed -e "s/mongo_host/$MONGO_HOST/g;s/mongo_port/$MONGO_PORT/g;s/mongo_db/$MONGO_DB/g" _config.api.js > $DIR/api/config.js
sed -e "s/mongo_host/$MONGO_HOST/g;s/mongo_port/$MONGO_PORT/g;s/mongo_db/$MONGO_DB/g" _config.frontend.js > $DIR/frontend/express/config.js

# Init image
/sbin/my_init