# include <stdio.h>
# include <color.h>
# include <terminal/drawing.h>

static void warn(const char * msg)
{
    color_t col = { .rgb = 0xFFFF00 };
    Terminal_SetForegroundColor(col);
    printf("  ▌ warn: ");
    Terminal_ResetColor();
    printf("%s\n", msg);
}

int main(void)
{
    warn("OpenCraft is in beta!");

    return 0;
}
