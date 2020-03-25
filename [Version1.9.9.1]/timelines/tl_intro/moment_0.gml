#region Introduction Text Event
	introduction_textevent = create_textevent(
	[   //1
		"Jasmin: THIS IS NOT MORPHINE! Who put heroine solution in the serum?", // Line 0										//myText
		//2
	    "Jasmin: Tell me you didn’t do it, Candice.",
		//3
	    "Candice: I... I'm sorry. My..",
		//4
	    "Jasmin: You'll say NOTHING about this!",

	    //["Bluey is cooler.", "Greeny is cooler."],
		
		//5
		"Jasmin: Heck, I don't know if I can find a way to get ourselves out of this.",
		//6
		"Jasmin: What if the doctor knew about this?! The man barely survived the plane crash.",
		//7
		"Jasmin: We have to take care of him until the side effects go...",
		//8
	    "Ah... wher.. where am I?",
		//9
	    "....."

	],

	-1, //[mp, mp, mp, mp, mp, mp, mp, mp, mp],	//mySpeakers
	//1				2		3					  4						5					  6			  7		8			9
	[[9, 1,  31,0], [35,1], [1, 0, 10, 1, 29, 0], [1, 0, 20, 0, 28, 0], [1, 0, 72, 7, 76, 0], [1,0, 5,0], [-1], [1,7], [1, 0]],   //myEffects
	//1						 2						 3						   4			    5  6  7  8  9
	[[1, 1, 9, 0.4,  31, 1], [1, 1, 35, 0.4, 42, 1], [1, 1, 10, 0.1, 26, 0.7], [1, 1, 20, 0.5], 0, 0, 0, 0, [1, 0.5]],  //myTextSpeed
	//1 2  3  4  5  6  7  8  9
	[0, 0, 0, 0, 0, 0, 0, 0, 0],                                                                   //myTypes
	//1 2  3  4  5  6   7  8   9
	[0, 0, 0, 0, 0, 0, 0 ,0, 0],                                                            //myNextLine

	-1,                                                                                            //myScripts

	-1,                                                                                            //myTextCol

	-1, //[0, 3, 2, 1, 0, 5, 3, 1, 2],                                                             //myEmotion

	-1                                                                                             //myEmote

	);
#endregion
