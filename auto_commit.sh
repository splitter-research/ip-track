#!/bin/bash
/usr/sbin/ip a > /home/nuc/ip-track/$(hostname).txt
git -C "/home/nuc/ip-track" pull
git -C "/home/nuc/ip-track" add -A
git -C "/home/nuc/ip-track" commit -m "auto-commit $(date)"
git -C "/home/nuc/ip-track" push -u origin master 
