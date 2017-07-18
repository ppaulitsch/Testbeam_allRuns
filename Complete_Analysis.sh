#!/bin/bash
echo "Starting the analysis of the telescope Data"
# echo "Start conversion to LCIO"
jobsub  -c config.cfg  -csv telruns.csv --subdir --subdirloc NAF_OUTPUT -n ./NAF/qsubparameters.cfg converter 1139-2117
# echo "Start Clustering"				       
jobsub  -c config.cfg  -csv telruns.csv --subdir --subdirloc NAF_OUTPUT -n ./NAF/qsubparameters.cfg clustering 1139-2117
# echo "Start Hitmaker"				       
jobsub  -c config.cfg  -csv telruns.csv --subdir --subdirloc NAF_OUTPUT -n ./NAF/qsubparameters.cfg hitmaker 1139-2117
# echo "Start Hitmaker"				       
# jobsub  -c config.cfg  -csv telruns.csv --subdir --subdirloc NAF_OUTPUT -n ./NAF/qsubparameters.cfg aligngbl 1139-2117
