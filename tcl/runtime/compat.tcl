#
# compat --
#
# This file provides commands compatible with older versions of Extended Tcl.
# 
#------------------------------------------------------------------------------
# Copyright 1992-1993 Karl Lehenbauer and Mark Diekhans.
#
# Permission to use, copy, modify, and distribute this software and its
# documentation for any purpose and without fee is hereby granted, provided
# that the above copyright notice appear in all copies.  Karl Lehenbauer and
# Mark Diekhans make no representations about the suitability of this
# software for any purpose.  It is provided "as is" without express or
# implied warranty.
#------------------------------------------------------------------------------
# $Id: compat.tcl,v 2.3 1993/06/08 14:28:20 markd Exp markd $
#------------------------------------------------------------------------------
#

#@package: TclX-Compatibility execvp assign_fields

proc execvp {progname args} {
    error "The execvp command is outdated, use the execl command directly"
}
proc assign_fields {list args} {
    if [lempty $args] {
        set args {{}}
    }
    return [uplevel lassign [list $list] $args]
}
