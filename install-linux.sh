#!/bin/bash
# Paradox Alloy - Linux installer (Sliver)
set -e

echo "[*] Paradox Alloy installer (Linux)"

# Prefer official installer if available
if command -v curl >/dev/null 2>&1; then
  echo "[*] Trying official Sliver install script..."
  curl -s https://sliver.sh/install | sudo bash && {
    echo "[+] Official installer finished"
    exit 0
  }
fi

echo "[*] Falling back to Go install..."
sudo apt update
sudo apt install -y golang-go git build-essential

go install github.com/BishopFox/sliver@latest

echo ""
echo "[+] Done. Make sure ~/go/bin is in your PATH"
echo "    export PATH=\$PATH:~/go/bin"
echo ""
echo "    Start server:  sliver-server"
echo "    Start client:  sliver"
