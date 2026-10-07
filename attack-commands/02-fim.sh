#!/bin/bash
# File Integrity Monitoring test
# Triggers Wazuh rules 554 (added), 550 (modified), 553 (deleted)
# Monitored directory: /home/daddyur/fim-test

# Create a file (rule 554)
echo "test file" > /home/daddyur/fim-test/testfile.txt

# Modify the file (rule 550)
echo "modified content" >> /home/daddyur/fim-test/testfile.txt

# Delete the file (rule 553)
rm /home/daddyur/fim-test/testfile.txt
