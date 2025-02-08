# include <terminal/drawing.h>
# include <stdio.h>

void Terminal_SetForegroundColor(color_t col) {
    printf("\e[38;2;%d;%d;%dm", col.R, col.G, col.B);
}

void Terminal_ResetColor() {
    printf("\e[0m");
}
