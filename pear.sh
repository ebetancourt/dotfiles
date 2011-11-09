#!/bin/bash

sudo pear channel-update pear.php.net
sudo pear upgrade-all

sudo pear channel-discover pear.phpunit.de
sudo pear channel-discover pear.symfony-project.com
sudo pear channel-discover components.ez.no

sudo pear install --alldeps phpunit/PHPUnit
sudo pear install --alldeps PHP_CodeSniffer
sudo pear install --alldeps Cache_Lite
sudo pear install --alldeps HTTP_Request2
sudo pear install --alldeps XML_RPC2
