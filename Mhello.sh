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

export ESESC_DL1_core_bsize="64*1024"
export ESESC_PrivL2_core_bsize="64*1024"
export ESESC_DL1_core_assoc="1"
export ESESC_PrivL2_core_assoc="1"

if [ -f $ESESC_BIN ]; then
  $ESESC_BIN 
else
  $ESESC_BenchName 
fi

./scripts/report.pl -last
