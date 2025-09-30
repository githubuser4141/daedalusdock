/*
#define CLASS1_PUNCTURE		5
#define CLASS2_PUNCTURE		20
#define CLASS3_PUNCTURE		35
#define CLASS4_PUNCTURE		50
#define CLASS5_PUNCTURE		60
#define CLASS6_PUNCTURE		75
#define CLASS7_PUNCTURE		90
#define CLASS8_PUNCTURE		100

#define CLASS1_SLASH		15
#define CLASS2_SLASH		25
#define CLASS3_SLASH		40
#define CLASS4_SLASH		55
#define CLASS5_SLASH		70
#define CLASS6_SLASH		80
#define CLASS7_SLASH		90
#define CLASS8_SLASH		100

#define CLASS1_BLUNT		10
#define CLASS2_BLUNT		25
#define CLASS3_BLUNT		35
#define CLASS4_BLUNT		50
#define CLASS5_BLUNT		60
#define CLASS6_BLUNT		75
#define CLASS7_BLUNT		90
#define CLASS8_BLUNT		100

#define CLASS1_LASER		5
#define CLASS2_LASER		15
#define CLASS3_LASER		25
#define CLASS4_LASER		40
#define CLASS5_LASER		50
#define CLASS6_LASER		75
#define CLASS7_LASER		90
#define CLASS8_LASER		100
*/

/obj/item/clothing/suit/armor/ms13
	name = "generic ms13 armor"
	desc = "You shouldn't be seeing this."
	icon = 'mojave/icons/objects/clothing/clothing_world/suits_world.dmi'
	worn_icon = 'mojave/icons/mob/clothing/suit.dmi'
	allowed = list(/obj/item/pen,/obj/item/paper,/obj/item/stamp,/obj/item/reagent_containers/food/drinks/flask,/obj/item/storage/box/matches,/obj/item/lighter,/obj/item/clothing/mask/cigarette,/obj/item/storage/fancy/cigarettes,/obj/item/flashlight,/obj/item/gun,/obj/item/ammo_box,/obj/item/ammo_casing)
	max_integrity = 400
	///Icon file for left hand inhand overlays
	lefthand_file = 'mojave/icons/mob/inhands/clothing_lefthand.dmi'
	///Icon file for right inhand overlays
	righthand_file = 'mojave/icons/mob/inhands/clothing_righthand.dmi'
	grid_width = 96
	grid_height = 96
	equip_delay_self = 2.5 SECONDS
	equip_delay_other = 4 SECONDS

/obj/item/clothing/suit/armor/ms13/Initialize()
	. = ..()
	AddElement(/datum/element/world_icon, null, icon, 'mojave/icons/objects/clothing/clothing_inventory/suits_inventory.dmi')

/obj/item/clothing/suit/hooded/ms13
	name = "generic ms13 hooded clothing"
	desc = "BASE CLASE BASE CLASS. AAAAAAAAAAAAAAA"
	icon = 'mojave/icons/objects/clothing/clothing_world/suits_world.dmi'
	worn_icon = 'mojave/icons/mob/clothing/suit.dmi'
	lefthand_file = 'mojave/icons/mob/inhands/clothing_lefthand.dmi'
	righthand_file = 'mojave/icons/mob/inhands/clothing_righthand.dmi'
	hoodtype = /obj/item/clothing/head/hooded/ms13
	grid_width = 64
	grid_height = 96

/obj/item/clothing/suit/hooded/ms13/Initialize()
	. = ..()
	AddElement(/datum/element/world_icon, null, icon, 'mojave/icons/objects/clothing/clothing_inventory/suits_inventory.dmi')

