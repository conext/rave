#!/bin/bash
sh /home/lukasz/conext-bamboo/conext/bin/shutdown.sh
sleep 5
rm -rf /home/lukasz/conext-bamboo/conext
tar -zxvf /home/lukasz/conext-bamboo/conext-bin.tar.gz -C /home/apps/conext-bamboo/
sh /home/lukasz/conext-bamboo/conext/bin/startup.sh
exit 0
