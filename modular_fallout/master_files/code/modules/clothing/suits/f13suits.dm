TYPEINFO_DEF(/obj/item/clothing/suit/ghost_sheet)
	default_armor = (BODYARMOR_THIN_CLOTHES)

/obj/item/clothing/suit/ghost_sheet
	name = "ghost sheet"
	desc = "The hands float by themselves, so it's extra spooky."
	icon_state = "ghost_sheet"
	inhand_icon_state = "ghost_sheet"
	throwforce = 0
	throw_speed = 1
	throw_range = 2
	w_class = WEIGHT_CLASS_TINY
	flags_inv = HIDEGLOVES|HIDEEARS|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

//Fallout 13 various suits directory
TYPEINFO_DEF(/obj/item/clothing/suit/f13/robe_liz)
	default_armor = (BODYARMOR_HIDES_MINIMAL)

/obj/item/clothing/suit/f13/robe_liz
	name = "tan robe"
	desc = "Only a monk would find this robe nice and comfortable."
	icon_state = "robe_liz"
	inhand_icon_state = "brownjsuit"
	armor = list("tier" = 1)

TYPEINFO_DEF(/obj/item/clothing/suit/f13/mantle_liz)
	default_armor = (BODYARMOR_HIDES_DECENT)

/obj/item/clothing/suit/f13/mantle_liz
	name = "hide mantle"
	desc = "A rather grisly selection of cured hides and skin, sewn together to form a ragged mantle."
	icon_state = "mantle_liz"
	inhand_icon_state = "det_suit"
	armor = list("tier" = 1)

TYPEINFO_DEF(/obj/item/clothing/suit/f13/mfp)
	default_armor = (BODYARMOR_SCRAP_DECENT)

/obj/item/clothing/suit/f13/mfp //Mad Max 1 1979 babe!
	name = "MFP jacket"
	desc = "A Main Force Patrol leather jacket.<br>Offbeat."
	icon_state = "mfp"
	inhand_icon_state = "hostrench"

TYPEINFO_DEF(/obj/item/clothing/suit/f13/mfp/raider)
	default_armor = (BODYARMOR_SCRAP_MINIMAL)

/obj/item/clothing/suit/f13/mfp/raider
	name = "offbeat jacket"
	desc = "A black leather jacket with a single metal shoulder pad on the right side.<br>The right sleeve was obviously ripped or cut away.<br>It looks like it was originally a piece of a Main Force Patrol uniform."
	icon_state = "mfp_raider"

TYPEINFO_DEF(/obj/item/clothing/suit/f13/duster)
	default_armor = (BODYARMOR_HIDES_HEAVY)

/obj/item/clothing/suit/f13/duster
	name = "duster"
	desc = "A long brown leather overcoat.<br>A powerful accessory of fearsome bounty hunter."
	icon_state = "duster"
	inhand_icon_state = "det_suit"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS

TYPEINFO_DEF(/obj/item/clothing/suit/f13/banker)
	default_armor = (BODYARMOR_THICK_CLOTHES)

/obj/item/clothing/suit/f13/banker
	name = "bankers tailcoat"
	desc = "A long black jacket, finely crafted black leather and smooth finishings make this an extremely fancy piece of rich-mans apparel."
	icon_state = "banker"
	inhand_icon_state = "banker"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS

TYPEINFO_DEF(/obj/item/clothing/suit/f13/autumn)
	default_armor = (BODYARMOR_KEVLAR_LIGHT)

/obj/item/clothing/suit/f13/autumn //Based of Colonel Autumn's uniform.
	name = "tan trenchcoat"
	desc = "A heavy-duty tan trenchcoat typically worn by pre-War generals."
	icon_state = "autumn"
	inhand_icon_state = "autumn"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS

TYPEINFO_DEF(/obj/item/clothing/suit/f13/hubologist)
	default_armor = (BODYARMOR_HIDES_MINIMAL)

/obj/item/clothing/suit/f13/hubologist
	name = "hubologist robe"
	desc = "A black robe worn by Adepts of Hubology Studies.<br>Beware - the spirits of the dead are all around us!"
	icon_state = "hubologist"
	inhand_icon_state = "wcoat"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR
	armor = list("tier" = 1)

TYPEINFO_DEF(/obj/item/clothing/suit/f13/sexymaid)
	default_armor = (BODYARMOR_THIN_CLOTHES)

