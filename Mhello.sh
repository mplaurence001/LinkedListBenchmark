#!/bin/sh 
#Modified ESESC Script from renau@ucsc.edu
#Modified by Matthew Laurence for CSE220
ESESC_BIN=${1:-../main/esesc}
export ESESC_ReportFile="HelloC"
export ESESC_BenchName="./linked-list-good-taste-main/src/test_list"

if [ -f $ESESC_BIN ]; then
  $ESESC_BIN 
else
  $ESESC_BenchName 
fi

./scripts/report.pl -last

export ESESC_tradCORE_enableDCache="false" #Turn off Data Caches


if [ -f $ESESC_BIN ]; then
  $ESESC_BIN 
else
  $ESESC_BenchName 
fi

./scripts/report.pl -last
