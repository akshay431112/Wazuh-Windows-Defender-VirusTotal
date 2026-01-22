# Enable Defender Operational log collection (Template)
# Wazuh reads eventchannel logs, ensure Defender logs are enabled.

wevtutil sl "Microsoft-Windows-Windows Defender/Operational" /e:true
Write-Host "Defender Operational log enabled."
