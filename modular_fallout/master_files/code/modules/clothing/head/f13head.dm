/*PARENT ITEMS FOR REFERENCE PURPOSES. DO NOT UNCOMMENT

/obj/item/clothing/head
	name = BODY_ZONE_HEAD
	icon = 'modular_fallout/master_files/icons/obj/clothing/hats.dmi'
	icon_state = "top_hat"
	inhand_icon_state = "that"
	body_parts_covered = HEAD
	slot_flags = ITEM_SLOT_HEAD
	var/blockTracking = 0 //For AI tracking
	var/can_toggle = null
	dynamic_hair_suffix = "+generic"
	var/datum/beepsky_fashion/beepsky_fashion //the associated datum for applying this to a secbot
	var/list/speechspan = null

/obj/item/clothing/head/Initialize()
	. = ..()
	if(ishuman(loc) && dynamic_hair_suffix)
		var/mob/living/carbon/human/H = loc
		H.update_hair()

/obj/item/clothing/head/get_head_speechspans(mob/living/carbon/user)
	if(speechspan)
		return speechspan
	else
		return

/obj/item/clothing/head/helmet
	name = "helmet"
	desc = "Standard Security gear. Protects the head from impacts."
	icon_state = "helmet"
	inhand_icon_state = "helmet"
	armor = list("tier" = 4, ENERGY = 10, BOMB = 25, BIO = 0, RAD = 0, FIRE = 50, ACID = 50)
	flags_inv = HIDEEARS
	cold_protection = HEAD
	min_cold_protection_temperature = HELMET_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = HELMET_MAX_TEMP_PROTECT
	strip_delay = 60
	resistance_flags = NONE
	flags_cover = HEADCOVERSEYES
	flags_inv = HIDEHAIR

	dog_fashion = /datum/dog_fashion/head/helmet

/obj/item/clothing/head/helmet/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(SLOT_HEAD))*/

//Combat Armor FACTION SPECIFIC COMBAT ARMOR IN f13factionhead.dm
TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/combat)
	default_armor = BODYARMOR_MILITARY_MEDIUM

/obj/item/clothing/head/helmet/f13/combat
	name = "combat helmet"
	desc = "(V) An old military grade pre-war combat helmet."
	icon_state = "combat_helmet"
	inhand_icon_state = "combat_helmet"
	strip_delay = 50
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR
	flags_cover = HEADCOVERSEYES
	resistance_flags = LAVA_PROOF | FIRE_PROOF

/obj/item/clothing/head/helmet/f13/combat/dark
	color = "#302E2E" // Dark Grey

/obj/item/clothing/head/helmet/f13/combat/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_SPRAY_PAINTABLE, INNATE_TRAIT)

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/combat/mk2)
	default_armor = BODYARMOR_MILITARY_HEAVY

/obj/item/clothing/head/helmet/f13/combat/mk2
	name = "reinforced combat helmet"
	desc = "(VI) An advanced pre-war titanium plated, ceramic coated, kevlar, padded helmet designed to withstand extreme punishment of all forms."
	icon_state = "combat_helmet_mk2"
	inhand_icon_state = "combat_helmet_mk2"

/obj/item/clothing/head/helmet/f13/combat/mk2/dark
	name = "reinforced combat helmet"
	color = "#302E2E" // Dark Grey

/obj/item/clothing/head/helmet/f13/combat/mk2/raider
	name = "customized raider combat helmet"
	desc = "(VI) A reinforced combat helmet painted black with the laser designator removed."
	icon_state = "combat_helmet_raider"
	inhand_icon_state = "combat_helmet_raider"

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/rangerbroken)
	default_armor = BODYARMOR_WASTES_SCRAP_DECENT

/obj/item/clothing/head/helmet/f13/rangerbroken
	name = "broken riot helmet"
	icon_state = "ranger_broken"
	desc = "(VII) An old riot police helmet, out of use around the time of the war."
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR|HIDEFACE
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	resistance_flags = LAVA_PROOF | FIRE_PROOF
	flash_protect = 1

