## Installation
```ini
git clone https://github.com/mabe1489/Hetzner-DynDNS-RRSet.git
cd Hetzner-DynDNS-RRSet/ 
```

## Configuration
### Flags
`-p` Path to the docker-compose.yml
`-c` Compose Project name

### Preconfiguration
After that installing a cronjob with:
```crontab
crontab -e
*/10 * * * *  bash YourFolder/autostart.sh -p -c 
```
