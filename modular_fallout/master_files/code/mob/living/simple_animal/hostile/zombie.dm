//Base Ghoul
/mob/living/simple_animal/hostile/headcrab
	name = "feral ghoul"
	desc = "A ghoul that has lost its mind and become aggressive."
	icon = 'modular_fallout/master_files/icons/fallout/mobs/hostile/zombies.dmi'
	icon_state = "feralghoul"
	icon_living = "feralghoul"
	icon_dead = "feralghoul_dead"
	mob_biotypes = MOB_ORGANIC|MOB_HUMANOID
	robust_searching = 1
	turns_per_move = 5
	speak_emote = list("growls")
	emote_see = list("screeches")
	maxHealth = 60
	health = 60
	move_to_delay = 3
	harm_intent_damage = 8
	melee_damage_lower = 15
	melee_damage_upper = 15
	attack_verb_simple = "claw"
	attack_sound = 'sound/hallucinations/growl1.ogg'
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 20
	gold_core_spawnable = HOSTILE_SPAWN
	faction = list("hostile")
	decompose = TRUE
	sharpness = SHARP_EDGED //They need to cut their finger nails
	guaranteed_butcher_results = list(/obj/item/food/meat/slab/human/ghoul = 2,
							/obj/item/stack/sheet/animalhide/human = 1,
							/obj/item/stack/sheet/bone = 1)

	emote_taunt_sound = list('modular_fallout/master_files/sound/mobs/ghoul/taunt.ogg')
	emote_taunt = list("gurgles", "stares")
	taunt_chance = 30
	aggrosound = list('modular_fallout/master_files/sound/mobs/ghoul/aggro1.ogg', 'modular_fallout/master_files/sound/mobs/ghoul/aggro2.ogg')
	idlesound = list('modular_fallout/master_files/sound/mobs/ghoul/idle.ogg')
	deathsound = 'modular_fallout/master_files/sound/mobs/ghoul/ghoul_death.ogg'

/mob/living/simple_animal/hostile/headcrab/plain
	name = "headcrab"
	desc = "A plain headcrab. Watch out for your head!"
	icon = 'modular_fallout/master_files/icons/fallout/mobs/hostile/zombies.dmi'
	icon_state = "headcrab"
	icon_living = "headcrab"
	icon_dead = "headcrab_dead"
	maxHealth = 30
	health = 30
	move_to_delay = 5
	harm_intent_damage = 5
	melee_damage_lower = 5
	melee_damage_upper = 5
	attack_verb_simple = "bites"

/mob/living/simple_animal/hostile/headcrab/fast
	name = "fastcrab"
	desc = "A fast crab. Watch out for your head!"
	icon = 'modular_fallout/master_files/icons/fallout/mobs/hostile/zombies.dmi'
	icon_state = "fastcrab"
	icon_living = "fastcrab"
	icon_dead = "fastcrab_dead"
	maxHealth = 15
	health = 15
	move_to_delay = 2
	harm_intent_damage = 5
	melee_damage_lower = 5
	melee_damage_upper = 5
	attack_verb_simple = "bites"

/mob/living/simple_animal/hostile/headcrab/poison
	name = "headcrab"
	desc = "A venomous crab. Watch out for your head!"
	icon = 'modular_fallout/master_files/icons/fallout/mobs/hostile/zombies.dmi'
	icon_state = "poisonheadcrab"
	icon_living = "poisonheadcrab"
	icon_dead = "poisonheadcrab_dead"
	maxHealth = 75
	health = 75
	move_to_delay = 5
	harm_intent_damage = 15
	melee_damage_lower = 15
	melee_damage_upper = 15
	attack_verb_simple = "bites"
