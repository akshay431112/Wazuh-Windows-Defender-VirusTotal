# Wazuh SOC Monitoring: Windows Defender + VirusTotal (Enterprise Setup)

This project provides a complete **SOC-ready deployment guide** for monitoring **Windows Defender events** using **Wazuh**, and enriching detections using **VirusTotal** threat intelligence.

> ⚠️ Security Note  
> This repository uses **placeholders only** (no real IPs, passwords, tokens, or company details).

---

## 🔥 Features
- Centralized monitoring using **Wazuh Manager**
- Windows Defender log collection from **Windows 10/11 agents**
- VirusTotal enrichment for suspicious files (threat intelligence)
- Email alerting for malware detections
- Weekly SOC report templates
- Bulk deployment support (GPO/AD ready)
- Troubleshooting guide for common issues

---

## 🏗️ Architecture

```text
[ Windows 10/11 Endpoints ] 
        |
        |  Wazuh Agent (1514 TCP)
        v
[ Wazuh Manager ] ---> [ OpenSearch Indexer ] ---> [ Wazuh Dashboard ]
        |
        +--> VirusTotal Integration (Threat Intel)
        |
        +--> Email Alerts (SOC)
```

---

## 🚀 Quick Setup Flow

### 1) Install Wazuh Manager (Ubuntu 22.04)
See: `wazuh-manager/01-installation-ubuntu22.md`

### 2) Enable required ports
See: `wazuh-manager/02-firewall-ports.md`

### 3) Deploy Windows agents
See: `windows-agent/01-agent-installation.md`

### 4) Enable Windows Defender log collection
See: `windows-agent/02-defender-log-collection.md`

### 5) Enable VirusTotal integration
See: `wazuh-manager/03-virustotal-integration.md`

### 6) Configure email alerts + weekly reports
See: `wazuh-manager/04-email-alerts.md` and `wazuh-manager/05-weekly-reports.md`

---

## 📌 Disclaimer
This project is for **educational and enterprise SOC lab deployment**.
Always follow your organization’s security policies.
