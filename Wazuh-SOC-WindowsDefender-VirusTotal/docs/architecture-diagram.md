# Architecture Diagram (Text)

## Data Flow
1) Windows Defender detects malware on endpoint  
2) Defender logs event into:
   - `Microsoft-Windows-Windows Defender/Operational`
3) Wazuh Agent reads event logs  
4) Agent sends logs to Wazuh Manager (TCP 1514)  
5) Wazuh Manager analyzes event (rules + decoding)  
6) Manager enriches detection using VirusTotal integration  
7) Alerts are indexed into OpenSearch  
8) Wazuh Dashboard shows alerts, malware detection, reports  
9) Optional: Email alert is triggered for SOC team
