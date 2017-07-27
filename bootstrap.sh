#!/usr/bin/env bash

# Get possible updates for Linux Package Installer
# And install them with any updated dependencies
sudo apt-get update && sudo apt-get dist-upgrade

# Version Control
sudo apt-get install git --yes

# Terminal Editor
sudo apt-get install vim --yes