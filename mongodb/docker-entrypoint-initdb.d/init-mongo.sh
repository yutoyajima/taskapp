#!/bin/bash
set -e

mongosh <<EOF
use admin
db.auth("$MONGO_INITDB_ROOT_USERNAME", "$MONGO_INITDB_ROOT_PASSWORD")
db.createUser({
    user: "$MONGO_APP_USERNAME",
    pwd: "$MONGO_APP_PASSWORD",
    roles: [
        {
            role: "readWrite",
            db: "app"
        }
    ]
});
exit
EOF