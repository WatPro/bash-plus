#!/bin/bash
 
################################################################################
########## See:                                                       ##########
##########     https://conda.io/miniconda.html                        ##########
################################################################################

if [ "$1" = 'all' ]
then
    ALL=0
else
    ALL=1
fi

getcd(){
    local FILE_URL="$1"
    local FILENAME=${FILE_URL##*/}
    echo -n "Processing $FILENAME... "
    local FILE_TXT="$FILENAME""_text"
    local ENDHEADER='^@@END_HEADER@@$'
    local ALL="$2"
    if [ "$ALL" = '0' ]
    then
        curl --silent --output "$FILENAME" "$FILE_URL"
        cat "$FILENAME" | sed "/$ENDHEADER/q" > "$FILE_TXT" 
    else 
        curl --silent "$FILE_URL" | sed "/$ENDHEADER/q" > "$FILE_TXT"
    fi
    echo 'DONE '
}

getcd 'https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh' '0'
getcd 'https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86.sh' "$ALL"
getcd 'https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh' '0'
getcd 'https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86.sh' "$ALL"
getcd 'https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-ppc64le.sh' "$ALL" 
getcd 'https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-ppc64le.sh' "$ALL"
getcd 'https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh' "$ALL"
getcd 'https://repo.continuum.io/archive/Anaconda3-5.0.0-Linux-ppc64le.sh' "$ALL"
getcd 'https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86.sh' "$ALL"
getcd 'https://repo.continuum.io/archive/Anaconda2-5.0.1-Linux-x86_64.sh' "$ALL"
getcd 'https://repo.continuum.io/archive/Anaconda2-5.0.0-Linux-ppc64le.sh' "$ALL"
getcd 'https://repo.continuum.io/archive/Anaconda2-5.0.1-Linux-x86.sh' "$ALL"



