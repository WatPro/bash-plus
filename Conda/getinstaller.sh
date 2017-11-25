#!/bin/bash
 
################################################################################
########## See:                                                       ##########
##########     https://conda.io/miniconda.html                        ##########
################################################################################
  
curl --remote-name https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
curl --remote-name https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh

if [ "$1" = 'all' ] 
then 
curl --remote-name https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86.sh
curl --remote-name https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86.sh
curl --remote-name https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-ppc64le.sh
curl --remote-name https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-ppc64le.sh
 
curl --remote-name https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
curl --remote-name https://repo.continuum.io/archive/Anaconda3-5.0.0-Linux-ppc64le.sh
curl --remote-name https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86.sh
curl --remote-name https://repo.continuum.io/archive/Anaconda2-5.0.1-Linux-x86_64.sh
curl --remote-name https://repo.continuum.io/archive/Anaconda2-5.0.0-Linux-ppc64le.sh
curl --remote-name https://repo.continuum.io/archive/Anaconda2-5.0.1-Linux-x86.sh
fi