/obj/item/clothing/head/helmet/f13/combat/swat
	name = "SWAT combat helmet"
	desc = "A prewar combat helmet issued to S.W.A.T. personnel."
	icon_state = "swatsyndie"
	inhand_icon_state = "swatsyndie"

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/combat/environmental)
	default_armor = BODYARMOR_KEVLAR_MEDIUM

/obj/item/clothing/head/helmet/f13/combat/environmental
	name = "environmental armor helmet"
	desc = "(V) A full head helmet and gas mask, developed for use in heavily contaminated environments."
	icon_state = "env_helmet"
	inhand_icon_state = "env_helmet"
	armor = list("tier" = 5,ENERGY = 45, BOMB = 55, BIO = 70, RAD = 100, FIRE = 60, ACID = 50)
	strip_delay = 60
	equip_delay_other = 60
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH

/obj/item/clothing/head/helmet/f13/combat/environmental/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/radiation_protected_clothing)

//Sulphite Helm

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/sulphitehelm)
	default_armor = BODYARMOR_WASTES_SCRAP_HEAVY

/obj/item/clothing/head/helmet/f13/sulphitehelm
	name = "sulphite helmet"
	desc = "A sulphite raider helmet, affixed with thick anti-ballistic glass over the eyes."
	icon_state = "sulphite_helm"
	inhand_icon_state = "sulphite_helm"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH

//Metal

TYPEINFO_DEF(/obj/item/clothing/head/helmet/knight/f13/metal)
	default_armor = BODYARMOR_WASTES_SCRAP_DECENT

/obj/item/clothing/head/helmet/knight/f13/metal
	name = "metal helmet"
	desc = "An iron helmet forged by tribal warriors, with a unique design to protect the face from arrows and axes."
	icon_state = "metalhelmet"
	inhand_icon_state = "metalhelmet"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

TYPEINFO_DEF(/obj/item/clothing/head/helmet/knight/f13/metal/reinforced)
	default_armor = BODYARMOR_WASTES_SCRAP_HEAVY

/obj/item/clothing/head/helmet/knight/f13/metal/reinforced
	name = "reinforced metal helmet"
	desc = "An iron helmet forged by tribal warriors, with a unique design to protect the face from arrows and axes."
	icon_state = "metalhelmet_r"
	inhand_icon_state = "metalhelmet_r"

/obj/item/clothing/head/helmet/knight/f13/rider
	name = "rider helmet" //Not raider. Rider.
	desc = "It's a fancy dark metal helmet with orange spray painted flames."
	icon_state = "rider"
	inhand_icon_state = "rider"

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/metalmask)
	default_armor = BODYARMOR_WASTES_SCRAP_MINIMAL

/obj/item/clothing/head/helmet/f13/metalmask
	name = "metal mask"
	desc = "A crudely formed metal hockey mask."
	icon_state = "metal_mask"
	inhand_icon_state = "metal_mask"
	toggle_message = "You lower"
	alt_toggle_message = "You raise"
	can_toggle = 1
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE
	strip_delay = 80
	actions_types = list(/datum/action/item_action/toggle)
	toggle_cooldown = 0
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	visor_flags_inv = HIDEMASK|HIDEEYES|HIDEFACE

/obj/item/clothing/head/helmet/f13/metalmask/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_SPRAY_PAINTABLE, INNATE_TRAIT)

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/metalmask/mk2)
	default_armor = BODYARMOR_WASTES_SCRAP_MINIMAL

/obj/item/clothing/head/helmet/f13/metalmask/mk2
	name = "reinforced metal mask"
	desc = "A reinforced metal hockey mask."
	icon_state = "metal_mask2"
	inhand_icon_state = "metal_mask2"

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/tesla)
	default_armor = list(BLUNT = ARMOR_MELEE_DAGGERS, PUNCTURE = ARMOR_BALLISTIC_PISTOL, SLASH = ARMOR_MELEE_RESISTANT, LASER = ARMOR_LASER_PROOF, ENERGY = 90, BOMB = 15, BIO = 0, FIRE = 75, ACID = 50)

