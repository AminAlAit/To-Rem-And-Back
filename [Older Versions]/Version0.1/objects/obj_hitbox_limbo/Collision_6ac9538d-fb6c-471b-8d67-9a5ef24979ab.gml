//// Insuring we do not hit the same hitbox 4 times
// Raw Hitbox		|| created by any LifeForm	|| does belong the hit objects list.
if(creator == noone || creator == other			|| ds_list_find_index(hit_objects, other) != -1) exit;

// Hit connected: decrease HP, add that target to the hit objects checklist:
other.hp -= damage;

// Player kills knight
if(instance_exists(obj_player_limbo))
	if(creator.object_index == obj_player_limbo && other.hp <= 0)
		obj_player_limbo.kills += 1;

ds_list_add(hit_objects, other);
other.state = "knockback";
other.knockback_speed = knockback * image_xscale;
other.image_xscale = -image_xscale;