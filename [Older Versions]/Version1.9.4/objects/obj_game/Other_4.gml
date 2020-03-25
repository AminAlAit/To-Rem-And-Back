if(spawn_room == -1) exit;
player.x	  = spawn_x;
player.y	  = spawn_y;
player.facing = spawn_player_facing;

with(player){
	switch(facing){
		case dir.left:  image_xscale = -1; break;
		case dir.right: image_xscale =  1; break;
	}
}