// Armor Kits //

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/kit)
	default_armor = list(
	BLUNT = CLASS1_BLUNT,
	PUNCTURE = CLASS1_PUNCTURE,
	SLASH = CLASS2_SLASH,
	LASER = CLASS1_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/kit
	name = "armor kit"
	desc = "A makeshift kit of armor intended to be worn over clothing and made mostly of metal."
	icon_state = "armorkit"
	inhand_icon_state = "armorkit"
	body_parts_covered = CHEST|LEGS|ARM_LEFT
	slowdown = 0.15
	equip_delay_self = 2.5 SECONDS
	equip_delay_other = 4 SECONDS

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/kit/reinf)
	default_armor = list(
	BLUNT = CLASS3_BLUNT,
	PUNCTURE = CLASS3_PUNCTURE,
	SLASH = CLASS4_SLASH,
	LASER = CLASS3_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/kit/reinf
	name = "reinforced armor kit"
	desc = "A reinforced, heavier kit of armor intended to be worn over clothing. Made mostly of durable metal plates."
	icon_state = "reinf_armorkit"
	inhand_icon_state = "reinf_armorkit"
	body_parts_covered = CHEST|LEGS|ARM_LEFT|GROIN
	slowdown = 0.3
	max_integrity = 400
	equip_delay_self = 3.5 SECONDS
	equip_delay_other = 5 SECONDS

// Light/Leather Armor //

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/tire)
	default_armor = list(
	BLUNT = CLASS6_BLUNT,
	PUNCTURE = CLASS2_PUNCTURE,
	SLASH = CLASS4_SLASH,
	LASER = CLASS1_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/tire
	name = "tire armor"
	desc = "Sections of tire, roughly cut apart and bound together. Getting into a firefight isn't advised, but you shouldn't feel a punch in this."
	icon_state = "tirearmor"
	inhand_icon_state = "tirearmor"
	body_parts_covered = CHEST|GROIN
	slowdown = 0.15
	equip_delay_self = 2.5 SECONDS
	equip_delay_other = 4 SECONDS

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/leatherarmor)
	default_armor = list(
	BLUNT = CLASS2_BLUNT,
	PUNCTURE = CLASS2_PUNCTURE,
	SLASH = CLASS4_SLASH,
	LASER = CLASS3_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/leatherarmor
	name = "leather armor"
	desc = "A suit of armor made of hardened leather, a wasteland staple."
	icon_state = "leatherarmor"
	inhand_icon_state = "leatherarmor"
	body_parts_covered = CHEST|LEGS|GROIN
	slowdown = 0.15
	equip_delay_self = 3.5 SECONDS
	equip_delay_other = 5 SECONDS

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/leatherarmor/reinforced)
	default_armor = list(
	BLUNT = CLASS3_BLUNT,
	PUNCTURE = CLASS3_PUNCTURE,
	SLASH = CLASS5_SLASH,
	LASER = CLASS4_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/leatherarmor/reinforced
	name = "reinforced leather armor"
	desc = "A suit of leather armor with light ballistic padding, more leather, and some ceramic reinforcements. A solid defense."
	icon_state = "reinforcedleather"
	inhand_icon_state = "reinforcedleather"
	slowdown = 0.15
	max_integrity = 450

// Metal Armor //

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/metal)
	default_armor = list(
	BLUNT = CLASS4_BLUNT,
	PUNCTURE = CLASS2_PUNCTURE,
	SLASH = CLASS5_SLASH,
	LASER = CLASS2_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/metal
	name = "metal armor"
	desc = "Standard metal armor, great protection from blades but quite bulky and susceptible to lasers and blunt weapons."
	icon_state = "metalarmor"
	inhand_icon_state = "metalarmor"
	body_parts_covered = CHEST|LEGS|GROIN|ARM_LEFT
	slowdown = 0.5
	max_integrity = 500
	equip_delay_self = 4 SECONDS
	equip_delay_other = 6 SECONDS

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/metal/reinforced)
	default_armor = list(
	BLUNT = CLASS5_BLUNT,
	PUNCTURE = CLASS4_PUNCTURE,
	SLASH = CLASS6_SLASH,
	LASER = CLASS3_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/metal/reinforced
	name = "reinforced metal armor"
	desc = "Sturdy metal armor with additional reinforcements, excellent protection from blades and to a lesser extent, bullets, at the cost of mobility and vulnerability to lasers and blunt weapons."
	icon_state = "reinforcedmetal"
	inhand_icon_state = "reinforcedmetal"
	body_parts_covered = CHEST|LEGS|GROIN|ARMS
	max_integrity = 575

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/metal/heavy)
	default_armor = list(
	BLUNT = CLASS6_BLUNT,
	PUNCTURE = CLASS5_PUNCTURE,
	SLASH = CLASS8_SLASH,
	LASER = CLASS4_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/metal/heavy
	name = "heavy metal armor"
	desc = "A full suit of heavy duty plated metal armor. Looks quite intimidating and offers the protection to match."
	icon_state = "heavymetal"
	inhand_icon_state = "heavymetal"
	body_parts_covered = CHEST|LEGS|GROIN|ARMS
	max_integrity = 575

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/vaultvan)
	default_armor = list(
	BLUNT = CLASS3_BLUNT,
	PUNCTURE = CLASS3_PUNCTURE,
	SLASH = CLASS4_SLASH,
	LASER = CLASS2_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/vaultvan
	name = "\improper Vault-tec van armor"
	desc = "Makeshift armor scrounged together from, as one may expect, the old remains of a Vault-tec van."
	icon_state = "vaultvanarmor"
	inhand_icon_state = "vaultvanarmor"
	body_parts_covered = CHEST|LEGS
	slowdown = 0.3
	equip_delay_self = 3.5 SECONDS
	equip_delay_other = 5 SECONDS

// Armor Vests //

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/vest)
	default_armor = list(
	BLUNT = CLASS2_BLUNT,
	PUNCTURE = CLASS3_PUNCTURE,
	SLASH = CLASS3_SLASH,
	LASER = CLASS2_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/vest
	name = "police kevlar vest"
	desc = "A bulletproof kevlar vest used primarily by pre-war police forces during emergencies."
	icon_state = "police_kevlar"
	inhand_icon_state = "policekevlar"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST
	slowdown = 0.15
	equip_delay_self = 2.5 SECONDS
	equip_delay_other = 4 SECONDS
	pocket_storage_component_path = /datum/storage/concrete/pockets

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/vest/civilian)
	default_armor = list(
	BLUNT = CLASS1_BLUNT,
	PUNCTURE = CLASS2_PUNCTURE,
	SLASH = CLASS2_SLASH,
	LASER = CLASS1_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 50,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/vest/civilian
	name = "slimmed kevlar vest"
	desc = "A slimmed kevlar vest intended to be used by civilians, or undercover police, it has less protection."
	icon_state = "civ_kevlar"
	slowdown = 0
	pocket_storage_component_path = /datum/storage/concrete/pockets/small

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/vest/military)
	default_armor = list(
	BLUNT = CLASS4_BLUNT,
	PUNCTURE = CLASS4_PUNCTURE,
	SLASH = CLASS4_SLASH,
	LASER = CLASS3_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/vest/military
	name = "military kevlar vest"
	desc = "A military grade bulletproof kevlar vest, unmatched protection against almost any caliber of bullet."
	icon_state = "military_kevlar"
	inhand_icon_state = "militarykevlar"
	body_parts_covered = CHEST|GROIN

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/vest/vault)
	default_armor = list(
	BLUNT = CLASS2_BLUNT,
	PUNCTURE = CLASS3_PUNCTURE,
	SLASH = CLASS5_SLASH,
	LASER = CLASS2_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/vest/vault
	name = "vault security vest"
	desc = "A thick kevlar vest worn by vault security officers."
	icon_state = "vaultarmor"
	body_parts_covered = CHEST|GROIN

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/vest/snowcrest)
	default_armor = list(
	BLUNT = CLASS4_BLUNT,
	PUNCTURE = CLASS4_PUNCTURE,
	SLASH = CLASS4_SLASH,
	LASER = CLASS3_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/vest/snowcrest
	name = "heavy kevlar vest"
	desc = "A heavy duty bulletproof kevlar vest. Not the easiest to maneuver in, but could certainly save your life."
	icon_state = "snow_guard"
	body_parts_covered = CHEST|GROIN
	slowdown = 0.3

// Raider Armor //

/obj/item/clothing/suit/ms13/trench/black/armored/enforcer
	name = "enforcers overcoat"
	desc = "A duster with a rather thick vest under it and the addition of some metal spikes and reinforcements. This practically screams intimidating authority."
	icon_state = "enforcercoat"
	inhand_icon_state = "det_suit"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|ARMS|GROIN

TYPEINFO_DEF(/obj/item/clothing/suit/ms13/trench/boss)
	default_armor = list(
	BLUNT = CLASS3_BLUNT,
	PUNCTURE = CLASS2_PUNCTURE,
	SLASH = CLASS2_SLASH,
	LASER = CLASS2_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 50,
	ACID = 25)

/obj/item/clothing/suit/ms13/trench/boss
	name = "boss' coat"
	desc = "A padded trenchcoat, with the arms left exposed. Worn by the biggest and baddest."
	icon_state = "courier"
	inhand_icon_state = "duster"
	body_parts_covered = CHEST|GROIN
	equip_delay_self = 1.5 SECONDS
	equip_delay_other = 3 SECONDS
	pocket_storage_component_path = /datum/component/storage/concrete/ms13/suit/med

TYPEINFO_DEF(/obj/item/clothing/suit/ms13/raider)
	default_armor = list(
	BLUNT = CLASS2_BLUNT,
	PUNCTURE = CLASS1_PUNCTURE,
	SLASH = CLASS2_SLASH,
	LASER = CLASS1_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/ms13/raider
	name = "raider reinforced jacket"
	desc = "A winter jacket with some basic armoring and reinforcements. In recent times, it has become a staple for raiders in Mammoth."
	icon_state = "winterjacketraider"
	inhand_icon_state = "det_suit"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|ARMS|GROIN|LEG_RIGHT
	slowdown = 0.15
	max_integrity = 400
	equip_delay_self = 2.5 SECONDS
	equip_delay_other = 4 SECONDS
	pocket_storage_component_path = /datum/storage/concrete/pockets/small

TYPEINFO_DEF(/obj/item/clothing/suit/ms13/raider/plated)
	default_armor = list(
	BLUNT = CLASS2_BLUNT,
	PUNCTURE = CLASS2_PUNCTURE,
	SLASH = CLASS3_SLASH,
	LASER = CLASS2_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/ms13/raider/plated
	name = "raider plated jacket"
	desc = "A light jacket that has been crudely reinforced with various metal plates and strips. An armored jacket like this is almost exclusively used by raiders."
	icon_state = "knightlyraider"
	body_parts_covered = CHEST|ARMS|GROIN|LEGS
	slowdown = 0.3

TYPEINFO_DEF(/obj/item/clothing/suit/ms13/raider/kevlar)
	default_armor = list(
	BLUNT = CLASS2_BLUNT,
	PUNCTURE = CLASS3_PUNCTURE,
	SLASH = CLASS3_SLASH,
	LASER = CLASS2_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/ms13/raider/kevlar
	name = "raider kevlar jacket"
	desc = "A fur lined jacket with an added light kevlar vest and some metal reinforcements. Predominantly seen protecting raiders from bullets seeking justice."
	icon_state = "dapperraider"
	body_parts_covered = CHEST|ARMS|GROIN|LEGS
	slowdown = 0.15


// Combat Armor //

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/combat)
	default_armor = list(
	BLUNT = CLASS4_BLUNT,
	PUNCTURE = CLASS4_PUNCTURE,
	SLASH = CLASS5_SLASH,
	LASER = CLASS3_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/combat
	name = "combat armor"
	desc = "Pre-war military grade combat armor. Offers great all around protection."
	icon_state = "combatarmor"
	inhand_icon_state = "combatarmor"
	body_parts_covered = CHEST|ARMS|GROIN|LEGS
	slowdown = 0.3
	max_integrity = 500
	equip_delay_self = 4 SECONDS
	equip_delay_other = 6 SECONDS

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/combat/advanced)
	default_armor = list(
	BLUNT = CLASS5_BLUNT,
	PUNCTURE = CLASS5_PUNCTURE,
	SLASH = CLASS7_SLASH,
	LASER = CLASS4_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/combat/advanced
	name = "advanced combat armor"
	desc = "An advanced and more protective model of combat armor. Excellent overall protection."
	icon_state = "adv_combatarmor"
	inhand_icon_state = "combat_armor_mk2"
	max_integrity = 575

// Special Armor //

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/assassin)
	default_armor = list(
	BLUNT = CLASS1_BLUNT,
	PUNCTURE = CLASS2_PUNCTURE,
	SLASH = CLASS2_SLASH,
	LASER = CLASS1_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/assassin
	name = "assassin armor"
	desc = "A prototype pre-war lightweight suit of armor that is so light and optimized that it can serve to speed the wearer up and mask the sound of footsteps."
	icon_state = "assassin"
	inhand_icon_state = "assassin"
	slowdown = -0.3
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	max_integrity = 400
	clothing_traits = list(TRAIT_SILENT_FOOTSTEPS)
	equip_delay_self = 2.5 SECONDS
	equip_delay_other = 4 SECONDS

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/tesla)
	default_armor = list(
	BLUNT = CLASS3_BLUNT,
	PUNCTURE = CLASS2_PUNCTURE,
	SLASH = CLASS3_SLASH,
	LASER = CLASS8_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 100)

/obj/item/clothing/suit/armor/ms13/tesla
	name = "tesla armor"
	desc = "Pre-war experimental armor designed to expressly limit damage from laser and energy weapons."
	icon_state = "tesla_armor"
	inhand_icon_state = "tesla_armor"
	blood_overlay_type = "armor"
	slowdown = 0.3
	body_parts_covered = CHEST|LEGS|GROIN|ARM_LEFT
	max_integrity = 500
	equip_delay_self = 3.5 SECONDS
	equip_delay_other = 5 SECONDS

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/eliteriot)
	default_armor = list(
	BLUNT = CLASS7_BLUNT,
	PUNCTURE = CLASS4_PUNCTURE,
	SLASH = CLASS8_SLASH,
	LASER = CLASS4_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 100)

/obj/item/clothing/suit/armor/ms13/eliteriot
	name = "elite riot gear"
	desc = "A highly advanced suit of armor originally in use by elite riot control units before the war."
	icon_state = "riotgear"
	inhand_icon_state = "riotgear"
	slowdown = 0.5
	body_parts_covered = CHEST|LEGS|GROIN|ARMS
	max_integrity = 575
	equip_delay_self = 4 SECONDS
	equip_delay_other = 6 SECONDS

TYPEINFO_DEF(/obj/item/clothing/suit/ms13/ljacket/bountyhunter)
	default_armor = list(
	BLUNT = CLASS3_BLUNT,
	PUNCTURE = CLASS3_PUNCTURE,
	SLASH = CLASS4_SLASH,
	LASER = CLASS3_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 100)

/obj/item/clothing/suit/ms13/ljacket/bountyhunter
	name = "bounty hunter's jacket"
	desc = "A unique fur lined leather coat featuring thick ballistic weave fibers through it. Built to hold up to the worse while retaining protection against the elements."
	icon_state = "bountyhunter"
	inhand_icon_state = "armoredwinterblack"

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/combat/enforcer)
	default_armor = list(
	BLUNT = CLASS4_BLUNT,
	PUNCTURE = CLASS3_PUNCTURE,
	SLASH = CLASS5_SLASH,
	LASER = CLASS2_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 100)

/obj/item/clothing/suit/armor/ms13/combat/enforcer
	name = "surplus combat armor"
	desc = "Cheap, surplus combat armor likely acquired from some kind of pre-war reserve armory. Still gets the job done."
	icon_state = "enforcer"
	body_parts_covered = CHEST|GROIN|LEGS
	max_integrity = 500

// Enviro Armor //

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/firesuit)
	default_armor = list(
	BLUNT = CLASS2_BLUNT,
	PUNCTURE = CLASS1_PUNCTURE,
	SLASH = CLASS2_SLASH,
	LASER = CLASS3_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 100,
	ACID = 100)

