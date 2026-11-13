# detection-lab

Wazuh + Sigma detections from my home SOC lab, each one tested in the lab against a real attack (Atomic Red Team, Hydra, hand-made test commands).
Built during Sprint-30, a 30-day hands-on security sprint.

| Folder | What's in it |
|---|---|
| `wazuh/` | Agent config snippets; custom rules (`local_rules.xml`) |
| `sigma/` | The same detections as portable Sigma rules |
| `docs/img/` | Screenshots used in the write-ups |
| `lab/` | Lab setup: Windows audit policy, AD lab notes |
| `reports/` | Pentest report PDF (coming) |

- Write-ups: https://braindump.0x8r41nr07.xyz/series/sprint-30
- Lab build guide: https://braindump.0x8r41nr07.xyz/my-infosec-homelab
