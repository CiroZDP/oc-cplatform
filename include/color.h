# pragma once

# ifndef _color_h
#   define _color_h 1
#   include <stdint.h>

/// @brief A union that can represent a True color value
typedef union {

	/// Components
	struct { uint8_t B, G, R, A; };

	/// Hexadecimal 32-bit color value
	uint32_t rgb;

} color_t;

# endif // _color_h
