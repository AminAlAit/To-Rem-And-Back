switch(focus){
	case "continue":
		focus = "exit";
	break;
	case "options":
		focus = "continue";
	break;
	case "exit":
		focus = "options";
	break;
}