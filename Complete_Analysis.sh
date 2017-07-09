#!/bin/bash
echo "Starting the analysis of the telescope Data"
# echo "Start conversion to LCIO"
# jobsub -c config.cfg  -csv telruns.csv  converter  1139-1145
# echo "Start Clustering"				       
# jobsub -c config.cfg  -csv telruns.csv  clustering 1139-1145
# echo "Start Hitmaker"				       
# jobsub -c config.cfg  -csv telruns.csv  hitmaker 1139-1145
echo "Start Hitmaker"				       
jobsub -c config.cfg  -csv telruns.csv  aligngbl 1139-1145
