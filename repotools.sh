#!/bin/bash

############################
# Installs repository tools
############################

## Tools list
tools=("
	apache2
	bkhive
	bridge-utils
	build-essential
	cabextract
	cadaver
	cifs-utils
	chromium-browser
	default-java-plugin
	default-jre
	dos2unix
	dsniff
	ent
	filezilla
	finger
	foremost
	gparted
	ghex
	git-core
	hping3
	ipcalc
	ipmitool
	iw
	libapache2-mod-php
	libssl-dev
	macchanger
	medusa
	meld
	mingw-w64
	mono-complete
	mysql-client
	netdiscover
	netsed
	network-manager-vpnc
	nfs-common
	nload
	p7zip-full
	pcscd
	pcsc-tools
	perl
	php-cli
	php-curl
	powershell
	pwgen
	python-scapy
	rdesktop
	remmina
	rpl
	samdump2
	scalpel
	screen
	smbclient
	snmp
	snmp-mibs-downloader
	subversion
	tcpdump
	tcptraceroute
	testdisk
	tftp
	traceroute
	unrar
	unzip
	vim
	vlan
	wine
	wipe
	xtightvncviewer
")

## Install dependencies
for i in $tools
do
	installed=$(dpkg -l $i 2>&1 | grep ii)
	if [ ! "$installed" ]
	then
		echo "Installing package '$i'."
		apt-get -y install $i
	else
		echo "Package $i is already installed."
	fi
done
