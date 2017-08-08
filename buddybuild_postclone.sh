#!/usr/bin/env bash

which blah

# Check that pip is installed
which pip 

# Check that system integrity protection is disabled
if csrutil status | grep -q 'enabled'; then
  echo "System Integrity Protection is enabled. Failing..."
  exit 1
fi
