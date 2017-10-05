fbase_stormtrooper_rifleman_extreme = Creature:new {
	objectName = "@mob/creature_names:fbase_stormtrooper_rifleman_extreme",
	randomNameType = NAME_STORMTROOPER,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 152,
	chanceHit = 6.2,
	damageMin = 905,
	damageMax = 1520,
	baseXp = 15200,
	baseHAM = 77000,
	baseHAMmax = 109000,
	armor = 2,
	resists = {110,110,140,35,35,35,35,-1,-1},
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
	scale = 1.05,

	templates = {"object/mobile/dressed_stormtrooper_rifleman_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 8500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000},
				{group = "stormtrooper_common", chance = 500000},
					
			},
		},
			{
			groups = {
				{group = "g_rebel_credit", chance = 10000000},
				},
			lootChance = 20000 
			},
	},
	weapons = {"st_rifleman_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/stormtrooper",
	attacks = merge(riflemanmaster,brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(fbase_stormtrooper_rifleman_extreme, "fbase_stormtrooper_rifleman_extreme")