/obj/item/clothing/head/helmet/f13/tesla
	name = "tesla helmet"
	desc = "A prewar armor design by Nikola Tesla before being confiscated by the U.S. government. Provides high energy weapons resistance."
	icon_state = "tesla_helmet"
	inhand_icon_state = "tesla_helmet"
	strip_delay = 10
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	var/hit_reflect_chance = 50

/obj/item/clothing/head/helmet/f13/tesla/IsReflect(def_zone)
	if(def_zone != BODY_ZONE_HEAD) //If not shot where ablative is covering you, you don't get the reflection bonus!
		return FALSE
	if (prob(hit_reflect_chance))
		return TRUE

//Generic Tribal - For Wayfarer specific, see f13factionhead.dm

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/tesla)
	default_armor = list(BLUNT = ARMOR_MELEE_DAGGERS, PUNCTURE = ARMOR_BALLISTIC_PISTOL, SLASH = ARMOR_MELEE_RESISTANT, LASER = ARMOR_LASER_PROOF, ENERGY = 90, BOMB = 15, BIO = 0, FIRE = 75, ACID = 50)

/obj/item/clothing/head/helmet/f13/tribal
	name = "tribal power helmet"
	desc = "This power armor helmet was salvaged by savages from the battlefield.<br>They believe that these helmets capture the spirits of their fallen wearers, so they painted some runes on to give it a more sacred meaning."
	icon_state = "tribal"
	inhand_icon_state = "tribal"
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	strip_delay = 30

/obj/item/clothing/head/f13
	flags_inv = HIDEHAIR

/obj/item/clothing/head/f13/rastacap
	name = "rastacap"
	desc = "<font color='#157206'>Him haffi drop him fork and run,</font><br><font color='green'>Him can't stand up to Jah Jah son,</font><br><font color='#fd680e'>Him haffi lef' ya with him gun,</font><br><font color='red'>Dig off with him bomb.</font>"
	icon_state = "rastacap"
	inhand_icon_state = "fedora"
	cold_protection = HEAD //This tam brings the warm reggae and Jamaican sun with it.
	min_cold_protection_temperature = FIRE_HELM_MIN_TEMP_PROTECT

/obj/item/clothing/head/f13/hairband
	name = "hairband"
	desc = "Pretty yellow hairband"
	icon_state = "50shairband"
	inhand_icon_state = "50shairband"

/obj/item/clothing/head/f13/nursehat
	name = "nursehat"
	desc = "White cloth headdress for nurses"
	icon_state = "nursehat"
	inhand_icon_state = "nursehat"

/obj/item/clothing/head/f13/beaver
	name = "beaverkin"
	desc = "A hat made from felted beaver fur which makes the wearer feel both comfortable and elegant."
	icon_state = "beaver"
	inhand_icon_state = "that"

/obj/item/clothing/head/f13/purple
	name = "purple top hat"
	desc = "You may not own the best jail in the observed Universe, or the best chocolate factory in the entire world, but at least you can try to have that purple top hat."
	icon_state = "ptophat"
	inhand_icon_state = "that"

/obj/item/clothing/head/f13/trilby
	name = "feather trilby"
	desc = "A sharp, stylish blue hat with a feather."
	icon_state = "trilby"
	inhand_icon_state = "fedora"

//chinesearmy
/obj/item/clothing/head/f13/chinese_soldier
	name = "chinese side cap"
	desc = "A People's Liberation Army side cap, worn by enlisted and non-commissioned officers."
	icon_state = "chinese_s"
	inhand_icon_state = "secsoft"

/obj/item/clothing/head/f13/chinese_officer
	name = "chinese officer cap"
	desc = "A People's Liberation Army cap, worn by low ranking officers."
	icon_state = "chinese_o"
	inhand_icon_state = "secsoft"

