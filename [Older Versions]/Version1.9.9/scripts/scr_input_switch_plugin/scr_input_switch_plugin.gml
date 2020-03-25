///@desc place this script inside a player object's begin step event
// also, put 'input_state = "available"' at the create event

with(obj_input) other.input_state = state;
switch(input_state){
	case "available":
	
	break;
	case "unavailable":
		global.input.right	 = 0;
		global.input.left	 = 0;
		
		global.input.down	 = 0;
		global.input.up		 = 0;
		
		global.input.roll	 = 0;
		global.input.attack	 = 0;
	break;
}