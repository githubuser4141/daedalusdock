/*PARENT ITEMS FOR REFERENCE PURPOSES. DO NOT UNCOMMENT
/obj/item/clothing/head
	name = BODY_ZONE_HEAD
	icon = 'icons/obj/clothing/hats.dmi'
	icon_state = "top_hat"
	inhand_icon_state = "that"
	body_parts_covered = HEAD
	slot_flags = ITEM_SLOT_HEAD
	var/blockTracking = 0 //For AI tracking
	var/can_toggle = null
	dynamic_hair_suffix = "+generic"
	var/datum/beepsky_fashion/beepsky_fashion //the associated datum for applying this to a secbot
	var/list/speechspan = null
	armor = list("tier" = 1)

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
/*
/obj/item/clothing/head/helmet/f13
	var/vision_flags = 0
	var/darkness_view = 2 // Base human is 2
	var/invis_view = SEE_INVISIBLE_LIVING // Admin only for now
	/// Override to allow glasses to set higher than normal see_invis
	var/invis_override = 0
	var/lighting_alpha

/obj/item/clothing/head/helmet/f13/visor_toggling()
	..()
	if(visor_vars_to_toggle & VISOR_VISIONFLAGS)
		vision_flags ^= initial(vision_flags)
	if(visor_vars_to_toggle & VISOR_DARKNESSVIEW)
		darkness_view ^= initial(darkness_view)
	if(visor_vars_to_toggle & VISOR_INVISVIEW)
		invis_view ^= initial(invis_view)
*/
//Raider

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/raider)
	default_armor = BODYARMOR_SCRAP_DECENT

/obj/item/clothing/head/helmet/f13/raider
	name = "base raider helmet"
	desc = "for testing"
	icon_state = "supafly"
	inhand_icon_state = "supafly"
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/head/helmet/f13/raider/supafly
	name = "supa-fly raider helmet"
	desc = "(IV) It's a makeshift raider helmet, made of leather. It heavily smells with chems and sweat."
	icon_state = "supafly"
	inhand_icon_state = "supafly"

/obj/item/clothing/head/helmet/f13/raider/wastehound
	name = "wastehound raider helmet"
	desc = "(IV) A sack hood made out of a suspicious leather with tufts of hair sticking out. This mask would make Leatherface proud."
	icon_state = "wastehound_hood_icon"
	inhand_icon_state = "raider_wastehound_hood"
	visor_flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/raider/arclight)
	default_armor = BODYARMOR_SCRAP_MINIMAL

/obj/item/clothing/head/helmet/f13/raider/arclight
	name = "arclight raider helmet"
	desc = "Welding mask with rare polarizing glass thats somehow still in working order. A treasured item in the wasteland."
	icon_state = "arclight"
	inhand_icon_state = "arclight"
	visor_flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	flash_protect = 2
	tint = 0.5

/obj/item/clothing/head/helmet/f13/raider/blastmaster
	name = "blastmaster raider helmet"
	desc = "A sturdy helmet to protect against both the elements and from harm, if only it was not looking in such poor condition."
	icon_state = "blastmaster"
	inhand_icon_state = "blastmaster"

/obj/item/clothing/head/helmet/f13/raider/yankee
	name = "yankee raider helmet"
	desc = "Long time ago, it has belonged to a football player, now it belongs to wasteland."
	icon_state = "yankee"
	inhand_icon_state = "yankee"
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE

/obj/item/clothing/head/helmet/f13/raider/eyebot
	name = "eyebot helmet"
	desc = "It is a dismantled eyebot, hollowed out to accommodate for a humanoid head."
	icon_state = "eyebot"
	inhand_icon_state = "eyebot"
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	strip_delay = 50
	resistance_flags = LAVA_PROOF | FIRE_PROOF

/obj/item/clothing/head/helmet/f13/raider/psychotic
	name = "psycho-tic raider helmet"
	desc = "A leather skullcap with tufts of hair sticking from each side."
	icon_state = "psychotic"
	inhand_icon_state = "psychotic"
	flags_cover = HEADCOVERSEYES
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/fiend)
	default_armor = BODYARMOR_SCRAP_DECENT

/obj/item/clothing/head/helmet/f13/fiend
	name = "fiend helmet"
	desc = "A leather cap cobbled together adorned with a bighorner skull, perfect for any drug-fueled frenzy."
	icon_state = "fiend"
	inhand_icon_state = "fiend"
	flags_inv = HIDEEARS|HIDEHAIR

TYPEINFO_DEF(/obj/head/helmet/f13/fiend_reinforced)
	default_armor = BODYARMOR_SCRAP_HEAVY

/obj/item/clothing/head/helmet/f13/fiend_reinforced
	name = "reinforced fiend helmet"
	desc = "A leather cap cobbled together adorned with a bighorner skull, perfect for any drug-fueled frenzy. This helmet has been reinforced with metal plates under its skull"
	icon_state = "fiend"
	inhand_icon_state = "fiend"
	flags_inv = HIDEEARS|HIDEHAIR

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/raidermetal)
	default_armor = BODYARMOR_SCRAP_HEAVY

/obj/item/clothing/head/helmet/f13/raidermetal
	name = "metal raider helmet"
	desc = "(V) A metal helmet, rusty and awful."
	icon_state = "raidermetal"
	inhand_icon_state = "raidermetal"
	can_toggle = TRUE
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE
	strip_delay = 80
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/raidercombathelmet)
	default_armor = BODYARMOR_STEEL_MEDIUM

