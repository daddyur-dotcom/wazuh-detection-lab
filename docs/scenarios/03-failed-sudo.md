# Scenario 3: Failed Sudo Authentication

## Goal
Detect repeated failed attempts to escalate privileges with `sudo` on the monitored host.

## How it was done
Ran a `sudo` command and entered an incorrect password several times in a row.
See: [`attack-commands/03-failed-sudo.sh`](../../attack-commands/03-failed-sudo.sh)

## What Wazuh detected
A wrong sudo password produces a chain of related log events, which Wazuh correlates into
escalating rules:

| Rule ID | Description |
|---|---|
| 5557 | Sudo: authentication failure |
| 5503 | PAM: user login failed |
| 5404 | Multiple sudo authentication failures |

- **Agent:** debian-lab

## Screenshot
![Failed sudo](../../screenshots/03-failed-sudo.png)

## Notes
This is a good example of Wazuh's rule correlation: individual PAM/sudo log lines are low
severity on their own, but repeated failures within a short time window raise the alert level.
