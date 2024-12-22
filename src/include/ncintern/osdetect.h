# pragma once

#ifndef NETCO_OS_DETECTION_H
#  define NETCO_OS_DETECTION_H 1

BEGIN_EXTERN_C

// MinGW detection
#   if !defined NC_HASMINGW && (defined __MINGW32__ || defined __MINGW64__)
#     define NC_HASMINGW 1
#   endif

// Windows Detection
#   if !defined(NC_WINDOWS) && (defined(_WIN32) || defined(__WIN32__) || defined(WIN32) || defined(NC_HASMINGW))
#     define NC_WINDOWS 1
#   endif

END_EXTERN_C

#endif