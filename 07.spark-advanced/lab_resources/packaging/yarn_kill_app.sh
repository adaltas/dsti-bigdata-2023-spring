#!/bin/bash

# Kill a YARN application based on a keyword and a username

# $1 = keyword
# $2 = username

if [ "$#" -eq 2 ]; then
  app_list=$(yarn application -list | grep -P "$1.*$2")
  app_id=$(echo "$app_list" | grep -Po 'application_\d+_\d+')

  yarn application -kill "$app_id"
else
  echo "Wrong paramters"
  echo "Usage: yarn_kill_app.sh <keyword> <username>"
fi
