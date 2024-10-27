#!/bin/bash

set -x

echo "Futu OpenD Install Dir: ${OPEND_BIN}"

# Start OpenD
echo "Starting ${OPEND_BIN}..."
exec "${OPEND_BIN}" "$@"
