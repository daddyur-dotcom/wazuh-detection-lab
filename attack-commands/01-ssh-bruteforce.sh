#!/bin/bash
# SSH brute-force attack simulation
# Triggers Wazuh rule 5712 (sshd: brute force trying to get access to the system)

hydra -l daddyur -P passwords.txt ssh://127.0.0.1 -t 4
