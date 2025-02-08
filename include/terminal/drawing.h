# pragma once

# ifndef _terminal_draw_h
#   define _terminal_draw_h 1
#   include <stdint.h>
#   include <color.h>

/// @brief Clears the console and hides the cursor
void Terminal_BeginDrawing();

/// @brief Restores console back to original
void Terminal_StopDrawing();

/// @brief Put pixel (SetBackgroundColor + Space)
void Terminal_PutPixel(color_t, uint16_t, uint16_t);

/// @brief Aspect ratio corrected (2 : 1)
void Terminal_PutPixelCorrected(color_t, uint16_t, uint16_t);

/// @brief Changes the background color of the terminal (in truecolor)
void Terminal_SetBackgroundColor(color_t);

/// @brief Changes the foreground color of the terminal (in truecolor)
void Terminal_SetForegroundColor(color_t);

/// @brief Resets styles back to original
void Terminal_ResetColor();

# endif // _terminal_draw_h
