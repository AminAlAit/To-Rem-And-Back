// Destroy Surface
if(surface_exists(surf)) surface_free(surf);

// Delete the screen captured background
if file_exists("workingscreen.png") file_delete("workingscreen.png");

// Reactivate all other processes
instance_activate_all();