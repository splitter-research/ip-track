#!/bin/bash
ifconfig > /home/nuc/ip-track/ip.txt
git -C "/home/nuc/ip-track" add -A
git -C "/home/nuc/ip-track" commit -m "auto-commit $(date)"
git -C "/home/nuc/ip-track" push -u origin master 
