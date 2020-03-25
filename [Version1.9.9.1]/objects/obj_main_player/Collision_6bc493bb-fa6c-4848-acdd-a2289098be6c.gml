with(other) other.trans_id = id;

if (trans_id != noone){ // && facing == trans_id.player_facing_before){
	with(obj_game) {
		if(!do_transition){
			spawn_room			= other.trans_id.target_room;
			spawn_x				= other.trans_id.target_x;
			spawn_y				= other.trans_id.target_y;
			spawn_player_facing = other.trans_id.player_facing_after;
			do_transition		= true;
		}
	}
}