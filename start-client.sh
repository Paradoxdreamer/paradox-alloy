#!/bin/bash
# Paradox Alloy - start Spiver client

if command -v sliver >/dev/null 2>&1; then
  sliver
elif [ -f "$HOME/go/bin/sliver" ]; then
  "$HOME/go/bin/sliver"
else
  echo "[-] sliver client not found. Run install script first."
  exit 1
fi
