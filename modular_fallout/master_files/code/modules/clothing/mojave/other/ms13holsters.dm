/obj/item/storage/belt/holster/ms13 // These are pretty busted. Don't use.
	name = "holster"
	desc = "A holster able to carry revolvers and other handguns along with some ammo."
	icon = 'mojave/icons/objects/clothing/clothing_world/belts_world.dmi'
	worn_icon = 'mojave/icons/mob/clothing/belt.dmi'
	icon_state = "cowboy"
	worn_icon_state = "cowboy"

/datum/storage/belt/holster/ms13/New()
	set_holdable(list(
	/obj/item/gun/ballistic/automatic/pistol,
	/obj/item/ammo_box/magazine,
	/obj/item/ammo_box/c38,
	/obj/item/ammo_box/l10mm,
	/obj/item/ammo_box/a357,
	/obj/item/ammo_box/m44,
	/obj/item/ammo_box/c45rev,
	/obj/item/ammo_box/a45lcrev,
	/obj/item/ammo_box/c4570
	))

/datum/storage/belt/holster/ms13
	max_slots = 3 // This thing is super busted. See you on the other side.
	max_specific_storage = WEIGHT_CLASS_NORMAL

/obj/item/storage/belt/holster/ms13/sheriff/full_44/PopulateContents()
	var/static/items_inside = list(
		/obj/item/gun/ballistic/revolver/m29 = 1,
		/obj/item/ammo_box/m44 = 2)
	generate_items_inside(items_inside,src)
/obj/item/storage/belt/holster/ms13/sheriff/full_357/PopulateContents()
	var/static/items_inside = list(
		/obj/item/gun/ballistic/revolver/colt357 = 1,
		/obj/item/ammo_box/a357 = 2)
	generate_items_inside(items_inside,src)

/obj/item/storage/belt/holster/ms13/sheriff/full_357_lucky/PopulateContents()
	var/static/items_inside = list(
		/obj/item/gun/ballistic/revolver/colt357/lucky = 1,
		/obj/item/ammo_box/a357 = 2)
	generate_items_inside(items_inside,src)
