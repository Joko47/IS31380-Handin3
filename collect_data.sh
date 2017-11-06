#! /bin/bash

# Joining the files
#
# Usage "./collect_data.sh 

join -t, -a1 -a2 -oauto energy_demand_data.csv exchange_data.csv > temp1.csv

join -t, -a1 -a2 -oauto renewable_production_data.csv generator_production_data.csv > temp2.csv

join -t, -a1 -a2 -oauto temp1.csv temp2.csv > joined_data.csv

rm temp1.csv
rm temp2.csv
