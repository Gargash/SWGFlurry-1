rebel_brigadier_general = Creature:new {
	objectName = "@mob/creature_names:rebel_brigadier_general",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 25,
	chanceHit = 0.36,
	damageMin = 240,
	damageMax = 250,
	baseXp = 2637,
	baseHAM = 7200,
	baseHAMmax = 8800,
	armor = 0,
	resists = {20,20,40,0,0,-1,0,-1,-1},
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
	optionsBitmask = AIENABLED + CONVERSABLE,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_brigadier_general_bith_male.iff",
		"object/mobile/dressed_rebel_brigadier_general_human_female_01.iff",
		"object/mobile/dressed_rebel_brigadier_general_moncal_female.iff",
		"object/mobile/dressed_rebel_brigadier_general_rodian_female_01.iff",
		"object/mobile/dressed_rebel_brigadier_general_sullustan_male.iff",
		"object/mobile/dressed_rebel_brigadier_general_trandoshan_female.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 200000},
				{group = "junk", chance = 8300000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000},
				{group = "rebel_officer_common", chance = 500000}
			}
		}
	},
	weapons = {"rebel_weapons_heavy"},
	conversationTemplate = "rebelRecruiterConvoTemplate",
	reactionStf = "@npc_reaction/military",
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(rebel_brigadier_general, "rebel_brigadier_general")
