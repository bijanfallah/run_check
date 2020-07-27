#!/bin/bash
set -ex
exp1="emis_lab21"
exp2="emis_lab03"
machine="bijanf@curta.zedat.fu-berlin.de:~/projects/"
scp ${machine}${exp2}/S-VELD-BER/2018test/v3.0.002/output/LE_v3.0.002_conc-sfc_20180701_xb.nc .
scp ${machine}${exp1}/S-VELD-BER/2018test/v3.0.002/output/LE_v3.0.002_conc-sfc_20180701_xf.nc .
cdo timmean -sub LE_v3.0.002_conc-sfc_20180701_xf.nc LE_v3.0.002_conc-sfc_20180701_xb.nc test.nc
ncview test.nc
