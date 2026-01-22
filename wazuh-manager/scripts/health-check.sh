#!/bin/bash
echo "Wazuh health check"
systemctl is-active wazuh-manager
systemctl is-active wazuh-indexer
systemctl is-active wazuh-dashboard
