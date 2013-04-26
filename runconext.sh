#!/bin/bash
sh /home/apps/conext-bamboo/conext/bin/shutdown.sh
sleep 5
rm -rf /home/apps/conext-bamboo/conext
tar -xvzf /home/apps/conext-bamboo/conext-bin.tar.gz
sh /home/apps/conext-bamboo/conext/bin/startup.sh
exit 0