/obj/item/clothing/suit/armor/ms13/firesuit
	name = "fire suit"
	desc = "Thick fibers woven together, into the ultimate fire-proof suit. While it has some other applications, you're generally looking to ignore fire using this."
	icon_state = "firesuit"
	inhand_icon_state = "firesuit"
	slowdown = 0.3
	body_parts_covered = CHEST|LEGS|GROIN|ARMS
	max_integrity = 450
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	resistance_flags = FIRE_PROOF
	equip_delay_self = 3.5 SECONDS
	equip_delay_other = 5 SECONDS

/obj/item/clothing/suit/armor/ms13/firesuit/equipped(mob/living/carbon/human/user, slot)
	..()
	if(slot_flags & slot)
		var/mob/living/carbon/human/H = user
		if(istype(H.head, /obj/item/clothing/head/helmet/ms13/firehood))
			ADD_TRAIT(user, TRAIT_NON_FLAMMABLE, "fire_suit")

/obj/item/clothing/suit/armor/ms13/firesuit/dropped(mob/living/carbon/human/user)
	..()
	if(istype(user))
		REMOVE_TRAIT(user, TRAIT_NON_FLAMMABLE, "fire_suit")

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/radsuit)
	default_armor = list(
	BLUNT = CLASS3_BLUNT,
	PUNCTURE = CLASS2_PUNCTURE,
	SLASH = CLASS3_SLASH,
	LASER = CLASS2_LASER,
	ENERGY = 100,
	BOMB = 0,
	BIO = 50,
	FIRE = 25,
	ACID = 50)

