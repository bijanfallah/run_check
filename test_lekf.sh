#!/bin/bash
set -ex
exp1="emis_lab34"
exp2="emis_lab34"
machine="bijanf@curta.zedat.fu-berlin.de:/scratch/bijanf/projects/"
scp ${machine}${exp1}/S-VELD-BER/2018test/v3.0.002/output/LE_v3.0.002_conc-sfc_20180702_xb.nc ./1.nc
scp ${machine}${exp2}/S-VELD-BER/2018test/v3.0.002/output/LE_v3.0.002_conc-sfc_20180702_xf.nc ./2.nc
#scp ${machine}${exp1}/S-VELD-BER/2018test/v3.0.002/output/LE_v3.0.002_conc-3d_20180701_xf.nc ./1.nc
#scp ${machine}${exp2}/S-VELD-BER/2018test/v3.0.002/output/LE_v3.0.002_conc-3d_20180701_xf.nc ./2.nc 

cdo -sub -fldmean 2.nc -fldmean 1.nc test.nc
#ncview test.nc
#scp ${machine}emis_markus/S-VELD-BER/2018mark/v3.0.002/output/LE_v3.0.002_conc-sfc_20180701_xb.nc ./markus.nc
#scp ${machine}emis_mark2/S-VELD-BER/2018mark/v3.0.002/output/LE_v3.0.002_conc-sfc_20180701_xb.nc ./ref.nc
#cdo timmean -sub markus.nc ref.nc diff.nc 
ncview test.nc 
