#!/bin/bash

set -euo errexit

if hash apcaccess; then
  msg="$(apcaccess status -u -p TIMELEFT 2>/dev/null)m $(apcaccess status -u -p BCHARGE 2>/dev/null)%";
  if [ $? -eq 0 ]; then
    echo $msg
  else
    echo ""
  fi
else
  echo ""
fi
