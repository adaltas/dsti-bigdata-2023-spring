#!/bin/bash

# Clean app directories and submit the taxi_streaming application

# $1 = output_dir
# $2 = socket_host
# $3 = fares_socket_port

if [ "$#" -eq 3 ]; then
  app_name="$USER"_taxi_streaming

  # Clean checkpoint and output directory
  hdfs dfs -rm -r -f "/user/$USER/checkpoint/$app_name"
  hdfs dfs -rm -r -f "$1"

  spark-submit --properties-file "$(dirname "$0")/app.properties" \
  "$(dirname "$0")/taxi_streaming_analysis.py" \
  "$app_name" "$2" "$1" -f "$3"
else
  echo "Wrong paramters"
  echo "Usage: $(basename "$0") <output_dir> <socket_host> <fares_socket_port>"
fi