/obj/item/clothing/head/f13/chinese_general
	name = "chinese peaked cap"
	desc = "A People's Liberation Army peaked cap, worn by high ranking officers and commanders."
	icon_state = "chinese_c"
	inhand_icon_state = "fedora"

/obj/item/clothing/head/f13/stormchaser
	name = "stormchaser hat"
	desc = "Home, home on the wastes,<br>Where the mole rat and the fire gecko play.<br>Where seldom is heard a discouraging word,<br>And my skin is not glowing all day."
	icon_state = "stormchaser"
	inhand_icon_state = "fedora"
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/head/f13/headscarf
	name = "headscarf"
	desc = "A piece of cloth worn on head for a variety of purposes, such as protection of the head or hair from rain, wind, dirt, cold, warmth, for sanitation, for fashion, recognition or social distinction - with religious significance, to hide baldness, out of modesty, or other forms of social convention."
	icon_state = "headscarf"
	inhand_icon_state = "dethat"
	flags_inv = HIDEMASK|HIDEEARS|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

TYPEINFO_DEF(/obj/item/clothing/head/f13/pot)
	default_armor = BODYARMOR_WASTES_SCRAP_DECENT

/obj/item/clothing/head/f13/pot
	name = "metal cooking pot"
	desc = "Step one: Start with the sauce.<br>Step two: Add the noodles.<br>Step three: Stir the pasta.<br>Step four: Turn up the heat.<br>Step five: Burn the house."
	icon_state = "pot"
	inhand_icon_state = "fedora"
	force = 20
	hitsound = 'sound/items/trayhit1.ogg'
	flags_inv = HIDEHAIR

/obj/item/clothing/head/f13/cowboy
	name = "cowboy hat"
	desc = "I've never seen so many men wasted so badly."
	icon_state = "cowboy"
	inhand_icon_state = "dethat"
	flags_inv = HIDEHAIR

/obj/item/clothing/head/f13/bandit
	name = "bandit hat"
	desc = "A black cowboy hat with a large brim that's curved to the sides.<br>A silver eagle pin is attached to the front."
	icon_state = "bandit"
	inhand_icon_state = "fedora"
	flags_inv = HIDEHAIR

/obj/item/clothing/head/f13/gambler
	name = "gambler hat"
	desc = "A perfect hat for a ramblin' gamblin' man." //But I got to ramble (ramblin' man) //Oh I got to gamble (gamblin' man) //Got to got to ramble (ramblin' man) //I was born a ramblin' gamblin' man
	icon_state = "gambler"
	inhand_icon_state = "dethat"
	flags_inv = HIDEHAIR

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/motorcycle)
	default_armor = BODYARMOR_WASTES_SCRAP_DECENT

/obj/item/clothing/head/helmet/f13/motorcycle
	name = "motorcycle helmet"
	desc = "(II) A type of helmet used by motorcycle riders.<br>The primary goal of a motorcycle helmet is motorcycle safety - to protect the rider's head during impact, thus preventing or reducing head injury and saving the rider's life."
	icon_state = "motorcycle"
	inhand_icon_state = "motorcycle"
	flags_cover = HEADCOVERSEYES
	flags_inv = HIDEMASK|HIDEEARS|HIDEHAIR
	strip_delay = 10

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/firefighter)
	default_armor = BODYARMOR_WASTES_SCRAP_DECENT

/obj/item/clothing/head/helmet/f13/firefighter
	name = "firefighter helmet"
	desc = "A firefighter's helmet worn on top of a fire-retardant covering and broken gas mask.<br>It smells heavily of sweat."
	icon_state = "firefighter"
	inhand_icon_state = "firefighter"
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_HELM_MAX_TEMP_PROTECT
	strip_delay = 30
	resistance_flags = FIRE_PROOF

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/vaquerohat)
	default_armor = BODYARMOR_THICK_CLOTHES

