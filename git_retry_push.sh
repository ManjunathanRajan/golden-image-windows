#!/bin/bash

command=$1
max_attempts=${2:-5}
sleep_seconds=${3:-10}

attempt=1
while [ $attempt -le $max_attempts ]
do
  echo "Attempt $attempt of $max_attempts"
  output=$(eval $command 2>&1)

  if [[ $? -eq 0 ]]; then
    echo "Command successful."
    exit 0
  else
    echo "Command failed:"
    echo "$output"
    echo "Retrying in $sleep_seconds seconds..."

    sleep $sleep_seconds
    attempt=$((attempt+1))
  fi
done

echo "All attempts failed. Exiting."
exit 1
