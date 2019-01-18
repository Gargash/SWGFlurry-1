mission_quest_template = ConvoTemplate:new {
	initialScreen = "start",
	templateType = "Lua",
	luaClassHandler = "mission_quest_convo_handler",
	screens = {}
}


mission_start_quest = ConvoScreen:new {
	id = "start",
	customDialogText = "In these dark times the Empire is dedicated to hunting the exiled Jedi throughout the galaxy. Nobody remembers since they were the defenders of peace. I'm worried.",
	stopConversation = "false",
	options = {
		{ "I can help you with something?.", "intro" },
		{ "Goodbye, I'm not interested in what you say.", "bye" },
	}
}
mission_quest_template:addScreen(mission_start_quest);
-----------------

mission_intro = ConvoScreen:new {
	id = "intro",
	customDialogText = "I fear that the Force will become too unbalanced. I feel that the search for greater power ended with my brother.",
	stopConversation = "false",
	options = {
		{ "Who is your brother?.", "intro2" },
		{ "I'm sorry, I'm on the sidelines of this.", "bye" },
	}
}
mission_quest_template:addScreen(mission_intro);
-----------------
--------------------

mission_intro2 = ConvoScreen:new {
	id = "intro2",
  customDialogText = "My brother's name was Jacen. We were twins. A dark Sith Lord I have just finished with him. And although I feel thirst for revenge I know I should not intervene ... but we must do something.",
	stopConversation = "false",
	options = {
		{ "And what do you want me to do?.", "intro3" },
		{ "I'm sorry, this surpasses me.", "bye" },
	}
}
mission_quest_template:addScreen(mission_intro2);

-------------

mission_intro3 = ConvoScreen:new {
	id = "intro3",
  customDialogText = "I can not face that sith. The suffering of losing my brother could betray me. I think you could do it. You could end it and you would not feel remorse.",
	stopConversation = "false",
	options = {
		{ "Kill me a sith ?!", "intro4" },
		{ "I'm leaving, this surpasses me.", "bye" },
	}
}
mission_quest_template:addScreen(mission_intro3);
-------------

mission_intro4 = ConvoScreen:new {
	id = "intro4",
customDialogText = "I know it's a very hard task. It may be the hardest of your life but it would be a very heroic action on your part to free the galaxy from such an evil being. He must not continue to grow in strength ...",
	stopConversation = "false",
	options = {
		{ "In agreement. Let's go there.", "intro5" },
		{ "No ... you're wrong person.", "bye" },
	}
}
mission_quest_template:addScreen(mission_intro4);
----------------

mission_intro5 = ConvoScreen:new {
  id = "intro5",
  customDialogText = "Great. Go to Mandalore. The last time they saw him there. He has distanced himself from civilization due to his training.",
  stopConversation = "false",
  options = {
		{ "To the planet Mandalore ?.", "intro6" },
		{ "I am sorry I have to go.", "bye" },
	}
}
mission_quest_template:addScreen(mission_intro5);
----------------


mission_intro6 = ConvoScreen:new {
  id = "intro6",
  customDialogText = "Yes, in the Outer Rim territories. Once in Mandalore follow your instinct and you can find your goal. But be careful, do not expect a welcome welcome. It is a very powerful sith.",
  stopConversation = "false",
  options = {
		{ "And why do not you take care of yourself?", "intro7" },
		{ "I do not want to know more. Goodbye.", "bye" },
	}
}
mission_quest_template:addScreen(mission_intro6);

mission_intro7 = ConvoScreen:new {
  id = "intro7",
  customDialogText = "I know I should do it but something tells me that I'm not ready. Although if you fail, I will have no choice, and I will have to face my destiny. I have to kill my twin brother's killer at any price.",
  stopConversation = "false",
  options = {
		{ "All right. And what was the name of that sith?", "intro8" },
		{ "I think that's your thing. I get out of here.", "bye3" },
	}
}
mission_quest_template:addScreen(mission_intro7);

mission_intro8 = ConvoScreen:new {
  id = "intro8",
  customDialogText = "His name is ... Darth Caedus.",
  stopConversation = "false",
  options = {
		{ "I'm ready...", "accept_quest" },
		{ "The infamous Darth Caedus ??!. I have things to do!. Goodbye!.", "bye" },
	}
}
mission_quest_template:addScreen(mission_intro8);

mission_bye = ConvoScreen:new {
  id = "bye",
  customDialogText = "Goodbye.",
  stopConversation = "true",
  options = {}
}
mission_quest_template:addScreen(mission_bye);

mission_bye2 = ConvoScreen:new {
  id = "bye2",
  customDialogText = "Luck.",
  stopConversation = "true",
  options = {}
}
mission_quest_template:addScreen(mission_bye2);

mission_bye3 = ConvoScreen:new {
  id = "bye3",
  customDialogText = "Come back if you change your mind.",
  stopConversation = "true",
  options = {}
}
mission_quest_template:addScreen(mission_bye3);

mission_quest_accept_quest = ConvoScreen:new {
	id = "accept_quest",
	customDialogText = "Good luck. And may the Force guide you.",
	stopConversation = "true",
	options = {}
}
mission_quest_template:addScreen(mission_quest_accept_quest);

mission_quest_quest_status = ConvoScreen:new {
	id = "quest_status",
	customDialogText = "",
	stopConversation = "true",
	options = {}
}
mission_quest_template:addScreen(mission_quest_quest_status);

mission_quest_not_yet= ConvoScreen:new {
	id = "not_yet",
	customDialogText = "Did not you have something to do? Darth Caedus is still alive ... I can still feel him on the planet Mandalore.",
	stopConversation = "false",
	options = {
		{"Yes. It is true...", "bye2"},
		{"I've thought better. I do not want to do this.", "quest_reset"},
	}
}
mission_quest_template:addScreen(mission_quest_not_yet);

mission_quest_thank_you = ConvoScreen:new {
	id = "thank_you",
	customDialogText = "I will remember what you have done for me. Keep this present as a token of my sincere gratitude.",
	stopConversation = "true",
	options = {}
}
mission_quest_template:addScreen(mission_quest_thank_you);

mission_quest_completed = ConvoScreen:new {
	id = "completed",
	customDialogText = "I feel that you managed to defeat Darth Caedus! You came to my brother ...",
	stopConversation = "true",
	options = {}
}
mission_quest_template:addScreen(mission_quest_completed);

mission_quest_reset = ConvoScreen:new {
	id = "quest_reset",
	customDialogText = "Come back if you change your mind ...",
	stopConversation = "true",
	options = {}
}
mission_quest_template:addScreen(mission_quest_reset);

----- There is no place in the inventory to give the reward ---
mission_no_space = ConvoScreen:new {
  id = "no_space",
  customDialogText = "It seems as if you have to make room in your inventory before receiving your reward.",
  stopConversation = "true",
  options = {}
}
mission_quest_template:addScreen(mission_no_space);

addConversationTemplate("mission_quest_template", mission_quest_template);
