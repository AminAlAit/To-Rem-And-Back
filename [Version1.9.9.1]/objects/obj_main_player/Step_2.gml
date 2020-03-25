// Dependency: obj_game

if(hspeed != 0){
	switch(sign(hspeed)){
		case  1: facing = dir.right; break;
		case -1: facing = dir.left;  break;
	}
}

else facing = -1;

switch(facing){
	case dir.left:  image_xscale = -1; break;
	case dir.right: image_xscale =  1; break;
}