#!/bin/bash

files=$(ls $HOME/.ssh/id_rsa* 2> /dev/null | wc -l);
files=${files##+([[:space:]])};
files=${files%%+([[:space:]])};

if [ $files != 0 ]
then
  echo "an ssh key exists...backing it up to ~/.ssh/key_backup"
  mkdir $HOME/.ssh/key_backup
  cp $HOME/.ssh/id_rsa* $HOME/.ssh/key_backup
  rm $HOME/.ssh/id_rsa*
else
    echo "ssh key does not exist...proceeding to generate"
fi

ssh-keygen -t rsa -C "elliot@elliotbetancourt.com"

mate $HOME/.ssh/id_rsa.pub

open "https://github.com/account/ssh"