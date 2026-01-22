# 02 - Firewall Ports

Allow Wazuh required ports (example with UFW):

```bash
sudo ufw allow 1514/tcp
sudo ufw allow 1515/tcp
sudo ufw allow 55000/tcp
sudo ufw allow 5601/tcp
sudo ufw allow 9200/tcp
sudo ufw enable
```
