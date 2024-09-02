#!/bin/bash
string="Computer Science includes a wide range of Data Structures"
substring="Data"

if [[ $string == *"$substring"* ]]; then
  echo "String contains '$substring'"
else
  echo "String does not contain '$substring'"
fi

