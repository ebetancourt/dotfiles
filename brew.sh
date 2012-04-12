#!/bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)";
brew install autojump;
brew install bash-completion;
brew install byobu;
# brew install erlang; # was originally only installed by RabbitMQ
# brew install rabbitmq # trying to use zeromq for projects instead
brew install growlnotify;
brew install libevent;
brew install memcached;
brew install ssh-copy-id;
brew install wget;
brew install zeromq;
brew install gnu-sed;

sudo easy_install pip && pip install Mercurial;