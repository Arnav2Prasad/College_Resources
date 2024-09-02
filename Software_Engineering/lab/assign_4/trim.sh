#!/bin/bash

string="   Hi , this is Arnav   "
trimmed_string=$(echo "$string" | xargs)
echo "Trimmed String: '$trimmed_string'"

