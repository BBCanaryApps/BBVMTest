#!/usr/bin/env bash

# Check that system integrity protection is disabled
if csrutil status | grep -q 'enabled'; then
  exit 1
fi

