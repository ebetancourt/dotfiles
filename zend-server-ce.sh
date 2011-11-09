#!/bin/bash

sudo ln -s /usr/lib/libltdl.7.dylib /usr/lib/libltdl.3.dylib

sudo cp ./LaunchDaemons/*.plist /Library/LaunchDaemons/

sudo launchctl load /Library/LaunchDaemons/org.mysql.mysqld.plist
sudo launchctl load /Library/LaunchDaemons/com.zend.zendserver.plist