opacity = 0.5;

// Create surface with size of the room
surf = surface_create(room_width, room_height);

surface_set_target(surf);
draw_clear_alpha(c_black, 0);

// Reset to application surface
surface_reset_target();