switch(focus){
	case "continue":
		focus = "options";
	break;
	case "options":
		focus = "exit";
	break;
	case "exit":
		focus = "continue";
	break;
}