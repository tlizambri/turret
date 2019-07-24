#!/bin/bash

apt-get update
apt-get dist-upgrade
apt-get update
apt-get upgrade
apt-get install hostapd
apt-get install dnsmasq
apt-get install dhcpcd

cp etc/dhcpcd/dhcpcd.conf /etc/dhcpcd
cp etc/hostapd/hostapd.conf /etc/hostapd
cp etc/dnsmasq/dnsmasq.conf /etc/dnsmasq
cp turret /etc/init.d
ln /etc/init.d/turret /etc/rc3.d/S01turret

cp -r static /opt/turret
cp -r templates /opt/turret
cp turret.py /opt/turret

systemctl unmask hostapd
systemctl enable hostapd
systemctl restart dhcpcd
systemctl restart dnsmasq
systemctl start hostapd
