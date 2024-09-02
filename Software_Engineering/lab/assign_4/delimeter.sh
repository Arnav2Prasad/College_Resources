#!/bin/bash
string="arnav,aryan,arjun"
IFS=',' read -r -a array <<< "$string"

echo "Split elements:"
for element in "${array[@]}"; do
  echo "$element"
done

