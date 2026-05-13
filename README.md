# MT7610U Linux AP and MITM Setup Fix

This repository contains the configuration files required to fix connection issues and successfully set up an Access Point (AP) using the **MT7610U** Wi-Fi chip on Linux systems.

The configuration establishes an AP environment that can be used for network auditing (MITM) using `hostapd` and `dnsmasq`, alongside routing traffic (NAT) via `iptables`.

## Prerequisites

Ensure you have the following packages installed on your Linux distribution:
- `hostapd`
- `dnsmasq`
- `iptables`
- `net-tools` (for ifconfig)

## Included Files

* `hostapd.conf`: Access point configuration (SSID: mitm, Channel: 11).
* `dnsmasq.conf`: DHCP and DNS server configuration.
* `start.sh`: Bash script to automate the deployment.

## Instructions

1. Clone this repository:
   ```bash
   git clone [https://github.com/FN-BuildStack/mt7610u-linux-ap-fix.git]([https://github.com/YOUR_USERNAME/mt7610u-linux-ap-fix.git](https://github.com/FN-BuildStack/mt7610u-linux-ap-fix.git))
   cd mt7610u-linux-ap-fix

2. Grant execution permissions to the main script:
   chmod +x start.sh
4. Execute the script as root:
   sudo ./start.sh
