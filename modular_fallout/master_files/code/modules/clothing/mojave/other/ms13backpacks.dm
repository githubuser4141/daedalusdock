/////////////////////////////////////////////////////////////
/////////////////// MOJAVE SUN BACKPACKS ////////////////////
/////////////////////////////////////////////////////////////

/obj/item/storage/ms13
	name = "generic ms13 storage"
	desc = "Da error tho, the crazy error yo!!"
	icon = 'mojave/icons/objects/clothing/clothing_inventory/backpack_inventory.dmi'
	worn_icon = 'mojave/icons/mob/clothing/back.dmi'
	icon_state = ""
	inhand_icon_state = ""
	worn_icon_state = ""
	lefthand_file = 'mojave/icons/mob/inhands/equipment/backpack_lefthand.dmi'
	righthand_file = 'mojave/icons/mob/inhands/equipment/backpack_righthand.dmi'
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK
	resistance_flags = NONE
	max_integrity = 300
	drag_slowdown = 2
	storage_type = /datum/storage/backpack
	equip_delay_self = 0.75 SECONDS
	equip_delay_other = 2 SECONDS
/*
/obj/item/storage/ms13/Initialize()
	. = ..()
	//This ones flipped for the pref menu icons
	AddElement(/datum/element/world_icon, null, 'mojave/icons/objects/clothing/clothing_world/backpack_world.dmi', icon)
	inhand_icon_state = icon_state
	worn_icon_state = icon_state
*/

//STANDARD BACKPACKS

/obj/item/storage/ms13/satchel
	name = "leather satchel"
	desc = "A simple leather satchel. Easy to access but can't hold much."
	icon_state = "satchel"
	storage_type = /datum/storage/backpack/satchel

/datum/storage/backpack/satchel
	max_slots = 5
	max_total_storage = 8

/obj/item/storage/ms13/nuka_bag
	name = "\improper Nuka Cola backpack"
	desc = "A very old pre-war Nuka Cola backpack. A bit of a tight fit, perhaps this wasn't meant for fully grown adults to wear?"
	icon_state = "nuka_bag"

/obj/item/storage/ms13/corvega_bag
	name = "\improper Corvega backpack"
	desc = "A very old pre-war Corvega backpack. A bit of a tight fit, perhaps this wasn't meant for fully grown adults to wear?"
	icon_state = "corvega_bag"

/obj/item/storage/ms13/leather_backpack
	name = "leather backpack"
	desc = "A very simple, somewhat crude leather backpack. Doesn't look pretty, but it gets the job done."
	icon_state = "leather_backpack"

//FACTION BACKPACKS

/obj/item/storage/ms13/ncr
	name = "\improper NCR rucksack"
	desc = "A sturdy pack used by members of the NCR. It looks like it can hold a fair bit while still keeping a low profile."
	icon_state = "ncr_pack"

/obj/item/storage/ms13/bos
	name = "\improper Brotherhood backpack"
	desc = "A dark robust backpack used by the Brotherhood of Steel. Very well made and maintained."
	icon_state = "bos_pack"

/obj/item/storage/ms13/vault
	name = "\improper Vault-tec backpack"
	desc = "A very old pre-war Vault-tec backpack. It's rare to see these in the wastes."
	icon_state = "vault_bag"

//BIGGIE BAGS

/obj/item/storage/ms13/military
	name = "military backpack"
	desc = "A tactical green storage device, made of sturdy materials and has enough pockets to hold anything you would ever need for wasteland combat."
	icon_state = "military"
	storage_type = /datum/storage/backpack/large

/datum/storage/backpack/large
	max_total_storage = 100
	max_slots = 42
	max_specific_storage = WEIGHT_CLASS_BULKY

/obj/item/storage/ms13/military_duffel
	name = "military duffel bag"
	desc = "A bulky duffel bag used by pre-war military forces. You could fit almost anything in this."
	icon_state = "military_duffel"
	drag_slowdown = 2.5
	slowdown = 0.75
	item_flags = SLOWS_WHILE_IN_HAND
	equip_delay_self = 1 SECONDS
	equip_delay_other = 2.25 SECONDS
	storage_type = /datum/storage/backpack/duffel

/datum/storage/backpack/duffel
	max_total_storage = 140
	max_slots = 60
	max_specific_storage = WEIGHT_CLASS_BULKY

//HARVESTING SACK

/obj/item/storage/ms13/harvest_sack
	name = "harvesting sack"
	desc = "A crude sack intended for holding plants and seeds. Has some rope tightly attached for attaching on the hip."
	icon_state = "sack"
	slot_flags = ITEM_SLOT_BELT
	equip_delay_self = 0.65 SECONDS
	equip_delay_other = 1.5 SECONDS
	storage_type = /datum/storage/backpack/harvest_sack

/datum/storage/backpack/harvest_sack
	max_total_storage = 100
	max_slots = 5
	max_specific_storage = WEIGHT_CLASS_SMALL
