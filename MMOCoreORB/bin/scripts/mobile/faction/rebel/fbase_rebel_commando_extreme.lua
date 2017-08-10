fbase_rebel_commando_extreme = Creature:new {
	objectName = "@mob/creature_names:fbase_rebel_commando_extreme",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 176,
	chanceHit = 8.6,
	damageMin = 1025,
	damageMax = 1760,
	baseXp = 17600,
	baseHAM = 113000,
	baseHAMmax = 157000,
	armor = 3,
	resists = {30,30,30,130,30,130,-1,-1,-1},
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

	templates = {
		"object/mobile/dressed_rebel_commando_human_female_01.iff",
		"object/mobile/dressed_rebel_commando_human_male_01.iff",
		"object/mobile/dressed_rebel_commando_moncal_male_01.iff",
		"object/mobile/dressed_rebel_commando_rodian_male_01.iff",
		"object/mobile/dressed_rebel_commando_twilek_female_01.iff",
		"object/mobile/dressed_rebel_commando_zabrak_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 200000},
				{group = "junk", chance = 8800000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000}
			}
		}
	},
	weapons = {"rebel_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(commandomaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(fbase_rebel_commando_extreme, "fbase_rebel_commando_extreme")