/obj/item/clothing/suit/armor/ms13/radsuit
	name = "radiation suit"
	desc = "A lead lined suit, designed with the sole purpose of blocking radiation from the human body. It's pretty thick, and while it could protect you from more than rads, why would you waste such a thing like this in combat?"
	icon_state = "radsuit"
	inhand_icon_state = "radsuit"
	slowdown = 0.5
	body_parts_covered = CHEST|LEGS|GROIN|ARMS
	max

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/hazmat)
	default_armor = list(
	BLUNT = CLASS1_BLUNT,
	PUNCTURE = 0,
	SLASH = CLASS1_SLASH,
	LASER = 0,
	ENERGY = 0,
	BOMB = 0,
	BIO = 100,
	FIRE = 25,
	ACID = 100)

/obj/item/clothing/suit/hooded/ms13/hazmat
	name = "hazmat suit"
	desc = "A relatively thin hazmat suit. You're not quite sure what it's made from, only that this should be able to keep any dangerous liquids off of you."
	icon_state = "hazmat"
	inhand_icon_state = "hazmat"
	slowdown = 0.1
	hoodtype = /obj/item/clothing/head/hooded/ms13/hazmat
	resistance_flags = ACID_PROOF
	body_parts_covered = CHEST|LEGS|GROIN|ARMS|HANDS