/obj/item/clothing/head/helmet/f13/raidercombathelmet
	name = "combat raider helmet"
	desc = "A combat helmet modified with metal plating"
	icon_state = "raider_combat_helmet"
	inhand_icon_state = "raider_combat_helmet"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR


//Enclave

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/enclave/science)
	default_armor = BODYARMOR_THIN_CLOTHES

/obj/item/clothing/head/helmet/f13/helmet/enclave/science
	name = "science beret"
	desc = "Blue beret signifying the wearer is a Science Officer of the Enclave."
	icon_state = "hat_enclave_science"
	inhand_icon_state = "hat_enclave_science"
	flags_inv = HIDEEARS|HIDEFACE
	flags_cover = null

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/helmet/enclave/intel)
	default_armor = BODYARMOR_THICK_CLOTHES

/obj/item/clothing/head/helmet/f13/helmet/enclave/intel
	name = "intel beret"
	desc = "Dark beret issued to Intelligence Officers of the Enclave."
	icon_state = "hat_enclave_intel"
	inhand_icon_state = "hat_enclave_intel"
	flags_inv = HIDEEARS|HIDEFACE
	flags_cover = null

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/helmet/enclave/peacekeeper)
	default_armor = BODYARMOR_THICK_CLOTHES

/obj/item/clothing/head/helmet/f13/helmet/enclave/peacekeeper
	name = "peacekeeper cap"
	desc = "(IV) Reinforced field cap issued to the soldiers of the Enclave."
	icon_state = "hat_enclave_peacekeeper"
	inhand_icon_state = "hat_enclave_peacekeeper"
	flags_inv = HIDEEARS|HIDEHAIR
	strip_delay = 50

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/helmet/enclave/officer)
	default_armor = BODYARMOR_KEVLAR_MEDIUM

/obj/item/clothing/head/helmet/f13/helmet/enclave/officer
	name = "enclave officer hat"
	desc = "(VII) Wheeled hat with a cap made of light-weight alloys beneath."
	icon_state = "hat_enclave_officer"
	inhand_icon_state = "hat_enclave_officer"

//////////
//LEGION//
//////////

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/legion)
	default_armor = BODYARMOR_MEDIEVAL_MINIMAL

/obj/item/clothing/head/helmet/f13/legion
	name = "legion helmet template"
	desc = "should not exist."
	icon = 'modular_fallout/master_files/icons/fallout/clothing/hats.dmi'
	lefthand_file = ""
	righthand_file = ""
	flags_inv = HIDEEARS|HIDEHAIR
	strip_delay = 50

/obj/item/clothing/head/helmet/f13/legion/marsheaddress
	name = "priestess' headdress"
	desc = "A headdress made of feathers and decorated with two golden tassles."
	icon_state = "legion-priestess"
	inhand_icon_state = "legion-priestess"

/obj/item/clothing/head/helmet/f13/legion/recruit
	name = "legion recruit helmet"
	desc = "It's a leather skullcap issued to recruits."
	icon_state = "legion-recruit"
	inhand_icon_state = "legion-recruit"

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/legion/prime)
	default_armor = BODYARMOR_MEDIEVAL_DECENT

/obj/item/clothing/head/helmet/f13/legion/prime
	name = "legion prime helmet"
	desc = "A helmet from reinforced leather with a red peak."
	inhand_icon_state = "legion-prime"
	icon_state = "legion-prime"

/obj/item/clothing/head/helmet/f13/legion/prime/slavemaster
	name = "slavemaster helmet"
	desc = "The distinct helmet used by slavemasters."
	icon_state = "legion-slavemaster"
	inhand_icon_state = "legion-slavemaster"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR
	flags_cover = HEADCOVERSEYES
	dog_fashion = null

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/legion/vet)
	default_armor = BODYARMOR_MEDIEVAL_DECENT

/obj/item/clothing/head/helmet/f13/legion/vet
	name = "legion veteran helmet"
	desc = "It's a metal legion veteran helmet, clearly inspired by old world sports uniforms."
	icon_state = "legion-veteran"
	inhand_icon_state = "legion-veteran"

/obj/item/clothing/head/helmet/f13/legion/vet/explorer
	name = "legion explorer hood"
	desc = "It's a leather hood with metal reinforcments and built in headphones to plug the radio into."
	icon_state = "legion-explorer"
	inhand_icon_state = "legion-explorer"

/obj/item/clothing/head/helmet/f13/legion/vet/combvexil
	name = "legion bear vexillarius helmet"
	desc = "This helmet is decorated with the pelt of a ashland bear."
	icon_state = "legion-vex"
	inhand_icon_state = "legion-vex"

/obj/item/clothing/head/helmet/f13/legion/vet/vexil
	name = "legion fox vexillarius helmet"
	desc = "This helmet is decorated with the pelt of a desert fox."
	icon_state = "legion-vex-alt"
	inhand_icon_state = "legion-vex-alt"

/obj/item/clothing/head/helmet/f13/legion/vet/venator
	name = "legion venator hood"
	desc = "A leather hood with a sturdy metal skullcap and a gold bull insignia in the front."
	icon_state = "legion-venator"
	inhand_icon_state = "legion-venator"

/obj/item/clothing/head/helmet/f13/legion/recruit/decan
	name = "legion recruit decanus helmet"
	desc = "This reinforced leather helmet has a plume of black and dark red feathers."
	icon_state = "legion-decrec"
	inhand_icon_state = "legion-decrec"

