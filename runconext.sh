#!/bin/bash
sh /home/deploy/conext-bamboo/conext/bin/shutdown.sh
sleep 5
rm -rf /home/deploy/conext-bamboo/conext
tar -zxvf /home/deploy/conext-bamboo/conext-bin.tar.gz -C /home/deploy/conext-bamboo/
sh /home/deploy/conext-bamboo/conext/bin/startup.sh
exit 0
