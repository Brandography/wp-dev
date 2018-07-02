#!/usr/bin/env bash
cd ../../
if [ -n "$(ls -A wordpress 2>/dev/null)" ] 
then
    echo "Wordpress seems to be already imported!!"
else
    wget http://wordpress.org/latest.tar.gz
    tar xfz latest.tar.gz
    rm -f latest.tar.gz
fi
