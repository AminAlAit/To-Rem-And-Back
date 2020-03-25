portal_trigger = false;

grid_height    = 0;
grid_width	   = 0;
grid		   = 0;

with(obj_levelMaker){
	other.grid_height = height_;
	other.grid_width  = width_;
	other.grid		  = grid_;
}

cell_x = 0;
cell_y = 0;

collected = 0;

tempo = true;

// Alarm 0
height_		 = 0;
width_		 = 0;
grid_		 = 0;
enemies		 = 2;
collectables = 5;
if(alarm[0] <= 0) alarm[0] = 1;

random_choices_array = 0;