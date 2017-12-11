#!/bin/bash
 
TEXLIVE_URL=http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
TEXLIVE_TAR=${TEXLIVE_URL##*/}

curl --location "$TEXLIVE_URL" --output "$TEXLIVE_TAR"

TEXLIVE_DIR=`tar --gunzip --list --file="$TEXLIVE_TAR" | head --lines=1 | cut --delimiter=/ --fields=1`

tar --gunzip --extract --file="$TEXLIVE_TAR"

cp "./$TEXLIVE_DIR/install-tl" ./