/obj/item/clothing/suit/f13/sexymaid
	name = "sexy maid outfit"
	desc = "A maid outfit that shows just a little more skin than needed for cleaning duties."
	icon_state = "sexymaid_s"
	inhand_icon_state = "sexymaid_s"
	body_parts_covered = CHEST

TYPEINFO_DEF(/obj/item/clothing/suit/f13/blacksmith_apron)
	default_armor = (BODYARMOR_HIDES_HEAVY)

/obj/item/clothing/suit/f13/blacksmith_apron
	name = "blacksmith apron"
	desc = "A heavy leather apron designed for protecting the user when metalforging."
	icon_state = "opifex_apron"
	inhand_icon_state = "opifex_apron"
	blood_overlay_type = "armor"
	allowed = list(/obj/item/crowbar,
		/obj/item/screwdriver,
		/obj/item/weldingtool,
		/obj/item/wirecutters,
		/obj/item/wrench,
		/obj/item/multitool,
		/obj/item/flashlight,
		/obj/item/stack/cable_coil,
		/obj/item/t_scanner,
		/obj/item/analyzer,
		/obj/item/geiger_counter,
		/obj/item/extinguisher/mini,
		/obj/item/radio,
		/obj/item/clothing/gloves,
		/obj/item/holosign_creator,
		/obj/item/assembly/signaler
	) //robust storage options!! -superballs

//Special Biosuit
TYPEINFO_DEF(/obj/item/clothing/suit/bio_suit/f13/hazmat)
	default_armor = (BODYARMOR_KEVLAR_HAZARD)

/obj/item/clothing/suit/bio_suit/f13/hazmat
	name = "hazmat suit"
	desc = "Yellow Level A , hazmat protective suit.<br>You can see some numbers on the tag: 35 56."
	icon = 'modular_fallout/master_files/icons/fallout/clothing/suits_utility.dmi'
	icon_state = "hazmat"
	inhand_icon_state = "hazmat"

TYPEINFO_DEF(/obj/item/clothing/head/bio_hood/f13/hazmat)
	default_armor = (BODYARMOR_KEVLAR_HAZARD)

/obj/item/clothing/head/bio_hood/f13/hazmat
	name = "hazmat hood"
	desc = "My star, my perfect silence."
	icon = 'modular_fallout/master_files/icons/fallout/clothing/hats.dmi'
	icon_state = "hazmat"
	inhand_icon_state = "hazmat_helmet"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

//Fallout 13 toggle apparel directory
TYPEINFO_DEF(/obj/item/clothing/suit/toggle/labcoat/f13/emergency)
	default_armor = (BODYARMOR_THICK_CLOTHES)

/obj/item/clothing/suit/toggle/labcoat/f13/emergency
	name = "first responder jacket"
	desc = "A high-visibility jacket worn by medical first responders."
	icon_state = "fr_jacket"
	inhand_icon_state = "fr_jacket"

TYPEINFO_DEF(/obj/item/clothing/suit/toggle/labcoat/f13/warriors)
	default_armor = (BODYARMOR_SCRAP_DECENT)

/obj/item/clothing/suit/toggle/labcoat/f13/warriors
	name = "warriors jacket"
	desc = "A red leather jacket, with the word \"Warriors\" sewn above the white wings on the back."
	icon_state = "warriors"
	inhand_icon_state = "owl"

TYPEINFO_DEF(/obj/item/clothing/suit/toggle/labcoat/f13/wanderer)
	default_armor = (BODYARMOR_HIDES_DECENT)

/obj/item/clothing/suit/toggle/labcoat/f13/wanderer
	name = "wanderer jacket"
	desc = "A zipped-up hoodie made of tanned leather."
	icon_state = "wanderer"
	inhand_icon_state = "owl"

TYPEINFO_DEF(/obj/item/clothing/suit/toggle/labcoat/f13/khan_jacket)
	default_armor = (BODYARMOR_SCRAP_HEAVY)

/obj/item/clothing/suit/toggle/labcoat/f13/khan_jacket
	name = "Great Khan jacket"
	desc = "A black leather jacket. <br>There is an illustration on the back - an aggressive, red-eyed skull wearing a fur hat with horns.<br>The skull has a mongoloid moustache - it's obviously a Great Khans emblem."
	icon_state = "khan_jacket"
	inhand_icon_state = "jensencoat"