/obj/item/clothing/head/helmet/f13/legion/prime/decan
	name = "legion prime decanus helmet"
	desc = "This reinforced leather helmet with a red peak has a plume of black feathers."
	inhand_icon_state = "legion-decprime"
	icon_state = "legion-decprime"

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/legion/heavy)
	default_armor = BODYARMOR_SCRAP_HEAVY

/obj/item/clothing/head/helmet/f13/legion/heavy
	name = "reinforced legion veteran decanus helmet"
	desc = "A metal helmet with ballistic visor and a plume, denoting veteran Decanus status."
	icon_state = "legion-decvet"
	inhand_icon_state = "legion-decvet"
	actions_types = list(/datum/action/item_action/toggle)

/obj/item/clothing/head/helmet/f13/legion/heavy/attack_self(mob/user)
	weldingvisortoggle(user)
	icon_state = "legion-decvetup"
	inhand_icon_state = "legion-decvetup"

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/legion/vet/decan)
	default_armor = BODYARMOR_SCRAP_HEAVY

/obj/item/clothing/head/helmet/f13/legion/vet/decan
	name = "legion veteran decanus helmet"
	desc = "It's a metal helmet with an array of red, white and black feathers, unmistakably a Veteran Decanus."
	icon_state = "legion-decvet-alt"
	inhand_icon_state = "legion-decvet-alt"

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/legion/centurion)
	default_armor = BODYARMOR_MEDIEVAL_HEAVY

/obj/item/clothing/head/helmet/f13/legion/centurion
	name = "legion centurion helmet"
	desc = "A sturdy helmet from steel and brass with a red horizontal plume."
	icon_state = "legion-centurion"
	inhand_icon_state = "legion-centurion"
	resistance_flags = LAVA_PROOF | FIRE_PROOF

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/legion/rangercent)
	default_armor = BODYARMOR_MEDIEVAL_HEAVY

/obj/item/clothing/head/helmet/f13/legion/rangercent
	name = "ranger-hunter centurion helmet"
	desc = "The helmet of an NCR ranger, refit to serve as a Centurions helmet."
	icon_state = "legion-rangercent"
	inhand_icon_state = "legion-rangercent"
	resistance_flags = LAVA_PROOF | FIRE_PROOF

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/legion/palacent)
	default_armor = BODYARMOR_STEEL_SALVAGED

/obj/item/clothing/head/helmet/f13/legion/palacent
	name = "paladin-slayer centurion helmet"
	desc = "The once-marvelous helmet of the T-45d power armor set, repurposed by the Legion into a symbol of its might. It has a large plume of red horse hair across the top of it going horizontally, donoting the rank of Centurion."
	icon_state = "legion-palacent"
	inhand_icon_state = "legion-palacent"
	resistance_flags = LAVA_PROOF | FIRE_PROOF

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/legion/legate)
	default_armor = BODYARMOR_STEEL_SALVAGED

/obj/item/clothing/head/helmet/f13/legion/legate
	name = "legion legate helmet"
	desc = "A custom forged steel full helmet complete with abstract points and arches. The face is extremely intimidating, as it was meant to be. This particular one was ordered to be forged by Caesar, given to his second legate in exchange for his undying loyalty to Caesar."
	icon_state = "legion-legate"
	inhand_icon_state = "legion-legate"
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR
	resistance_flags = LAVA_PROOF | FIRE_PROOF


/obj/item/clothing/head/f13/legion/servant
	name = "servant headwear"
	desc = "A simple uncoloured linen cloth wrapped around the head, the mark of a servant slave trained in household work."
	icon = 'modular_fallout/master_files/icons/fallout/clothing/hats.dmi'
	icon_state = "legion-servant"
	inhand_icon_state = "legion-servant"
	flags_inv = HIDEEARS|HIDEFACE
	flags_cover = null

/obj/item/clothing/head/f13/legion/auxilia
	name = "auxilia headwear"
	desc = "A soft red cap with a black band, used by female Auxilia outside camp."
	icon = 'modular_fallout/master_files/icons/fallout/clothing/hats.dmi'
	icon_state = "legion-aux"
	inhand_icon_state = "legion-aux"
	flags_inv = HIDEEARS|HIDEFACE
	flags_cover = null

/obj/item/clothing/head/helmet/f13/combat/legion
	name = "Legion combat helmet"
	desc = "An old military grade pre-war helmet, repainted to the colour scheme of Caesar's Legion."
	icon = 'modular_fallout/master_files/icons/fallout/clothing/hats.dmi'
	inhand_icon_state = "legion-combat"

/obj/item/clothing/head/helmet/f13/combat/mk2/legion
	name = "reinforced Legion combat helmet"
	desc = "A pre-war helmet in good condition, made from advanced materialas and paintend in the colors of Caesar's Legion."
	icon = 'modular_fallout/master_files/icons/fallout/clothing/hats.dmi'
	icon_state = "legion-combat2"


//NCR

TYPEINFO_DEF(/obj/item/clothing/head/f13/ncr)
	default_armor = BODYARMOR_STEEL_MEDIUM

/obj/item/clothing/head/f13/ncr
	name = "NCR trooper helmet"
	desc = "A standard issue NCR steel helmet. Looks like you can write on it and strap a few items on the helmet band."
	icon_state = "ncr_steelpot"
	inhand_icon_state = "ncr_steelpot"
	strip_delay = 50
	obj_flags = UNIQUE_RENAME
	pocket_storage_component_path = /datum/storage/concrete/pockets/tiny

