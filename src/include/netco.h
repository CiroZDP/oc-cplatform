# pragma once

#ifndef NETCO_H
#  define NETCO_H 1

# ifndef BEGIN_EXTERN_C
#   if __cplusplus
#     define BEGIN_EXTERN_C extern "C" {
#     define END_EXTERN_C   }
#   else
#     define BEGIN_EXTERN_C
#     define END_EXTERN_C
#   endif
# endif

#  ifndef NULL
#    if __cplusplus
#      define NULL 0
#    else
#      define NULL ((void*)0)
#    endif
#  endif

// The os detection
#  include "ncintern/osdetect.h"

// The typedef detection
#  include "ncintern/tydetect.h"

#endif