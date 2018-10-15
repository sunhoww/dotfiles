#!/bin/bash

set -eu

if hash apcaccess; then
  echo "$(apcaccess status -u -p TIMELEFT)m $(apcaccess status -u -p BCHARGE)%"
else
  echo ""
fi