/obj/item/clothing/head/f13/ncr/steelpot_goggles
	name = "NCR storm helmet"
	desc = "A standard issue NCR steel helmet, issued with an additional pair of storm goggles for weather resistance."
	icon_state = "steelpot_goggles"
	inhand_icon_state = "steelpot_goggles"
	alt_toggle_message = "You push the goggles down "
	can_toggle = 1
	flags_inv = HIDEEARS
	actions_types = list(/datum/action/item_action/toggle)
	toggle_cooldown = 0
	flags_cover = HEADCOVERSEYES
	visor_flags_cover = HEADCOVERSEYES
	dog_fashion = null

/obj/item/clothing/head/f13/ncr/steelpot_goggles/attack_self(mob/user)
	goggles_toggle(user)

/obj/item/clothing/proc/goggles_toggle(mob/user) //proc to toggle welding visors on helmets, masks, goggles, etc.
	if(!can_use(user))
		return FALSE

	visor_toggling()

	to_chat(user, span_notice("You adjust \the [src] [up ? "up" : "down"]."))
//	playsound(src.loc, "[active_sound]", 100, 0, 4)

	if(iscarbon(user))
		flags_1 ^= visor_flags
		flags_inv ^= visor_flags_inv
		flags_cover ^= visor_flags_cover
		icon_state = "[initial(icon_state)][up ? "up" : ""]"
	update_action_buttons()
	return TRUE

/obj/item/clothing/head/f13/ncr/steelpot_med
	name = "NCR medic helmet"
	desc = "A standard issue NCR steel helmet with the addition of decalling signifying a medic."
	icon_state = "steelpot_med"
	inhand_icon_state = "steelpot_med"

/obj/item/clothing/head/f13/ncr/steelpot_mp
	name = "NCR military police helmet"
	desc = "A standard issue NCR steel helmet emblazoned with the initials of the military police."
	icon_state = "steelpot_mp"
	inhand_icon_state = "steelpot_mp"

/obj/item/clothing/head/f13/ncr/steelpot_gambler
	name = "NCR gambler helmet"
	desc = "A standard issue NCR steel helmet. Stashed in the strap are decks of cards, dominoes and cigarettes for personal use."
	icon_state = "steelpot_gambler"
	inhand_icon_state = "steelpot_gambler"

/obj/item/clothing/head/f13/ncr/steelpot_bandolier
	name = "NCR bandolier helmet"
	desc = "A standard issue NCR steel helmet. This one has clearly seen heavy use, as well as having additional bullets tucked into the strap."
	icon_state = "steelpot_bandolier"
	inhand_icon_state = "steelpot_bandolier"

TYPEINFO_DEF(/obj/item/clothing/head/f13/ncr_flapcap)
	default_armor = BODYARMOR_KEVLAR_LIGHT

/obj/item/clothing/head/f13/ncr_flapcap
	name = "NCR field cap"
	desc = "A special issue canvas NCR field cap with cotton neckflap, for sun protection in arid climates."
	icon_state = "ncr_flapcap"
	inhand_icon_state = "ncr_flapcap"
	icon_state = "ncr_flapcap"
	inhand_icon_state = "ncr_flapcap"

TYPEINFO_DEF(/obj/item/clothing/head/f13/ncr_slouch)
	default_armor = BODYARMOR_KEVLAR_LIGHT

/obj/item/clothing/head/f13/ncr_slouch
	name = "NCR slouch hat"
	desc = "An irregular issue NCR sun hat, the left side of the brim is pinned to the crown for ease with shouldering rifles."
	icon_state = "ncr_slouch"
	inhand_icon_state = "ncr_slouch"

TYPEINFO_DEF(/obj/item/clothing/head/beret/ncr)
	default_armor = BODYARMOR_KEVLAR_LIGHT

/obj/item/clothing/head/beret/ncr
	name = "NCR officer beret"
	desc = "A green beret, standard issue for all commissioned NCR Officers."
	icon_state = "ncr_officer_beret"
	inhand_icon_state = "ncr_officer_beret"

/obj/item/clothing/head/beret/ncr/ncr_medic
	name = "NCR medical beret"
	desc = "A white beret, issued to officers of the medical corps."
	icon_state = "ncr_medical_beret"
	inhand_icon_state = "ncr_medical_beret"

/obj/item/clothing/head/beret/ncr_recon
	name = "NCR First Recon beret"
	desc = "A red beret, issued to members of NCR First Recon."
	icon_state = "ncr_recon_beret"
	inhand_icon_state = "ncr_recon_beret"

/obj/item/clothing/head/beret/ncr_recon/worn
	name = "Worn NCR First Recon beret"
	desc = "A red beret, issued to members of NCR First Recon. This one is worn, having been kept when a soldier was transfered from the unit."
	icon_state = "ncr_recon_beret"
	inhand_icon_state = "ncr_recon_beret"

/obj/item/clothing/head/beret/ncr_scout
	name = "NCR Third Scout beret"
	desc = "A brown beret, issued to members of the NCR Third Scout Battallion."
	icon_state = "scoutberet"
	inhand_icon_state = "scoutberet"

/obj/item/clothing/head/beret/ncr_scout_lt
	name = "NCR Third Scout officer beret"
	desc = "A brown beret, issued to officers of the NCR Third Scout Battallion."
	icon_state = "scoutberet"
	inhand_icon_state = "scoutberet"

