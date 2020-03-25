instance_create_layer(x, y, "Objects", obj_pickedup);

// notifying Rem System
with(obj_rem_system_first) collected ++;
// some GUI stuff
with(obj_levelMaker) plates--;

instance_destroy();
