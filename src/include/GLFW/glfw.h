# pragma once
# include "../nc_stdbool.h"
# include "../nc_stdint.h"

// GLFW Types
typedef struct GLFWwindow {

	/**
	 * Platform-specific handle to the window.
	 */
	void* handle;

	/**
	 * Size of the drawable area of the window.
	 * (does not include borders or margins)
	 */
	int width, height;
	
	/**
	 * If the window was instanced.
	 */
	bool created;
	
	/**
	 * Represents the window state whether the user is
	 * interacting with the window.
	 */
	bool focused;

	/**
	 * The type of on-screen keyboard this platform supports.
	 * (usually SOFT_KEYBOARD_NONE)
	 */
	uint8_t soft_keyboard;

	/**
	 * Whether the window is backgrounded or inactivated.
	 * (rendering isn't performed when window is inactive)
	 */
	bool inactive;

	/**
	 * Whether input should be ignored due to soft keyboard being open.
	 */
	bool soft_keyboard_focus;

	/**
	 * Whether on-screen keyboard should be instantly opened when an
	 * input field is selected.  Otherwise, the on-screen keyboard is
	 * only opened when the input field is clicked.
	 */
	uint8_t soft_keyboard_instant;
	
	/**
	 * Scale factors for GUI elements that vary their elements based on
	 * the window dimensions.
	 */
	float uiScaleX, uiScaleY;

} GLFWwindow;


/* Unofficial GLFW Header */