/obj/item/clothing/head/beret/ncr_sapper
	name = "NCR Sapper beret"
	desc = "A grey beret, issued to troopers that have passed Sapper School."
	icon_state = "ncr_sapper_beret"
	inhand_icon_state = "ncr_sapper_beret"

/obj/item/clothing/head/beret/ncr_sof
	name = "NCR SOF beret"
	desc = "A tan beret, issued members of the New California Republic Special Operations Command."
	icon_state = "ncr_sof_beret"
	inhand_icon_state = "ncr_sof_beret"

TYPEINFO_DEF(/obj/item/clothing/head/f13/ncr_stetson)
	default_armor = BODYARMOR_THICK_CLOTHES

/obj/item/clothing/head/f13/ncr_stetson
	name = "NCR air cavalry stetson"
	desc = "A black brahmin leather stetson, authorized for usage amongst all troopers assigned to Air Cavalry units."
	icon_state = "ncr_stetson"
	inhand_icon_state = "ncr_stetson"

TYPEINFO_DEF(/obj/item/clothing/head/f13/ncr_cap)
	default_armor = BODYARMOR_THICK_CLOTHES

/obj/item/clothing/head/f13/ncr_cap
	name = "NCR garrison cap"
	desc = "A simple cloth garrison cap to be worn when a helmet isn't necessary."
	icon_state = "ncr_cap"
	inhand_icon_state = "ncr_cap"

TYPEINFO_DEF(/obj/item/clothing/head/f13/ncr_campaign)
	default_armor = BODYARMOR_THICK_CLOTHES

/obj/item/clothing/head/f13/ncr_campaign
	name = "NCR campaign hat"
	desc = "A khaki campaign hat, popularly used by senior NCOs in the NCRA."
	icon_state = "ncr_campaign"
	inhand_icon_state = "ncr_campaign"

TYPEINFO_DEF(/obj/item/clothing/head/beret/ncr_dresscap)
	default_armor = BODYARMOR_THICK_CLOTHES

/obj/item/clothing/head/beret/ncr_dresscap
	name = "NCR peaked cap"
	desc = "A tan peaked cap with silver pin, designated for enlisted NCRA personnel."
	icon_state = "ncr_dresscap"
	inhand_icon_state = "ncr_dresscap"

TYPEINFO_DEF(/obj/item/clothing/head/beret/ncr_codresscap)
	default_armor = BODYARMOR_THICK_CLOTHES

/obj/item/clothing/head/beret/ncr_codresscap
	name = "NCR peaked cap"
	desc = "A tan peaked cap with golden pin, designated for commissioned NCRA personnel."
	icon_state = "ncr_codresscap"
	inhand_icon_state = "ncr_codresscap"

//NCR Ranger

/obj/item/clothing/head/beret/ncr_recon_ranger
	name = "NCR Ranger scout beret"
	desc = "A brown beret, issued to members of the NCR Recon Rangers."
	icon_state = "scoutberet"
	inhand_icon_state = "scoutberet"

TYPEINFO_DEF(/obj/item/clothing/head/f13/trailranger)
	default_armor = BODYARMOR_HEAVY_CLOTHES

/obj/item/clothing/head/f13/trailranger
	name = "NCR trail ranger hat"
	desc = "A rustic, homely style cowboy hat worn by NCR trail rangers. Yeehaw!"
	icon_state = "cowboyrang"
	inhand_icon_state = "cowboyrang"

TYPEINFO_DEF(/obj/item/clothing/head/f13/ranger)
	default_armor = BODYARMOR_HEAVY_CLOTHES

/obj/item/clothing/head/f13/ranger
	name = "NCR ranger campaign hat"
	desc = "An NCR ranger hat, standard issue amongst all but the most elite rangers."
	icon_state = "rangerhat"
	inhand_icon_state = "rangerhat"

/obj/item/clothing/head/helmet/f13/combat/ncr_patrol
	name = "NCR patrol helmet"
	desc = "A combat helmet hand-manufactured in the NCR and issued to patrol rangers."
	icon_state = "ncr_patrol_helmet"
	inhand_icon_state = "ncr_patrol_helmet"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR|HIDEFACE
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH

/obj/item/clothing/head/helmet/f13/combat/ncr
	name = "NCR combat helmet"
	desc = "An old military grade pre-war combat helmet, repainted to the colour scheme of the New California Republic."
	icon_state = "ncr_helmet"
	inhand_icon_state = "ncr_helmet"

/obj/item/clothing/head/helmet/f13/combat/mk2/ncr
	name = "reinforced NCR combat helmet"
	desc = "An advanced pre-war titanium plated, ceramic coated, kevlar, padded helmet designed to withstand extreme punishment of all forms, repainted to the colour scheme of the New California Republic."
	icon_state = "ncr_helmet"
	inhand_icon_state = "ncr_helmet"

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/ncr/rangercombat)
	default_armor = BODYARMOR_MILITARY_HEAVY

/obj/item/clothing/head/helmet/f13/ncr/rangercombat
	name = "ranger combat helmet"
	desc = "An old combat helmet, out of use around the time of the war."
	icon_state = "ranger"
	inhand_icon_state = "ranger"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR|HIDEFACE
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	resistance_flags = LAVA_PROOF | FIRE_PROOF
	flash_protect = 1
	lighting_alpha = LIGHTING_PLANE_ALPHA_MOSTLY_INVISIBLE

/obj/item/clothing/head/helmet/f13/ncr/rangercombat/eliteriot
	name = "elite riot gear helmet"
	desc = "An old combat helmet seen in the divide, repurposed for higher ranking Rangers."
	icon_state = "elite_riot"
	inhand_icon_state = "elite_riot"


