#!/bin/bash

# 写入main
cat > "/app/modules/main_index/.env" <<EOF
DB_USER=$DB_USER
DB_HOST=$DB_HOST
DB_PORT=$DB_PORT
DB_DATABASE=$DB_DATABASE
DB_PASSWD=$DB_PASSWD
DB_SSL=$DB_SSL
DB_MAX_CONNECTIONS=$DB_MAX_CONNECTIONS
BITCOIN_CHAIN_FOLDER=$BITCOIN_CHAIN_FOLDER
BITCOIN_RPC_USER=$BITCOIN_RPC_USER
BITCOIN_RPC_PASSWD=$BITCOIN_RPC_PASSWD
BITCOIN_RPC_URL=$BITCOIN_RPC_URL
ORD_BINARY=$ORD_BINARY
ORD_FOLDER=$ORD_FOLDER
ORD_DATADIR=$ORD_DATADIR
NETWORK_TYPE="$NETWORK_TYPE"
EOF

echo "Values have been written to main .env"

# 写入brc20
cat > "/app/modules/brc20_index/.env" <<EOF
DB_USER=$DB_USER
DB_HOST=$DB_HOST
DB_PORT=$DB_PORT
DB_DATABASE=$DB_DATABASE
DB_PASSWD=$DB_PASSWD
DB_METAPROTOCOL_USER=$DB_METAPROTOCOL_USER
DB_METAPROTOCOL_HOST=$DB_METAPROTOCOL_HOST
DB_METAPROTOCOL_PORT=$DB_METAPROTOCOL_PORT
DB_METAPROTOCOL_DATABASE=$DB_METAPROTOCOL_DATABASE
DB_METAPROTOCOL_PASSWD=$DB_METAPROTOCOL_PASSWD
NETWORK_TYPE=$NETWORK_TYPE
REPORT_TO_INDEXER=$REPORT_TO_INDEXER
REPORT_URL=$REPORT_URL
REPORT_RETRIES=$REPORT_RETRIES
REPORT_NAME=$REPORT_NAME
CREATE_EXTRA_TABLES=$CREATE_EXTRA_TABLES
EOF

echo "Values have been written to brc20 .env"

# 写入bitmap
cat > "/app/modules/bitmap_index/.env" <<EOF
# .env
DB_USER=$DB_USER
DB_HOST=$DB_HOST
DB_PORT=$DB_PORT
DB_DATABASE=$DB_DATABASE
DB_PASSWD=$DB_PASSWD
DB_METAPROTOCOL_USER=$DB_METAPROTOCOL_USER
DB_METAPROTOCOL_HOST=$DB_METAPROTOCOL_HOST
DB_METAPROTOCOL_PORT=$DB_METAPROTOCOL_PORT
DB_METAPROTOCOL_DATABASE=$DB_METAPROTOCOL_DATABASE
DB_METAPROTOCOL_PASSWD=$DB_METAPROTOCOL_PASSWD
NETWORK_TYPE=$NETWORK_TYPE
REPORT_TO_INDEXER=$REPORT_TO_INDEXER
REPORT_URL=$REPORT_URL
REPORT_RETRIES=$REPORT_RETRIES
REPORT_NAME=$REPORT_NAME
EOF

echo "Values have been written to bitmap .env"

# 写入sns
cat > "/app/modules/sns_index/.env" <<EOF
# .env
DB_USER=$DB_USER
DB_HOST=$DB_HOST
DB_PORT=$DB_PORT
DB_DATABASE=$DB_DATABASE
DB_PASSWD=$DB_PASSWD
DB_METAPROTOCOL_USER=$DB_METAPROTOCOL_USER
DB_METAPROTOCOL_HOST=$DB_METAPROTOCOL_HOST
DB_METAPROTOCOL_PORT=$DB_METAPROTOCOL_PORT
DB_METAPROTOCOL_DATABASE=$DB_METAPROTOCOL_DATABASE
DB_METAPROTOCOL_PASSWD=$DB_METAPROTOCOL_PASSWD
NETWORK_TYPE=$NETWORK_TYPE
REPORT_TO_INDEXER=$REPORT_TO_INDEXER
REPORT_URL=$REPORT_URL
REPORT_RETRIES=$REPORT_RETRIES
REPORT_NAME=$REPORT_NAME
EOF

echo "Values have been written to sns .env"

# 开始执行脚本
echo -e 'y\ny\ny\ny\ny\ny\ny\ny\ny\n' | python3 restore.py