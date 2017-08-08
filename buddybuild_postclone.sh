#!/usr/bin/env bash

# Check that system integrity protection is disabled
if csrutil status | grep -q 'enabled'; then
  echo "System Integrity Protection is enabled. Failing..."
  exit 1
fi
