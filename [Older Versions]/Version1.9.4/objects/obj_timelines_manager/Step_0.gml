switch(sema){
	case 1: // only check the textevent's existence when it's created in the timelines
		if(!instance_exists(introduction_textevent)) 
			sema++;
	break;
	case 2:
		//Debug(obj_timelines_manager, "Step Event");
		sema++;
	break;
	case 3: 
		//scr_create_cutscene(t_scene_info);
		sema++;
	break;
	default:
	
	break;
}