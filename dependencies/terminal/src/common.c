# include <terminal/common.h>
# include <stdio.h>

# ifndef _ansiexp
#   define _ansiexp(s) { printf(s); }
# endif

void Terminal_Clear()   _ansiexp("\e[1;1H\e[2J")