/obj/item/clothing/head/helmet/f13/ncr/rangercombat/desert
	name = "desert ranger combat helmet"
	desc = "An U.S Marine Corps helmet, used by the legendary Desert Rangers."
	icon_state = "desert_ranger"
	inhand_icon_state = "desert_ranger"

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/ncr/rangercombat/desert/whiskey)
	default_armor = BODYARMOR_KEVLAR_LIGHT

/obj/item/clothing/head/helmet/f13/ncr/rangercombat/desert/whiskey
	name = "weathered ranger helmet"
	desc = "A well-used desert ranger helmet passed down through generations. Though this one's stripped of night vision and it's kevlar lining, it's even more lightweight."
	lighting_alpha = null
	darkness_view = null
	flash_protect = 0
	resistance_flags = null

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/rangercombat/eliteriot/reclaimed)
	default_armor = BODYARMOR_KEVLAR_MEDIUM

/obj/item/clothing/head/helmet/f13/rangercombat/eliteriot/reclaimed
	name = "reclaimed desert ranger gear"
	desc = "A refurbished and personalized set of pre-unification desert ranger gear."
	icon_state = "desert_ranger"
	inhand_icon_state = "desert_ranger"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR|HIDEFACE
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH

//Brotherhood of Steel (PA in f13head.dm)

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/combat/brotherhood)
	default_armor = BODYARMOR_KEVLAR_RIGIDHEAVY

/obj/item/clothing/head/helmet/f13/combat/brotherhood
	name = "brotherhood helmet"
	desc = "An improved combat helmet, bearing the symbol of the Knights."
	icon_state = "brotherhood_helmet_knight"
	inhand_icon_state = "brotherhood_helmet_knight"

/obj/item/clothing/head/helmet/f13/combat/brotherhood/senior
	name = "brotherhood senior knight helmet"
	desc = "(VI) An improved combat helmet, bearing the symbol of a Senior Knight."
	icon_state = "brotherhood_helmet_senior"
	inhand_icon_state = "brotherhood_helmet_senior"

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/combat/brotherhood/captain)
	default_armor = BODYARMOR_KEVLAR_MEDIUM

/obj/item/clothing/head/helmet/f13/combat/brotherhood/captain
	name = "brotherhood head knight helmet"
	desc = "An improved combat helmet, bearing the symbol of the Head Knight."
	icon_state = "brotherhood_helmet_captain"
	inhand_icon_state = "brotherhood_helmet_captain"

/obj/item/clothing/head/helmet/f13/combat/brotherhood/initiate
	name = "initiate helmet"
	desc = "An old degraded pre-war combat helmet, repainted to the colour scheme of the Brotherhood of Steel."
	icon_state = "brotherhood_helmet"
	inhand_icon_state = "brotherhood_helmet"

/obj/item/clothing/head/helmet/f13/combat/brotherhood/initiate/mk2
	name = "reinforced knight helmet"
	desc = "An advanced pre-war titanium plated, ceramic coated, kevlar, padded helmet designed to withstand extreme punishment of all forms, repainted to the colour scheme of the Brotherhood of Steel."
	icon_state = "brotherhood_helmet"
	inhand_icon_state = "brotherhood_helmet"

/obj/item/clothing/head/helmet/f13/combat/brotherhood/outcast
	name = "brotherhood helmet"
	desc = "A combat helmet, bearing a series of red markings."
	icon_state = "brotherhood_helmet_outcast"
	inhand_icon_state = "brotherhood_helmet_outcast"

TYPEINFO_DEF(/obj/item/clothing/head/f13/boscap)
	default_armor = BODYARMOR_THICK_CLOTHES

/obj/item/clothing/head/f13/boscap
	name = "brotherhood formal cap"
	desc = "A cap typically worn with the formal uniform for the local Brotherhood of Steel Chapter."
	icon_state = "boscap"
	inhand_icon_state = "boscap"
	strip_delay = 20

/obj/item/clothing/head/f13/boscap/beret
	name = "brotherhood beret"
	desc = "(I) A beret typically worn with the standard fatigues of the local Brotherhood of Steel Chapter."
	icon_state = "bos_beret"
	inhand_icon_state = "bos_beret"

//Oasis/Town

TYPEINFO_DEF(/obj/item/clothing/head/f13/town)
	default_armor = BODYARMOR_KEVLAR_LIGHT

/obj/item/clothing/head/f13/town
	name = "town tricorn"
	desc = "Why are there tricorns in the desert again?"
	icon_state = "tricorn"
	inhand_icon_state = "dethat"
	flags_inv = HIDEHAIR

TYPEINFO_DEF(/obj/item/clothing/head/f13/town/mayor)
	default_armor = BODYARMOR_KEVLAR_MEDIUM

/obj/item/clothing/head/f13/town/mayor
	name = "mayoral tricorn"
	desc = "A tricorn in the desert.  Stranger things have happened."

/obj/item/clothing/head/f13/town/big
	name = "big hat"
	desc = "It's a big hat."
	icon_state = "bigcowboyhat"

TYPEINFO_DEF(/obj/item/clothing/head/f13/town/deputy)
	default_armor = BODYARMOR_KEVLAR_MEDIUM

/obj/item/clothing/head/f13/town/deputy
	name = "deputy hat"
	desc = "A black cowboy hat."
	icon_state = "deputyhat"

TYPEINFO_DEF(/obj/item/clothing/head/f13/town/sheriff)
	default_armor = BODYARMOR_KEVLAR_MEDIUM

