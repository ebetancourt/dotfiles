#!/bin/bash

sudo cp ./LaunchDaemons/*.plist /Library/LaunchDaemons/

sudo launchctl load /Library/LaunchDaemons/org.mysql.mysqld.plist
sudo launchctl load /Library/LaunchDaemons/com.zend.zendserver.plist