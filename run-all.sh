#!/bin/bash
R2RBIN=$1
CURDIR=$(pwd)

if [ -z "$R2RBIN" ]; then
	echo "usage: run-all.sh </path/to/bin/r2r>"
	exit 1
fi

find "$CURDIR/tests" -type f | while read FNAME; do
	"$R2RBIN" --jobs 1 --seq --errors-only "$FNAME"
#	EXIT=$?
#	if [ $EXIT -eq 1 ]; then
#		echo "BROKEN"
#		break
#	fi
done
