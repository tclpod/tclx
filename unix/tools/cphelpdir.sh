:
#
# cphelpdir.sh --
#
# Script for copying a help tree from the source directory to the build 
# directory.  If the source and build directories are the same, a warning
# is issued.
#
# Arguments:
#   $1 - source help directory.
#   $2 - build help directory.
#------------------------------------------------------------------------------
# Copyright 1993 Karl Lehenbauer and Mark Diekhans.
#
# Permission to use, copy, modify, and distribute this software and its
# documentation for any purpose and without fee is hereby granted, provided
# that the above copyright notice appear in all copies.  Karl Lehenbauer and
# Mark Diekhans make no representations about the suitability of this
# software for any purpose.  It is provided "as is" without express or
# implied warranty.
#------------------------------------------------------------------------------
# $Id: Makefile.in,v 2.14 1993/08/26 04:55:13 markd Exp markd $
#------------------------------------------------------------------------------
#

SRC=$1
BUILD=$2
SRCBRF=`(cd $SRC;echo *.brf)`

if [ "$SRC" = "$BUILD" -o "$SRCBRF" = "*.brf" ]
then
    echo "***"
    echo "*** Tcl help files not found. Run `make buildhelp' to generate"
    echo "***"
else
    mkdir $BUILD 2> /dev/null
    (cd $SRC; tar -cf - .) | (cd $BUILD; tar -xf -)
fi

