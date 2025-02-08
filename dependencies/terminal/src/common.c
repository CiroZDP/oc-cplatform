# include <terminal/common.h>
# include <stdio.h>

void Terminal_Clear() { printf("\e[1;1H\e[2J"); }