/obj/item/clothing/head/helmet/f13/vaquerohat
	name = "vaquero hat"
	desc = "An old sombrero worn by Vaqueros to keep off the harsh sun."
	icon_state = "vaquerohat"
	inhand_icon_state = "vaquerohat"
	flags_inv = HIDEEARS|HIDEHAIR

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/wastewarhat)
	default_armor = BODYARMOR_THICK_CLOTHES

/obj/item/clothing/head/helmet/f13/wastewarhat
	name = "warrior helmet"
	desc = "It might have been a cooking pot once, now its a helmet, with a piece of cloth covering the neck from the sun."
	icon = 'modular_fallout/master_files/icons/fallout/clothing/helmets.dmi'
	icon_state = "wastewar"
	inhand_icon_state = "wastewar"
	flags_inv = HIDEEARS|HIDEHAIR

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/hoodedmask)
	default_armor = BODYARMOR_WASTES_SCRAP_DECENT

/obj/item/clothing/head/helmet/f13/hoodedmask
	name = "hooded mask"
	desc = "A gask mask with the addition of a hood."
	icon_state = "Hooded_Gas_Mask"
	inhand_icon_state = "Hooded_Gas_Mask"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/brahmincowboyhat)
	default_armor = BODYARMOR_THICK_CLOTHES

/obj/item/clothing/head/helmet/f13/brahmincowboyhat
	name = "brahmin leather cowboy hat"
	desc = "A cowboy hat made from brahmin hides."
	icon_state = "brahmin_leather_cowboy_hat"
	inhand_icon_state = "brahmin_leather_cowboy_hat"
	flags_inv = HIDEEARS|HIDEHAIR

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/rustedcowboyhat)
	default_armor = BODYARMOR_THICK_CLOTHES

/obj/item/clothing/head/helmet/f13/rustedcowboyhat
	name = "Rusted Cowboy Hat"
	desc = "A hat made from tanned leather hide."
	icon_state = "rusted_cowboy"
	inhand_icon_state = "rusted_cowboy"
	flags_inv = HIDEEARS|HIDEHAIR

TYPEINFO_DEF(/obj/item/clothing/head/f13/police)
	default_armor = BODYARMOR_THICK_CLOTHES

/obj/item/clothing/head/f13/police
	name = "police hat"
	desc = "The wasteland's finest."
	icon_state = "retropolice"
	inhand_icon_state = "fedora"
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/head/simplekitty
	name = "kitty headband"
	desc = "A headband with a pair of cute kitty ears."
	icon_state = "kittyb"
	color = "#999999"

TYPEINFO_DEF(/obj/item/clothing/head/f13/riderw)
	default_armor = BODYARMOR_WASTES_SCRAP_DECENT

/obj/item/clothing/head/f13/riderw
	name = "Reinforced Rider Helmet" //Not raider. Rider. //Count up your sins
	desc = "It's a fancy two-tone metal helmet. It's been lined with additional plating and given a fresh coat of paint."
	icon_state = "riderw"
	inhand_icon_state = "riderw"

//Soft caps
/obj/item/clothing/head/soft/f13
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/head/soft/f13/baseball
	name = "baseball cap"
	desc = "A type of soft cap with a rounded crown and a stiff peak projecting out the front."
	icon_state = "baseballsoft"
	soft_type = "baseball"

/obj/item/clothing/head/soft/f13/utility
	name = "grey utility cover"
	desc = "An eight-pointed hat, with a visor similar to a baseball cap, known as utility cover, also called the utility cap or eight-pointed cover."
	icon_state = "utility_g"
	//item_color = "utility_g"

/obj/item/clothing/head/soft/f13/utility/navy
	name = "navy utility cover"
	icon_state = "utility_n"
	//item_color = "utility_n"

/obj/item/clothing/head/soft/f13/utility/olive
	name = "olive utility cover"
	icon_state = "utility_o"
	//item_color = "utility_o"

