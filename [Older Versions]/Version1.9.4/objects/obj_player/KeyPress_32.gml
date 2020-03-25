create_dialogue("Just a little monologue.", -1);

create_textevent(
[   "Sorry Greeny, but I'm way cooler than you.", // Line 0										//myText

    "Wait, WHAT?",

    "I'm Greeny. No-one's cooler than me.",

    "What do you think, Red?",

    ["Bluey is cooler.", "Greeny is cooler."],

    "Haha, see?",

    "Tch...",

    "HA! It's as I said.",

    "Aw..."

],

[obj_examplechar, obj_player, obj_player, obj_examplechar, obj_player, obj_examplechar, obj_player, obj_player, obj_examplechar],	//mySpeakers

[ [23,4, 33,0], [7,1, 11,0], [21,1, 29,0], [-1], [-1], [1,5, 5,0], [-1], [1,6, 3,0], [-1] ],   //myEffects

-1,                                                                                            //myTextSpeed

[0, 0, 0, 0, 1, 0, 0, 0, 0],                                                                   //myTypes

[0, 0, 0, 0, [5, 7], 0, -1 ,0, -1],                                                            //myNextLine

-1,                                                                                            //myScripts

-1,                                                                                            //myTextCol

-1, //[0, 3, 2, 1, 0, 5, 3, 1, 2],                                                             //myEmotion

-1                                                                                             //myEmote

);