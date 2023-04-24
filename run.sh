#!/bin/bash

sudo mn -c

mkdir -p images
# Run tcp.py and generate results in the results directory
sudo python tcp.py --bw-host 100 --bw-net 50 --delay 50 --dir results/ --time 30 --maxq 100 --cong cubic

# Generate plot images
python plot_ping.py -f results/ping.txt -o images/ping.png
python plot_queue.py -f results/q.txt -o images/queue.png
python plot_tcpprobe.py -f results/curl.txt -o images/probe.png
