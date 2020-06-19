urnsoris = Creature:new {
--	customName = "urnsoris",
  objectName = "@mob/creature_names:urnsoris",  
--	randomNameType = NAME_GENERIC,
--	randomNameTag = true,
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 56,
	chanceHit = 0.66,
	damageMin = 245,
	damageMax = 399,
	baseXp = 6097,
	baseHAM = 9700,
	baseHAMmax = 11400,
	armor = 0,
	resists = {52,52,52,30,52,52,52,52,-1},
	meatType = "meat_insect",
	meatAmount = 42,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + HEALER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/urnsoris.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},
		{"blindattack",""},
  	{"intimidationattack",""},
		{"stunattack",""},
		{"posturedownattack",""},
    {"dizzyattack",""},
		{"knockdownattack",""},
    {"posturedownattack",""},
	}
}

CreatureTemplates:addCreatureTemplate(urnsoris, "urnsoris")