TYPEINFO_DEF(/obj/item/clothing/suit/space/ms13)
	default_armor = list(
	BLUNT = CLASS2_BLUNT,
	PUNCTURE = CLASS2_PUNCTURE,
	SLASH = CLASS4_SLASH,
	LASER = CLASS3_LASER,
	ENERGY = 0,
	BOMB = 25,
	BIO = 100,
	FIRE = 75,
	ACID = 100)

/obj/item/clothing/suit/space/ms13
	name = "\improper Space suit"
	desc = "A state of the art genuine space suit. I hope you didn't go into orbit to get this. Built to last, is up to standard for the harsh climate of space itself."
	icon = 'mojave/icons/objects/clothing/clothing_world/suits_world.dmi'
	worn_icon = 'mojave/icons/mob/clothing/suit.dmi'
	icon_state = "spacesuit"
	inhand_icon_state = "spacesuit"

// NCR Armor //

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/ncr)
	default_armor = list(
	BLUNT = CLASS2_BLUNT,
	PUNCTURE = CLASS2_PUNCTURE,
	SLASH = CLASS3_SLASH,
	LASER = CLASS2_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/ncr
	name = "\improper NCR infantry vest"
	desc = "A standard issue NCR infantry vest specialized for arctic environments."
	icon_state = "ncr_vest"
	inhand_icon_state = "ncr_infantry_vest"
	slowdown = 0.15
	body_parts_covered = CHEST
	max_integrity = 400
	equip_delay_self = 2.5 SECONDS
	equip_delay_other = 4 SECONDS
	pocket_storage_component_path = /datum/storage/concrete/pockets/small

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/ncr/reinforced)
	default_armor = list(
	BLUNT = CLASS3_BLUNT,
	PUNCTURE = CLASS3_PUNCTURE,
	SLASH = CLASS3_SLASH,
	LASER = CLASS2_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/ncr/reinforced
	name = "\improper NCR reinforced infantry vest"
	desc = "An NCR infantry vest with extra protective reinforcements."
	icon_state = "ncr_reinforced_vest"
	inhand_icon_state = "ncr_reinforced_vest"
	body_parts_covered = CHEST|GROIN

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/ncr/mantle)
	default_armor = list(
	BLUNT = CLASS3_BLUNT,
	PUNCTURE = CLASS3_PUNCTURE,
	SLASH = CLASS3_SLASH,
	LASER = CLASS2_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/ncr/mantle
	name = "\improper NCR mantle vest"
	desc = "An NCR vest with a mantle on the shoulder, normally indicating some form of authority or command position."
	icon_state = "ncr_standard_mantle"
	inhand_icon_state = "ncr_standard_mantle"

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/mantle/reinforced)
	default_armor = list(
	BLUNT = CLASS3_BLUNT,
	PUNCTURE = CLASS4_PUNCTURE,
	SLASH = CLASS4_SLASH,
	LASER = CLASS3_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/ncr/mantle/reinforced
	name = "\improper NCR reinforced mantle vest"
	desc = "An NCR mantle vest with additional protective reinforcements."
	icon_state = "ncr_reinforced_mantle"
	inhand_icon_state = "ncr_reinforced_mantle"
	slowdown = 0.3
	body_parts_covered = CHEST|GROIN
	max_integrity = 500
	equip_delay_self = 3.5 SECONDS
	equip_delay_other = 5 SECONDS

// Legion Armor //

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/legion)
	default_armor = list(
	BLUNT = CLASS3_BLUNT,
	PUNCTURE = CLASS1_PUNCTURE,
	SLASH = CLASS4_SLASH,
	LASER = CLASS1_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/legion
	name = "standard Legion armor"
	desc = "Standard non-existant armor for Legion recruits, cobbled together with various sports equipment and additional reinforcements as needed."
	icon_state = "leg_rec"
	inhand_icon_state = "legarmor"
	slowdown = 0.15
	body_parts_covered = CHEST|GROIN|LEGS
	max_integrity = 400

/obj/item/clothing/suit/armor/ms13/legion/recruit
	name = "\improper Legion recruit armor"
	desc = "Standard leather armor for Legion recruits. Crudely made but offering decent protection."
	icon_state = "leg_rec"
	inhand_icon_state = "legarmor"
	equip_delay_self = 2.5 SECONDS
	equip_delay_other = 4 SECONDS

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/legion/prime)
	default_armor = list(
	BLUNT = CLASS3_BLUNT,
	PUNCTURE = CLASS2_PUNCTURE,
	SLASH = CLASS4_SLASH,
	LASER = CLASS2_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/legion/prime
	name = "\improper Legion prime armor"
	desc = "Legion leather armor with the small addition of some metal reinforcements for added protection. Intended for Prime Legionaries."
	icon_state = "leg_prime"
	equip_delay_self = 2.5 SECONDS
	equip_delay_other = 4 SECONDS

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/legion/veteran)
	default_armor = list(
	BLUNT = CLASS4_BLUNT,
	PUNCTURE = CLASS3_PUNCTURE,
	SLASH = CLASS5_SLASH,
	LASER = CLASS2_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/legion/veteran
	name = "\improper Legion veteran armor"
	desc = "A full suit of Legion armor with plenty of hardened leather, padding, and metal reinforcements. Worn by feared Legion Veterans."
	icon_state = "leg_vet"
	slowdown = 0.3
	max_integrity = 500
	equip_delay_self = 3.5 SECONDS
	equip_delay_other = 5 SECONDS

/obj/item/clothing/suit/armor/ms13/legion/scout
	name = "\improper Legion scout armor"
	desc = "Legion recruit armor without a chestplate, slightly reduced protection as a result."
	icon_state = "leg_scout"

/obj/item/clothing/suit/armor/ms13/legion/explorer
	name = "\improper Legion explorer armor"
	desc = "A light and agile suit of Legion armor worn by Explorers."
	icon_state = "leg_exp"
	slowdown = 0
	max_integrity = 400
	equip_delay_self = 1.5 SECONDS
	equip_delay_other = 3 SECONDS

/obj/item/clothing/suit/armor/ms13/legion/speculatore
	name = "\improper Legion speculatore armor"
	desc = "Legion veteran armor with less reinforcements, reducing some of it's protection."
	icon_state = "leg_spec"

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/vexillarius)
	default_armor = list(
	BLUNT = CLASS4_BLUNT,
	PUNCTURE = CLASS3_PUNCTURE,
	SLASH = CLASS5_SLASH,
	LASER = CLASS2_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/legion/vexillarius
	name = "\improper Legion vexillarius armor"
	desc = "Legion vexillarius armor. Lighter than his typical Veteran counterparts."
	icon_state = "leg_prime" //placeholder for now
	max_integrity = 500
	equip_delay_self = 2.5 SECONDS
	equip_delay_other = 4 SECONDS

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/praetorian)
	default_armor = list(
	BLUNT = CLASS5_BLUNT,
	PUNCTURE = CLASS4_PUNCTURE,
	SLASH = CLASS6_SLASH,
	LASER = CLASS3_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/legion/praetorian
	name = "\improper Legion praetorian armor"
	desc = "Legion praetorian armor, worn only by the most skilled guardians of the Legion."
	icon_state = "leg_prae"

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/legion/centurion)
	default_armor = list(
	BLUNT = CLASS6_BLUNT,
	PUNCTURE = CLASS4_PUNCTURE,
	SLASH = CLASS6_SLASH,
	LASER = CLASS3_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/legion/centurion
	name = "\improper Legion centurion armor"
	desc = "A hulking suit of armor cobbled together mostly from various other pieces of armor. It serves as both great protection and a status symbol for a Legion Centurion."
	icon_state = "leg_cent"
	slowdown = 0.5
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	max_integrity = 575
	equip_delay_self = 4 SECONDS
	equip_delay_other = 6 SECONDS

// BOS Armor //

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/scribe)
	default_armor = list(
	BLUNT = CLASS1_BLUNT,
	PUNCTURE = CLASS2_PUNCTURE,
	SLASH = CLASS2_SLASH,
	LASER = CLASS2_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/scribe
	name = "\improper Brotherhood scribe's robe"
	desc = "A finely made, comfortable cloth robe worn by Brotherhood scribes."
	icon_state = "scribe"
	inhand_icon_state = "scribe"
	body_parts_covered = CHEST|ARMS|GROIN|LEGS
	equip_delay_self = 1.5 SECONDS
	equip_delay_other = 3 SECONDS
	pocket_storage_component_path = /datum/storage/concrete/pockets

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/scribe/head)
	default_armor = list(
	BLUNT = CLASS2_BLUNT,
	PUNCTURE = CLASS3_PUNCTURE,
	SLASH = CLASS4_SLASH,
	LASER = CLASS3_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/scribe/head
	name = "\improper Brotherhood head scribe's robe"
	desc = "A finely made, comfortable cloth robe worn by Brotherhood scribes. This one is navy blue, denoting that it's for a head scribe."
	icon_state = "head_scribe"
	inhand_icon_state = "head_scribe"

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/haed_paladin)
	default_armor = list(
	BLUNT = CLASS5_BLUNT,
	PUNCTURE = CLASS4_PUNCTURE,
	SLASH = CLASS5_SLASH,
	LASER = CLASS4_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/head_paladin
	name = "\improper Brotherhood head paladin's battlecoat"
	desc = "A masterwork of Brotherhood tailoring, featuring good reinforcements and armoring while not compromising on style or weight."
	icon_state = "battlecoat"
	inhand_icon_state = "battlecoat"
	body_parts_covered = CHEST|ARMS|GROIN
	equip_delay_self = 1.5 SECONDS
	equip_delay_other = 3 SECONDS
	pocket_storage_component_path = /datum/storage/concrete/pockets

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/vest/bos)
	default_armor = list(
	BLUNT = CLASS3_BLUNT,
	PUNCTURE = CLASS3_PUNCTURE,
	SLASH = CLASS4_SLASH,
	LASER = CLASS2_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/vest/bos
	name = "\improper Brotherhood kevlar vest"
	desc = "A light kevlar vest in use by the Brotherhood of Steel. Normally given to low ranking members not worthy of the Brotherhood's standard combat armor, or Power Armor."
	icon_state = "bos_kevlar"
	body_parts_covered = CHEST
	slowdown = 0.15
	max_integrity = 400
	equip_delay_self = 2.5 SECONDS
	equip_delay_other = 4 SECONDS
	pocket_storage_component_path = /datum/storage/concrete/pockets/small

/obj/item/clothing/suit/armor/ms13/combat/bos
	name = "\improper Brotherhood combat armor"
	desc = "A custom built and specialized suit of combat armor used by the Brotherhood of Steel."
	icon_state = "bos_combat"
	body_parts_covered = CHEST|ARMS|GROIN|LEGS
	slowdown = 0.3
	max_integrity = 500
	equip_delay_self = 4 SECONDS
	equip_delay_other = 6 SECONDS

// Desert Ranger Armor //

/obj/item/clothing/suit/armor/ms13/combat/ranger
	name = "\improper Desert Ranger combat armor"
	desc = "A set of Desert Ranger combat armor. The thick materials hold up well against attacks, while keeping the wearer agile."
	icon_state = "patrol_armor"
	worn_icon_state = "patrol_armor"
	body_parts_covered = CHEST|GROIN
	slowdown = 0.15
	max_integrity = 500
	equip_delay_self = 2.5 SECONDS
	equip_delay_other = 4 SECONDS
	pocket_storage_component_path = /datum/storage/concrete/pockets

TYPEINFO_DEF(/obj/item/clothing/suit/armor/ms13/eliteriot/ranger)
	default_armor = list(
	BLUNT = CLASS7_BLUNT,
	PUNCTURE = CLASS6_PUNCTURE,
	SLASH = CLASS8_SLASH,
	LASER = CLASS5_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/armor/ms13/eliteriot/ranger
	name = "\improper Elite Desert Ranger armor"
	desc = "A set of Elite Desert Ranger armor. Heavy kevlar padding in a duster, with a metal breastplate in the front. Built to last through the worst."
	icon_state = "elite_ranger"
	worn_icon_state = "elite_ranger"
	inhand_icon_state = "riotgear"
	slowdown = 0.6
	equip_delay_self = 4 SECONDS
	equip_delay_other = 6 SECONDS

//Mon City Armor //

TYPEINFO_DEF(/obj/item/clothing/suit/hooded/ms13/mon_city)
	default_armor = list(
	BLUNT = CLASS1_BLUNT,
	PUNCTURE = CLASS1_PUNCTURE,
	SLASH = CLASS2_SLASH,
	LASER = CLASS1_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/hooded/ms13/mon_city
	name = "padded green winter hoodie"
	desc = "A thick, lightly padded green winter hoodie. Warm and might just save your life!"
	icon_state = "mon_marksman"
	inhand_icon_state = "winter"
	alternative_mode = TRUE
	slowdown = 0
	hoodtype = /obj/item/clothing/head/hooded/ms13/mon_city
	body_parts_covered = CHEST|GROIN|ARMS
	pocket_storage_component_path = /datum/storage/concrete/pockets

TYPEINFO_DEF(/obj/item/clothing/suit/ms13/veteran_coat/reinf/mon_city)
	default_armor = list(
	BLUNT = CLASS2_BLUNT,
	PUNCTURE = CLASS2_PUNCTURE,
	SLASH = CLASS3_SLASH,
	LASER = CLASS1_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/ms13/veteran_coat/reinf/mon_city
	name = "reinforced winter apparel"
	desc = "A set of winter clothes with the addition of some protective leather reinforcements and some kevlar padding."
	icon_state = "mon_padded"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS

TYPEINFO_DEF(/obj/item/clothing/suit/ms13/veteran_coat/reinf/mon_city/captain)
	default_armor = list(
	BLUNT = CLASS4_BLUNT,
	PUNCTURE = CLASS3_PUNCTURE,
	SLASH = CLASS4_SLASH,
	LASER = CLASS3_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/ms13/veteran_coat/reinf/mon_city/captain
	name = "padded winter fur coat"
	desc = "A bulky winter fur coat with lots of padding and kevlar on the inside. This will probably protect you just as well from the cold as it would any bullets coming your way."
	icon_state = "mon_captain"
	slowdown = 0.3
	max_integrity = 500

TYPEINFO_DEF(/obj/item/clothing/suit/ms13/veteran_coat/reinf/mon_city/pointman)
	default_armor = list(
	BLUNT = CLASS5_BLUNT,
	PUNCTURE = CLASS4_PUNCTURE,
	SLASH = CLASS5_SLASH,
	LASER = CLASS3_LASER,
	ENERGY = 0,
	BOMB = 0,
	BIO = 0,
	FIRE = 25,
	ACID = 25)

/obj/item/clothing/suit/ms13/veteran_coat/reinf/mon_city/pointman
	name = "metal reinforced winter fur coat"
	desc = "A heavy fur coat with lots of metal reinforcements and additions. Quite protective, but also very bulky, and the cold metal doesn't make it any warmer."
	icon_state = "mon_pointer"
	slowdown = 0.5
	pocket_storage_component_path = /datum/storage/concrete/pockets/small
