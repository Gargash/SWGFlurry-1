/*
 * DiamondMenuComponent.cpp
 *
 *  Created on: 11/22/2017
 *      Author: TOXIC
 */

#include "DiamondMenuComponent.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/ZoneServer.h"
#include "server/zone/managers/jedi/JediManager.h"
#include "server/chat/ChatManager.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/zone/managers/visibility/VisibilityManager.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"
#include "server/zone/managers/loot/LootManager.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/chat/ChatManager.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/objects/building/BuildingObject.h"

void DiamondMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);
	ManagedReference<BuildingObject*> building = cast<BuildingObject*>(player->getRootParent());
	// If outside dispaly menu options, if inside a building show nothing.
	if (building == NULL) {
	menuResponse->addRadialMenuItem(20, 3, "Open Diamond Crate");
	}
}

int DiamondMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
	ManagedReference<BuildingObject*> building = cast<BuildingObject*>(creature->getRootParent());

	// If outside dispaly menu options, if inside a building show nothing.
	if (building == NULL) {
	if (selectedID != 20)
		return 0;

 	ManagedReference<SceneObject*> inventory = creature->getSlottedObject("inventory");
 	ManagedReference<LootManager*> lootManager = creature->getZoneServer()->getLootManager();
	lootManager->createLoot(inventory, "lootcollectiontierdiamond", 300);
	lootManager->createLoot(inventory, "lootcollectiontierdiamond", 300);
	lootManager->createLoot(inventory, "lootcollectiontierdiamond", 300);
	lootManager->createLoot(inventory, "lootcollectiontierdiamond", 300);
	lootManager->createLoot(inventory, "lootcollectiontierdiamond", 300);
	creature->playEffect("clienteffect/level_granted.cef", "");
	sceneObject->destroyObjectFromWorld(true);
	}
	return 0;
}
