# pragma once

# if !defined(_STDBOOL) && (defined(__bool_true_false_are_defined) || (defined(bool) && defined(false) && defined(true)))
#   define _STDBOOL 1
# endif

# if !defined(_STDBOOL) && !defined(__cplusplus)
#   ifdef NC_NOSTDLIB
#     define bool  _Bool
#     define false 0
#     define true  1
#   else
#     include <stdbool.h>
#   endif
# endif
