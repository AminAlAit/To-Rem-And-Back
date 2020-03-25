// Always keep sight on player's location
switch(state){
	#region
	case "chase":
		//// get path to player
		target_x = ((obj_player.x div CELL_WIDTH)  * CELL_WIDTH)  + (CELL_WIDTH  / 2);
		target_y = ((obj_player.y div CELL_HEIGHT) * CELL_HEIGHT) + (CELL_HEIGHT / 2);
	break;#endregion
}