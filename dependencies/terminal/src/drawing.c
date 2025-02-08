# include <terminal/drawing.h>
# include <stdio.h>

# ifndef _ansiexp
#   define _ansiexp(s) { printf(s); }
# endif

void Terminal_ResetColor()  _ansiexp("\e[0m")

void Terminal_SetForegroundColor(color_t col) {
    printf("\e[38;2;%d;%d;%dm", col.R, col.G, col.B);
}