/obj/item/clothing/head/soft/f13/utility/tan
	name = "tan utility cover"
	icon_state = "utility_t"
	//item_color = "utility_t"


// MISC

/obj/item/clothing/head/donor/macarthur
	name = "Peaked Cap"
	desc = "A resistant, tan peaked cap, typically worn by pre-War Generals."
	icon_state = "macarthur"
	inhand_icon_state = "macarthur"

/obj/item/clothing/head/helmet/f13/ncr/rangercombat/rigscustom
	name = "11th armored calvary helmet"
	desc = "An advanced combat helmet used by the 11th Armored Calvary Regiment before the war. There is a worn and faded 11th Armored Calvary Regiment's insignia just above the visor. The helmet itself has some scratches and dents sustained from battle."
	icon_state = "rigscustom_helmet"
	inhand_icon_state = "rigscustom_helmet"
	icon = 'modular_fallout/master_files/icons/fallout/clothing/hats.dmi'

/obj/item/clothing/head/helmet/f13/ncr/rangercombat/pricecustom
	name = "spider riot helmet"
	desc = "A customised riot helmet reminiscient of the more advanced riot helmets found in the Divide, sporting purple lenses over the traditional red or green and a pair of red fangs painted over the respirator. The back of the helmet has a the face of an albino spider painted over it."
	icon_state = "price_ranger"
	inhand_icon_state = "price_ranger"

/obj/item/clothing/head/helmet/f13/ncr/rangercombat/foxcustom
	name = "reclaimed ranger-hunter combat helmet"
	desc = "A reclaimed Ranger-Hunter centurion helmet, carefully and lovingly restored to working condition with a sniper's veil wrapped around the neck. 'DE OPPRESSO LIBER' is stenciled on the front."
	icon_state = "foxranger"
	inhand_icon_state = "foxranger"
	actions_types = list(/datum/action/item_action/toggle)
	toggle_message = "You put the sniper's veil on"
	alt_toggle_message = "You take the sniper's veil off"
	can_toggle = 1
	toggle_cooldown = 0

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/ncr/rangercombat/degancustom)
	default_armor = BODYARMOR_STEEL_ROYALHEAVY

/obj/item/clothing/head/helmet/f13/ncr/rangercombat/degancustom
	name = "reclaimed ranger-hunter combat helmet"
	desc = "A reclaimed Ranger-Hunter centurion helmet, carefully and lovingly restored to working condition with a sniper's veil wrapped around the neck. 'DE OPPRESSO LIBER' is stenciled on the front."
	icon_state = "elite_riot"
	inhand_icon_state = "elite_riot"
	actions_types = list(/datum/action/item_action/toggle)
	toggle_message = "You put the sniper's veil on"
	alt_toggle_message = "You take the sniper's veil off"
	can_toggle = 1
	toggle_cooldown = 0

/obj/item/clothing/head/helmet/f13/ncr/rangercombat/mosshelmet
	name = "veteran patrol stetson"
	desc = "A weathered campaign hat tightly fitted over the viscera of a ranger combat helmet. The old stetson is faded with age and heavy use, having seen the green shores of California to the white peaks of the rockies."
	icon_state = "mosshelmet"
	inhand_icon_state = "mosshelmet"
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACE
	flags_cover = HEADCOVERSEYES

/obj/item/clothing/head/helmet/f13/power_armor/midwest/hardened
	name = "hardened midwestern power helmet"
	desc = "This helmet once belonged to the Midwestern branch of the Brotherhood of Steel, and now resides here. This particular one has gone through a chemical hardening process, increasing its armor capabilities."
	icon_state = "midwestpa_helm"
	inhand_icon_state = "midwestpa_helm"

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/jasonmask)
	default_armor = BODYARMOR_WASTES_SCRAP_DECENT

/obj/item/clothing/head/helmet/f13/jasonmask
	name = "jasons mask"
	desc = "(II) A metal mask made specifically for jason."
	icon_state = "jasonmask"
	inhand_icon_state = "jasonmask"

