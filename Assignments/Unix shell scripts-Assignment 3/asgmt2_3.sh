#!/bin/bash
echo "Current Home directory " 
echo ~
echo "Current Username"
whoami
echo "Today is :$(date +'%m/%d/%Y')"
echo "No of users logged in :"
who | tr -s " " | cut -d " " -f1