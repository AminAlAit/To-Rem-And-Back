// move the object so that obj_cam will follow it
with(following_inst) {
	x -= other.direction_x;
	y -= other.direction_y;
}

if(fadeout == 0) alpha = max(alpha - 0.005, 0.25); // While fadeout is zero, move to 0.25
else alpha = min(alpha + 0.005, 1);				   // else move alpha to 1

letter += letter_speed; // adds one full letter every 2 frame

print = string_copy(str, 1, letter);

if((letter > string_length(str) + (wait * multiply_wait)) && (string_next < array_length_1d(strings)-1)){
	letter = 0;
	string_next ++;
	if(string_next == array_length_1d(strings)-1) holdspace ++;
}

str = strings[string_next];

if(keyboard_check(vk_space)) holdspace ++;

if((holdspace > 80) || x_pos < 100) fadeout = 1;

if(alpha == 1 && fadeout == 1) room_goto_next();