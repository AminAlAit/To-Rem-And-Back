// Screen capture background
screen_save("workingscreen.png");

// Stop all gameplay precess
instance_deactivate_all(true);

// Setting up the static background
background = sprite_add("workingscreen.png", 0, false, true, 640, 360);

// pointer focus
focus = "continue";

// Create surface with size of the room
surf = surface_create(room_width, room_height);

surface_set_target(surf);
draw_clear_alpha(c_black, 0);

// Reset to application surface
surface_reset_target();