#!/bin/bash
sudo sh /home/apps/conext-bamboo/conext/bin/shutdown.sh
sleep 5
sudo rm -rf /home/apps/conext-bamboo/conext
sudo tar -zxvf /home/apps/conext-bamboo/conext-bin.tar.gz -C /home/apps/conext-bamboo/
sudo sh /home/apps/conext-bamboo/conext/bin/startup.sh
exit 0
