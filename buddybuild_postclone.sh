#!/usr/bin/env bash

# Check that system integrity protection is disabled
if csrutil status | grep -q 'enabled'; then
  csrutil status
  exit 1
fi