/obj/item/clothing/head/f13/town/sheriff
	name = "sheriff hat"
	desc = "A black cowboy hat with a snakeskin band."
	icon_state = "sheriffhat"

TYPEINFO_DEF(/obj/item/clothing/head/f13/town/commissioner)
	default_armor = BODYARMOR_KEVLAR_MEDIUM

/obj/item/clothing/head/f13/town/commissioner
	name = "commissioner's hat"
	desc = "A blue hat with a silver badge"
	icon_state = "policehelm"

TYPEINFO_DEF(/obj/item/clothing/head/f13/det_hat_alt)
	default_armor = BODYARMOR_KEVLAR_LIGHT

/obj/item/clothing/head/f13/det_hat_alt
	name = "detective's fedora"
	desc = "There's only one man who can sniff out the dirty stench of crime, and he's likely wearing this black hat."
	icon_state = "detectivealt"
	inhand_icon_state = "fedora"
	flags_inv = HIDEHAIR

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/khan)
	default_armor = BODYARMOR_HIDES_DECENT

//KHAAAAN
/obj/item/clothing/head/helmet/f13/khan
	name = "Great Khan helmet"
	desc = "A piece of headwear commonly worn by the Great Khans that appears to resemble stereotypical traditional Mongolian helmets - likely adapted from a pre-War motorcycle helmet.<br>It is black with two horns on either side and a small spike jutting from the top, much like a pickelhaube.<br>A leather covering protects the wearer's neck and ears from sunburn."
	icon_state = "khan"
	inhand_icon_state = "khan"
	flags_inv = HIDEEARS|HIDEHAIR
	strip_delay = 20


TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/deathskull)
	default_armor = BODYARMOR_HIDES_HEAVY

//Wayfarer
/obj/item/clothing/head/helmet/f13/deathskull
	name = "eerie helm"
	desc = "A helmet fastened from the skull of a deer. Something about it doesn't look right."
	icon_state = "shamskull"
	inhand_icon_state = "shamskull"

TYPEINFO_DEF(/obj/item/clothing/head/f13/helmet/wayfarer)
	default_armor = BODYARMOR_HIDES_HEAVY

/obj/item/clothing/head/f13/helmet/wayfarer

/obj/item/clothing/head/helmet/f13/wayfarer/hunter
	name = "hunter headdress"
	desc = "Azure decorations dangle from the sturdy cap, it is sung that the wearers of these are watched over by the spirits."
	icon_state = "hunterhelm"
	inhand_icon_state = "hunterhelm"

TYPEINFO_DEF(/obj/item/clothing/ehad/helmet/f13/wayfarer/antler)
	default_armor = BODYARMOR_HIDES_DECENT

/obj/item/clothing/head/helmet/f13/wayfarer/antler
	name = "antler skullcap"
	desc = "An antler skull headdress traditionally worn by the spiritually inclined."
	icon_state = "antlerhelm"
	inhand_icon_state = "antlerhelm"

/obj/item/clothing/head/helmet/f13/wayfarer/shamanblue
	name = "ritual headdress"
	desc = "An ancient mask fashioned at the coasts of the Great Salt Water, imbued with the ancestral blessing through a long forgotten ritual."
	icon_state = "shamanblue"
	inhand_icon_state = "shamanblue"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/head/helmet/f13/wayfarer/shamanred
	name = "crimson mask"
	desc = "An uncanny helm passed down through generations, originating from a tribal culture once situated at the top of a Sonoran mesa."
	icon_state = "shamanred"
	inhand_icon_state = "shamanred"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/wayfarer/chief)
	default_armor = BODYARMOR_SCRAP_HEAVY

/obj/item/clothing/head/helmet/f13/wayfarer/chief
	name = "helm of the steady walk"
	desc = "A chief who chooses this protectron mantle embodies the defensive, a stalwart heart that protects their village above all other goals, even if it means hampering the growth of the village to do it."
	icon_state = "chiefblue"
	inhand_icon_state = "chiefblue"
	actions_types = list(/datum/action/item_action/toggle)
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/head/helmet/f13/combat/wayfarer/tribe_helmet
	name = "tribalized helmet"
	desc = "An old military grade pre-war combat helmet, repainted and re purposed with bones and sinew to worship some tribal diety."
	icon_state = "tribe_helmet"
	inhand_icon_state = "tribe_helmet"

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/wayfarer_/pa_helmet)
	default_armor = BODYARMOR_STEEL_SALVAGED

/obj/item/clothing/head/helmet/f13/wayfarer/pa_helmet
	name = "tribal full plate headdress"
	desc = "The once-marvelous helmet of the T-45d power armor set, repurposed and painted with markings of a tribe to signify its holyness to Kwer. It has dye'd feathers addoring it to make it look fierce in battle."
	icon_state = "tribal_PA_helmet"
	inhand_icon_state = "tribal_PA_helmet"
	resistance_flags = LAVA_PROOF | FIRE_PROOF

/obj/item/clothing/head/helmet/f13/wayfarer/chief/attack_self(mob/user)
	weldingvisortoggle(user)

/obj/item/clothing/head/helmet/f13/wayfarer/chief/red
	name = "helm of the piercing gaze"
	desc = "A chief who wears this assaultron helm is known for their prowess in battle, aggressiveness, intimidation and raw power in command. They are bold and strong."
	icon_state = "chiefred"
	inhand_icon_state = "chiefred"

