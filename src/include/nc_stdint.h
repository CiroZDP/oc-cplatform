# pragma once

#ifndef NC_STDINT_H
#  include "netco.h"
#  define NC_STDINT_H 1

// Check if it was already imported
#  if !defined _STDINT_H && (defined(_STDINT) || defined(INT8_MAX))
#    define _STDINT_H 1
#  endif

#  ifdef NC_NOSTDLIB
#    ifndef _STDINT_H
#      include "ncintern/inttypes.h"
#    endif
#  else
#    include <stdint.h>
#  endif

# endif