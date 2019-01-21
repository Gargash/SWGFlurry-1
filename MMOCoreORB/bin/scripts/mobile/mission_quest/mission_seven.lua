mission_seven = Creature:new {
	customName = "Mission Seven",
	socialGroup = "",
	faction = "",
	level = 100,
	chanceHit = 0.27,
	damageMin = 70,
	damageMax = 75,
	baseXp = 235,
	baseHAM = 120000,
	baseHAMmax = 120000,
	armor = 1,
	resists = {0,0,110,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = INVULNERABLE + CONVERSABLE + INTERESTING,
    	diet = HERBIVORE,
	templates = {"object/mobile/dressed_criminal_thug_zabrak_male_01.iff"},
	scale = 1,
    	lootGroups = {},
	weapons = {},
    	conversationTemplate = "missionseven_quest_template",
    	attacks = merge(brawlernovice,marksmannovice)

}

CreatureTemplates:addCreatureTemplate(mission_seven, "mission_seven")