/obj/item/clothing/head/helmet/f13/wayfarer/chief/green
	name = "helm of the helping hand"
	desc = "The many eyed helper to the village and all, the Chief that chooses this Mr. Handy based mantle is clever and kind in equal measure, they embody industry and diplomacy. Though they aren't defensive, they are surgically precise in eliminating those who oppose them."
	icon_state = "chiefgreen"
	inhand_icon_state = "chiefgreen"

//Followers

//Vault

TYPEINFO_DEF(/obj/item/clothing/head/helmet/riot/vaultsec)
	default_armor = BODYARMOR_KEVLAR_MEDIUM

/obj/item/clothing/head/helmet/riot/vaultsec
	name = "security helmet"
	desc = "A standard issue vault security helmet, pretty robust."

TYPEINFO_DEF(/obj/item/clothing/head/helmet/riot/vaultsec/vc)
	default_armor = BODYARMOR_KEVLAR_RIGIDHEAVY

/obj/item/clothing/head/helmet/riot/vaultsec/vc
	name = "vtcc riot helmet"
	desc = "A riot helmet adapted from the design of most pre-war riot helmets, painted blue."
	icon_state = "vtcc_riot_helmet"
	inhand_icon_state = "vtcc_riot_helmet"



//THE GRAVEYARD
//UNUSED or LEGACY - RETAINED IN CASE DESIRED FOR ADMIN SPAWN OR REIMPLEMENATION. MAY NOT BE EVERYTHING THAT'S UNUSED. TEST BEFORE USING
//IF PUT BACK INTO USE, PLEASE FILE IT BACK SOMEWHERE ABOVE

/obj/item/clothing/head/f13/ncr/medic
	name = "NCR medical helmet"
	desc = "A standard issue NCR Infantry helmet, colored to suit a medical officer."
	icon_state = "ncr_medical_helmet"
	inhand_icon_state = "ncr_medical_helmet"

/obj/item/clothing/head/f13/ncr/mp
	name = "NCR military police helmet"
	desc = "A standard issue NCR helmet, with the letters \"MP\" scrawled on the front."
	icon_state = "ncr_MP"
	inhand_icon_state = "ncr_MP"

/obj/item/clothing/head/f13/ncr/goggles
	name = "NCR storm helmet"
	desc = "A standard issue NCR Infantry helmet, with a pair of goggles attached to it."
	icon_state = "ncr_goggles_helmet"
	inhand_icon_state = "ncr_goggles_helmet"
	toggle_message = "You pull the goggles down under "
	alt_toggle_message = "You push the goggles up onto the "
	can_toggle = 1
	flags_inv = HIDEEARS
	actions_types = list(/datum/action/item_action/toggle)
	toggle_cooldown = 0
	flags_cover = HEADCOVERSEYES
	visor_flags_cover = HEADCOVERSEYES
	dog_fashion = null

/obj/item/clothing/head/hardhat/ncr
	name = "NCR engineer helmet"
	desc = "A standard issue NCR Infantry helmet, modified with a head lamp for engineers."
	icon_state = "hardhat_ncr"
	inhand_icon_state = "hardhat_ncr"
	//item_color = "ncr"
	flags_inv = HIDEEARS
	dog_fashion = null
	strip_delay = 50
	actions_types = list(/datum/action/item_action/toggle)

/obj/item/clothing/head/helmet/f13/khan/fullhelm
	name = "Great Khan full helmet"
	desc = "A Khan helmet modified with steel horns and a full guard comprised of red sunglass lenses and a thick metal plate to conceal the lower face."
	icon_state = "khanhelmet"
	inhand_icon_state = "khanhelmet"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	strip_delay = 20

TYPEINFO_DEF(/obj/item/clothing/head/donor/enclave)
	default_armor = BODYARMOR_KEVLAR_LIGHT

//Enclave / Remnant
/obj/item/clothing/head/donor/enclave
	name = "enclave forge cap"
	desc = "A resistant, black forage cap issued to Enclave soldiers."
	icon_state = "enclave_cap"
	inhand_icon_state = "enclave_cap"

/obj/item/clothing/head/helmet/f13/combat/enclave
	name = "enclave combat helmet"
	desc = "An intimidating helmet that is issued with it's corresponding suit."
	icon_state = "enclave_new"
	inhand_icon_state = "enclave_new"

/obj/item/clothing/head/helmet/f13/combat/remnant
	name = "remnant combat helmet"
	desc = "A dark helmet with yellow lenses, used commonly in espionage or shadow ops."
	icon_state = "remnant_helmet"
	inhand_icon_state = "remnant_helmet"

TYPEINFO_DEF(/obj/item/clothing/head/helmet/f13/envirosuit)
	default_armor = BODYARMOR_KEVLAR_HAZARD

/obj/item/clothing/head/helmet/f13/envirosuit
	name = "enclave envirosuit hood"
	icon_state = "envirohead"
	inhand_icon_state = "envirohead"
	desc = "A white hazmat helmet with a coupling system, the visor looks to be made out of orange plexiglas."
	clothing_flags = THICKMATERIAL
	flags_inv = HIDEMASK|HIDEEARS|HIDEFACE|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR
	strip_delay = 60
	equip_delay_other = 60
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH

/obj/item/clothing/head/helmet/f13/envirosuit/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/radiation_protected_clothing)

/obj/item/clothing/head/soft/f13/enclave
	name = "officer hat"
	desc = "A standard-issue Enclave officer's cap."
	icon_state = "enclave"
	//item_color = "enclave"
