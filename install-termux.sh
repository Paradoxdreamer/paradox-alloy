#!/data/data/com.termux/files/usr/bin/bash
# Paradox Alloy - Termux installer (Sliver)
set -e

echo "[*] Paradox Alloy - Termux installer"

pkg update -y
pkg install -y golang git

echo "[*] Installing Sliver via go install..."
go install github.com/BishopFox/sliver@latest

# Ensure PATH
if ! grep -q 'go/bin' ~/.bashrc 2>/dev/null; then
  echo 'export PATH=$PATH:~/go/bin' >> ~/.bashrc
fi

echo ""
echo "[+] Done."
echo "    Restart termux or run: source ~/.bashrc"
echo "    Then:"
echo "      sliver-server     # start the multiplayer server"
echo "      sliver            # connect client"
