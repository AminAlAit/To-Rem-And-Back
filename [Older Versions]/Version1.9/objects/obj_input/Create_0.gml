control_switch = true;

// Mapping other keyboard keys W | A | S | D | J | K
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("J"), vk_lcontrol);
keyboard_set_map(ord("K"), vk_space);
scr_get_input(control_switch);