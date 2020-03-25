//Incase the player decided to press exit: we still delete the captured background
if file_exists("workingscreen.png") file_delete("workingscreen.png");

// And destroy our surface
if(surface_exists(surf)) surface_free(surf);