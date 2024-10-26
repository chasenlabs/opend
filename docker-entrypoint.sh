#!/bin/bash

set -x

echo "Futu OpenD Install Dir: $OPEND_DIR"

BIN="$OPEND_DIR/FutuOpenD"

# Start OpenD
echo "Starting OpenD..."
exec "${BIN}" "$@"
