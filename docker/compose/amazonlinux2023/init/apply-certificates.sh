#!/bin/bash
set -exuo pipefail
echo "Executing [${0}]:"

BASE_DIR=$(dirname "$0")
# Copy all .crt files
for FILE in "$BASE_DIR"/certificates/*.crt; do
    cp -v "$FILE" "/etc/pki/ca-trust/source/anchors/";
done
update-ca-trust
