#!/usr/bin/env bash

# Check that pip is installed
which pip || { echo 'pip not installed, failing...'; exit 1; }  

# Check that system integrity protection is disabled
if csrutil status | grep -q 'enabled'; then
  echo "System Integrity Protection is enabled, failing..."
  exit 1
fi
