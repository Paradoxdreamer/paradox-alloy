#!/bin/bash
# Paradox Alloy - start Sliver server

if command -v sliver-server >/dev/null 2>&1; then
  sliver-server
elif [ -f "$HOME/go/bin/sliver-server" ]; then
  "$HOME/go/bin/sliver-server"
else
  echo "[-] sliver-server not found. Run install-linux.sh or install-termux.sh first."
  exit 1
fi
