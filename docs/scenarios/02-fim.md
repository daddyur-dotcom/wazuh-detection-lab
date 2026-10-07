# Scenario 2: File Integrity Monitoring (FIM)

## Goal
Detect unauthorized or unexpected changes to files in a monitored directory.

## How it was done
Created, modified, and then deleted a test file inside a directory watched by Wazuh's
`syscheck` module (`/home/daddyur/fim-test`).
See: [`attack-commands/02-fim.sh`](../../attack-commands/02-fim.sh)

## Agent configuration
```xml
<directories realtime="yes" check_all="yes" report_changes="yes">/home/daddyur/fim-test</directories>
```

## What Wazuh detected
Each file operation generated a separate FIM alert:

| Action | Rule ID | Description |
|---|---|---|
| File created | 554 | File added to the system |
| File modified | 550 | File changed |
| File deleted | 553 | File deleted |

- **Agent:** debian-lab

## Screenshot
![FIM](../../screenshots/02-fim.png)

## Notes
`realtime="yes"` makes Wazuh detect changes almost immediately instead of waiting for the
next scheduled syscheck scan.
