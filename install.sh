#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "Please run this script with sudo:"
    echo "sudo $0"
    exit 1
fi

REPO_CONTENT="[Materialgram]
name=Materialgram RPM (From burhancodes) - x86_64 - Updates
baseurl=https://raw.githubusercontent.com/burhancodes/materialgram-repo/main/rpms/
enabled=1
gpgcheck=0
metadata_expire=1h"

echo -e "$REPO_CONTENT" > /etc/yum.repos.d/materialgram.repo

if [ $? -eq 0 ]; then
    echo "Repository added successfully."
else
    echo "Failed to add repository. Please check your permissions."
    exit 1
fi
