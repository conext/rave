#!/bin/bash
sh /home/apps/conext-bamboo/apache-rave-0.22-SNAPSHOT-bin/bin/shutdown.sh
sleep 5
rm -rf /home/apps/conext-bamboo/apache-rave-0.22-SNAPSHOT-bin
tar -xvzf /home/apps/conext-bamboo/*.tar.gz -d /home/apps/conext-bamboo/
sh /home/apps/conext-bamboo/apache-rave-0.22-SNAPSHOT-bin/bin/startup.sh
exit 0
