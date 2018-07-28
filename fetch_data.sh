#! /bin/bash

ACS_RISK_POP='http://enigma-public.s3.amazonaws.com/projects/smoke-alarm-risk/data/acs-bg-at-risk-population.csv'
ACS_POP='http://enigma-public.s3.amazonaws.com/projects/smoke-alarm-risk/data/acs-bg-population.csv'
ACS_POP_DENSITY='http://enigma-public.s3.amazonaws.com/projects/smoke-alarm-risk/data/acs-bg-pop-density.csv'
MSA_BG='http://enigma-public.s3.amazonaws.com/projects/smoke-alarm-risk/data/msa80-bg.csv'
AHS='http://enigma-public.s3.amazonaws.com/projects/smoke-alarm-risk/data/ahs.csv'
ACS='http://enigma-public.s3.amazonaws.com/projects/smoke-alarm-risk/data/acs.csv'

if [ $(uname -s) == "Darwin" ];then
    curl $ACS_RISK_POP -o data/acs-bg-at-risk-population.csv
    curl $ACS_POP -o data/acs-bg-population.csv
    curl $ACS_POP_DENSITY -o data/acs-bg-pop-density.csv
    curl $MSA_BG -o data/msa80-bg.csv
    curl $AHS -o data/ahs.csv
    curl $ACS -o data/acs.csv
else
    wget $ACS_RISK_POP -O data/acs-bg-at-risk-population.csv
    wget $ACS_POP -O data/acs-bg-population.csv
    wget $ACS_POP_DENSITY -O data/acs-bg-pop-density.csv
    wget $MSA_BG -O data/msa80-bg.csv
    wget $AHS -O data/ahs.csv
    wget $ACS -O data/acs.csv
fi