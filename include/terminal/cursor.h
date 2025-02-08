# pragma once

# ifndef _terminal_cursor_h
#   define _terminal_cursor_h 1
#   include <stdint.h>

/// @brief Changes the position of the terminal cursor
void Terminal_SetCursorPos(uint16_t, uint16_t);

/// @brief Modifies the visibility of the cursor
void Terminal_SetCursorVisible(bool);

# endif // _terminal_cursor_h
