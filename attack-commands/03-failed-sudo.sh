#!/bin/bash
# Failed sudo authentication
# Triggers Wazuh rule chain 5557 -> 5503 -> 5404
# Enter a wrong password 3 times when prompted

sudo whoami
