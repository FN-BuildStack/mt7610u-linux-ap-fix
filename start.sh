#!/bin/bash

# Start the access point in the background
hostapd hostapd.conf &

# Configure the interface IP address
ifconfig wlan0 10.0.0.1

# Start the DHCP/DNS server in the background
dnsmasq -C dnsmasq.conf -d &

# Configure routing and NAT using iptables (ensure eth0 has internet access)
iptables --table nat --append POSTROUTING --out-interface eth0 -j MASQUERADE
iptables --append FORWARD --in-interface wlan0mon -j ACCEPT

# Enable IP forwarding in the kernel
echo 1 > /proc/sys/net/ipv4/ip_forward

echo "Access point started and routing configured."
