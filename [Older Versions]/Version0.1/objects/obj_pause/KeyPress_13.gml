switch(focus){
	case "continue":
		instance_destroy();
	break;
	case "options":
		// Options menu here
	break;
	case "exit":
		// Delete captured background
		file_delete("workingscreen.png");
	
		// Destroy Surface
		if(surface_exists(surf)) surface_free(surf);
	
		//exit game
		game_end();
	break;
}