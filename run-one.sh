#!/bin/bash
R2RBIN=$1
FNAME=$2
CURDIR=$(pwd)

if [ -z "$R2RBIN" ]; then
	echo "usage: run-one.sh </path/to/bin/r2r> </path/to/data.json>"
	exit 1
fi

"$R2RBIN" --jobs 1 --seq --errors-only "$FNAME"
