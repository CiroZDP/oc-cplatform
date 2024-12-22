# pragma once

# ifndef NETCO_TYPEDEF_DETECT_H
#   define NETCO_TYPEDEF_DETECT_H 1
#   include "netco.h"

#   if _MSC_VER
#     define NC_MSC_TYPES 1
#   elif __GNUC__ && defined(__INT8_TYPE__)
#     define NC_GCC_OLD_TYPES   1
#   else
#     define NC_SENSITIVE_TYPES 1
#   endif

# endif