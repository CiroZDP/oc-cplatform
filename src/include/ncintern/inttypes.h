# pragma once
# include "tydetect.h"

# ifdef NC_MSC_TYPES
	typedef signed __int8  int8_t;
	typedef signed __int16 int16_t;
	typedef signed __int32 int32_t;
	typedef signed __int64 int64_t;

	typedef unsigned __int8  uint8_t;
	typedef unsigned __int16 uint16_t;
	typedef unsigned __int32 uint32_t;
	typedef unsigned __int64 uint64_t;
	# ifdef _WIN64
		typedef unsigned __int64 uintptr_t;
	# else
		typedef unsigned __int32 uintptr_t;
	# endif

# elif defined NC_GCC_OLD_TYPES
	// GCC old types
	typedef __INT8_TYPE__  int8_t;
	typedef __INT16_TYPE__ int16_t;
	typedef __INT32_TYPE__ int32_t;
	typedef __INT64_TYPE__ int64_t;

	# ifdef __UINT8_TYPE__
		// Has unsigned types by default
		typedef __UINT8_TYPE__   cc_uint8;
		typedef __UINT16_TYPE__  cc_uint16;
		typedef __UINT32_TYPE__  cc_uint32;
		typedef __UINT64_TYPE__  cc_uint64;
		typedef __UINTPTR_TYPE__ cc_uintptr;
	# else
		// CLang doesn't define the __UINT8_TYPE__
		// So we need to indicate the sign manually
		typedef unsigned __INT8_TYPE__   cc_uint8;
		typedef unsigned __INT16_TYPE__  cc_uint16;
		typedef unsigned __INT32_TYPE__  cc_uint32;
		typedef unsigned __INT64_TYPE__  cc_uint64;
		typedef unsigned __INTPTR_TYPE__ cc_uintptr;
	# endif

# elif defined NC_SENSITIVE_TYPES
	typedef signed char        int8_t;
	typedef signed short       int16_t;
	typedef signed int         int32_t;
	typedef signed long long   int64_t;

	typedef unsigned char      uint8_t;
	typedef unsigned short     uint16_t;
	typedef unsigned int       uint32_t;
	typedef unsigned long long uint64_t;

	// Long can change size depending on the architecture
	typedef unsigned long      uintptr_t;

#endif