TYPEINFO_DEF(/obj/item/clothing/head/welding/f13/fire)
	default_armor = BODYARMOR_THICK_CLOTHES

/obj/item/clothing/head/welding/f13/fire
	name = "cremator welding helmet"
	desc = "A welding helmet with flames painted on it.<br>It sure is creepy but also badass."
	icon_state = "welding_fire"
	inhand_icon_state = "welding"
	tint = 1

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/atombeliever)
	default_armor = BODYARMOR_THICK_CLOTHES

/obj/item/clothing/head/helmet/f13/atombeliever
	name = "believer headdress"
	desc = "The headwear of the true faith."
	icon_state = "atombeliever"
	inhand_icon_state = "atombeliever"

TYPEINFO_DEF(/obj/item/clothing/head/f13/flatranger)
	default_armor = BODYARMOR_THICK_CLOTHES

/obj/item/clothing/head/f13/flatranger
	name = "NCR gambler ranger hat"
	desc = "A rustic, homely style gambler hat adorning an NCR Ranger patch. Yeehaw!"
	icon_state = "gamblerrang"
	inhand_icon_state = "gamblerrang"

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/legion/venator/diohelmet)
	default_armor = BODYARMOR_THICK_CLOTHES

/obj/item/clothing/head/helmet/f13/legion/venator/diohelmet
	name = "galerum lacertarex"
	desc = "The hide of a deadly green gecko affixed over a reinforced legion helmet. Its ghastly appearance serves as an intimidating gesture to those who do not yet fear the Lizard King."
	icon_state = "diohelmet"
	inhand_icon_state = "diohelmet"

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/herbertranger)
	default_armor = BODYARMOR_STEEL_HEAVY

/obj/item/clothing/head/helmet/f13/herbertranger
	name = "weathered desert ranger helmet"
	icon_state = "modified_usmc_riot"
	inhand_icon_state = "modified_usmc_riot"
	desc = "An ancient USMC riot helmet. This paticular piece retains the classic colouration of the legendary Desert Rangers, and looks as if it has been worn for decades; its night vision no longer seems to be functional. Scratched into the helmet is the sentence: 'Death to the Devils that simulate our freedom.'"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR|HIDEFACE
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	resistance_flags = LAVA_PROOF | FIRE_PROOF

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/marlowhat)
	default_armor = BODYARMOR_HEAVY_CLOTHES

/obj/item/clothing/head/helmet/f13/marlowhat
	name = "boss of the plains hat"
	desc = "A thick undyed felt cowboy hat, bleached from excessive sun exposure and creased from heavy usage."
	icon_state = "marlowhat"
	inhand_icon_state = "marlowhat"
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/head/f13/ranger_hat
	name = "grey cowboy hat"
	desc = "A simple grey cowboy hat."
	icon_state = "ranger_grey_hat"
	inhand_icon_state = "ranger_grey_hat"
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/head/f13/ranger_hat/banded
	name = "banded cowboy hat"
	desc = "A grey cowboy hat with a hat band decorated with brassen rings."
	icon = 'modular_fallout/master_files/icons/fallout/clothing/hats.dmi'
	icon_state = "ranger_hat_grey_banded"
	inhand_icon_state = "ranger_hat_grey_banded"

/obj/item/clothing/head/f13/ranger_hat/tan
	name = "tan cowboy hat"
	desc = "A thick tanned leather hat, with a Montana Peak crease."
	icon_state = "ranger_tan_hat"
	inhand_icon_state = "ranger_tan_hat"

/obj/item/clothing/head/f13/chinahelmetcosmetic
	name = "dysfunctional chinese stealth helmet"
	desc = "A bright yellow visor in a timelessly infamous shape makes this helmet immediately recognizable. It's non-ballistic, and it's power unit for the HUD has been long since removed."
	icon_state = "stealthhelmet"
	inhand_icon_state = "stealthhelmet"
