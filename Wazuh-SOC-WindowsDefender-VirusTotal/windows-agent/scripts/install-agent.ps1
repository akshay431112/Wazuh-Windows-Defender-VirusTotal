# Wazuh Agent Installer (Template)
$manager = "WAZUH_MANAGER_IP"
$msiPath = "C:\Temp\wazuh-agent.msi"

Start-Process msiexec.exe -Wait -ArgumentList "/i `"$msiPath`" /qn"

$configPath = "C:\Program Files (x86)\ossec-agent\ossec.conf"
(Get-Content $configPath) -replace "WAZUH_MANAGER_IP", $manager | Set-Content $configPath

Restart-Service wazuh
Write-Host "Done."