TYPEINFO_DEF(/obj/item/clothing/suit/toggle/labcoat/f13/khan_jacket_armored)
	default_armor = (BODYARMOR_STEEL_MEDIUM)

/obj/item/clothing/suit/toggle/labcoat/f13/khan_jacket_armored
	name = "Great Khan armored jacket"
	desc = "A black leather jacket. <br>There is an illustration on the back - an aggressive, red-eyed skull wearing a fur hat with horns.<br>The skull has a mongoloid moustache - it's obviously a Great Khans emblem.<br>Protective plates have been sewn into the jacket."
	icon_state = "khan_jacket"
	inhand_icon_state = "jensencoat"

TYPEINFO_DEF(/obj/item/clothing/suit/toggle/labcoat/f13/khan/battlecoat)
	default_armor = (BODYARMOR_STEEL_MEDIUM)

/obj/item/clothing/suit/toggle/labcoat/f13/khan/battlecoat
	name = "Great Khan battle coat"
	desc = "A dark red leather coat lined with a patchwork of metal plates and padding on the inside. The back is dominated by a burning skull adorned with a horned helmet; the symbol of the Khans."
	icon_state = "khan_battlecoat"
	inhand_icon_state = "khan_battlecoat"

TYPEINFO_DEF(/obj/item/clothing/suit/toggle/labcoat/f13/followers)
	default_armor = (BODYARMOR_THICK_CLOTHES)

/obj/item/clothing/suit/toggle/labcoat/f13/followers
	name = "followers lab coat"
	desc = "A worn-down white labcoat with some wiring hanging from the right side.<br>Upon closer inspection, you can see an ancient bloodstains that could tell an entire story about thrilling adventures of a previous owner."
	icon_state = "followers"
	inhand_icon_state = "labcoat"

TYPEINFO_DEF(/obj/item/clothing/suit/armor/f13/generaluniform)
	default_armor = (BODYARMOR_KEVLAR_LIGHT)

/obj/item/clothing/suit/armor/f13/generaluniform
	name = "Yuma 1st Irregular General Uniform"
	desc = "A uniform created by Kaleb alongside the laser muskets. On the breast is a patch of the Yuma 1st Irregulars, a sun over a wasteland desert, a cactus standing lonely in the middle. It denotes him as the Leader of the militia company."
	icon_state = "gen_uniform"
	inhand_icon_state = "gen_uniform"

TYPEINFO_DEF(/obj/item/clothing/suit/hooded/cloak/desert)
	default_armor = (BODYARMOR_HIDES_DECENT)

/obj/item/clothing/suit/hooded/cloak/desert
	name = "desert cloak"
	icon_state = "desertcloak"
	desc = "A practical cloak made out of animal hide."
	hoodtype = /obj/item/clothing/head/hooded/cloakhood/desert
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS

TYPEINFO_DEF(/obj/item/clothing/head/hooded/cloakhood/desert)
	default_armor = (BODYARMOR_HIDES_DECENT)

/obj/item/clothing/head/hooded/cloakhood/desert
	name = "desert cloak hood"
	icon_state = "desertcloak"
	desc = "A protective and concealing hood."
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR

TYPEINFO_DEF(/obj/item/clothing/suit/hooded/cloak/desert/raven_cloak)
	default_armor = (BODYARMOR_HIDES_HEAVY)

/obj/item/clothing/suit/hooded/cloak/desert/raven_cloak
	name = "Raven cloak"
	desc = "A huge cloak made out of hundreds of knife-like black bird feathers. It glitters in the light, ranging from blue to dark green and purple."
	icon_state = "raven_cloak"
	inhand_icon_state = "raven_cloak"
	hoodtype = /obj/item/clothing/head/hooded/cloakhood/desert/raven_hood

TYPEINFO_DEF(/obj/item/clothing/head/hooded/cloakhood/desert/raven_hood)
	default_armor = (BODYARMOR_HIDES_HEAVY)

/obj/item/clothing/head/hooded/cloakhood/desert/raven_hood
	name = "Raven cloak hood"
	desc = "A hood fashioned out of patchwork and feathers"
	icon_state = "raven_hood"
	inhand_icon_state = "raven_hood"
