#!/bin/bash
TS=$(date +%F_%H%M%S)
mkdir -p /var/backups/wazuh
tar -czf /var/backups/wazuh/wazuh-config-$TS.tar.gz /var/ossec/etc 2>/dev/null
echo "Backup created: /var/backups/wazuh/wazuh-config-$TS.tar.gz"
