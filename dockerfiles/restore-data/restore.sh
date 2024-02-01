#!/bin/bash

# 写入main
cat <<EOF > "/app/modules/main_index/.env"
# .env file
DB_USER=${DB_USER}
DB_HOST=${DB_HOST}
DB_PORT=${DB_PORT}
DB_DATABASE=${DB_DATABASE}
DB_PASSWD=${DB_PASSWD}
DB_SSL=${DB_SSL}
DB_MAX_CONNECTIONS=${DB_MAX_CONNECTIONS}

BITCOIN_CHAIN_FOLDER=${BITCOIN_CHAIN_FOLDER}
COOKIE_FILE=${COOKIE_FILE}

# leave these empty to use .cookie file
BITCOIN_RPC_USER=${BITCOIN_RPC_USER}
BITCOIN_RPC_PASSWD=${BITCOIN_RPC_PASSWD}
# `--rpc-url` parameter for `ord`, example: `127.0.0.1:8332`
BITCOIN_RPC_URL=${BITCOIN_RPC_URL}

# change to ord.exe on Windows (without ./)
ORD_BINARY=${ORD_BINARY}

# leave default if repository folder structure hasn't been changed
ORD_FOLDER=${ORD_FOLDER}
# relative to ord folder
ORD_DATADIR=${ORD_DATADIR}

NETWORK_TYPE=${NETWORK_TYPE}
EOF

echo "Values have been written to main .env"
cat /app/modules/main_index/.env

# 写入brc20
cat <<EOF > "/app/modules/brc20_index/.env"
# .env
DB_USER=${DB_USER}
DB_HOST=${DB_HOST}
DB_PORT=${DB_PORT}
DB_DATABASE=${DB_DATABASE}
DB_PASSWD=${DB_PASSWD}

## main indexer database settings
DB_METAPROTOCOL_USER=${DB_METAPROTOCOL_USER}
DB_METAPROTOCOL_HOST=${DB_METAPROTOCOL_HOST}
DB_METAPROTOCOL_PORT=${DB_METAPROTOCOL_PORT}
DB_METAPROTOCOL_DATABASE=${DB_METAPROTOCOL_DATABASE}
DB_METAPROTOCOL_PASSWD=${DB_METAPROTOCOL_PASSWD}

NETWORK_TYPE=${NETWORK_TYPE}

## reporting system settings
REPORT_TO_INDEXER=${REPORT_TO_INDEXER}
REPORT_URL=${REPORT_URL}
REPORT_RETRIES=${REPORT_RETRIES}
# set a name for report dashboard
REPORT_NAME=${REPORT_NAME}

# create brc20_current_balances and brc20_unused_tx_inscrs tables
CREATE_EXTRA_TABLES=${CREATE_EXTRA_TABLES}
EOF

echo "Values have been written to main .env"
cat /app/modules/brc20_index/.env

# 写入bitmap
cat <<EOF > "/app/modules/bitmap_index/.env"
# .env
DB_USER=${DB_USER}
DB_HOST=${DB_HOST}
DB_PORT=${DB_PORT}
DB_DATABASE=${DB_DATABASE}
DB_PASSWD=${DB_PASSWD}

DB_METAPROTOCOL_USER=${DB_METAPROTOCOL_USER}
DB_METAPROTOCOL_HOST=${DB_METAPROTOCOL_HOST}
DB_METAPROTOCOL_PORT=${DB_METAPROTOCOL_PORT}
DB_METAPROTOCOL_DATABASE=${DB_METAPROTOCOL_DATABASE}
DB_METAPROTOCOL_PASSWD=${DB_METAPROTOCOL_PASSWD}

NETWORK_TYPE=${NETWORK_TYPE}

## reporting system settings
REPORT_TO_INDEXER=${REPORT_TO_INDEXER}
REPORT_URL=${REPORT_URL}
REPORT_RETRIES=${REPORT_RETRIES}
# set a name for report dashboard
REPORT_NAME=${REPORT_NAME}
EOF

echo "Values have been written to bitmap .env"
cat /app/modules/bitmap_index/.env

# 写入sns
cat <<EOF > "/app/modules/sns_index/.env"
# .env
DB_USER=${DB_USER}
DB_HOST=${DB_HOST}
DB_PORT=${DB_PORT}
DB_DATABASE=${DB_DATABASE}
DB_PASSWD=${DB_PASSWD}

DB_METAPROTOCOL_USER=${DB_METAPROTOCOL_USER}
DB_METAPROTOCOL_HOST=${DB_METAPROTOCOL_HOST}
DB_METAPROTOCOL_PORT=${DB_METAPROTOCOL_PORT}
DB_METAPROTOCOL_DATABASE=${DB_METAPROTOCOL_DATABASE}
DB_METAPROTOCOL_PASSWD=${DB_METAPROTOCOL_PASSWD}

NETWORK_TYPE=${NETWORK_TYPE}

## reporting system settings
REPORT_TO_INDEXER=${REPORT_TO_INDEXER}
REPORT_URL=${REPORT_URL}
REPORT_RETRIES=${REPORT_RETRIES}
# set a name for report dashboard
REPORT_NAME=${REPORT_NAME}
EOF

echo "Values have been written to sns .env"
cat /app/modules/sns_index/.env

# 开始执行脚本
echo -e 'y\ny\ny\ny\ny\ny\ny\ny\ny\n' | python3 restore.py