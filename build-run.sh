#!/bin/bash
CURDIR=$(pwd)
R2RGO=$(CURDIR)"/r2r-go"
R2RBIN=$(R2RGO)"/bin/r2r"

git clone "https://github.com/radareorg/r2r-go"
make -C "r2r-go"

find "$CURDIR/tests" -type f | while read FNAME; do
	"$R2RBIN" "$FNAME"
done
