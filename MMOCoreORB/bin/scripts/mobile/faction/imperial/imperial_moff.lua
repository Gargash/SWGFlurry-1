imperial_moff = Creature:new {
	objectName = "",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	customName = "an Imperial Moff",
	socialGroup = "imperial",
	faction = "imperial",
	level = 28,
	chanceHit = 0.37,
	damageMin = 270,
	damageMax = 280,
	baseXp = 2914,
	baseHAM = 8200,
	baseHAMmax = 10000,
	armor = 0,
	resists = {0,0,0,-1,30,-1,30,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_imperial_moff_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 200000},
				{group = "junk", chance = 8300000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000},
				{group = "junk", chance = 500000},
				
			},
		},
			{
			groups = {
				{group = "g_rebel_credit", chance = 10000000},
				},
			lootChance = 20000 
			},
	},
	weapons = {"imperial_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	personalityStf = "@hireling/hireling_military",
	attacks = merge(riflemanmaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(imperial_moff, "imperial_moff")
