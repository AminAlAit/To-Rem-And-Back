switch(state){
	#region Wait State
	case "wait":
		scr_wait_state();
	break;
	#endregion
	#region Move States
	case "move up":
		scr_moveup_state();
	break;
	case "move right":
		scr_moveright_state();
	break;
	case "move left":
		scr_moveleft_state();
	break;
	case "move down":
		scr_movedown_state();
	break;
	#endregion
	#region
	case "chase":
		// Pathfinding
		
	break;
	#endregion
	#region Default State
	default:
	
	break;
	#endregion
}

steps ++;
if(steps >= duration){
	timeline_position = irandom_range(0, 240);
	duration = irandom_range(30, 90);
	steps = 0;
}