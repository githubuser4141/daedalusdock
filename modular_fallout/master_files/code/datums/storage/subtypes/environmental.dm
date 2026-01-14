// "Environmental" storage containers. Objects can be stashed away in environmental objects like machines, devices, trees, sometimes walls, etc.
// These should eventually be applied to almost nearly all objects that have a enclosed space, even if they aren't meant to be used as storage objects

// Artificial non-intentional storage objects

/datum/storage/artificial/small // VCR players, breadboxes, single drawers, small tree stumps
	max_slots = 2
	max_specific_storage =  WEIGHT_CLASS_SMALL
	max_total_storage = 4

	open_sound = 'sound/storage/toolbox.ogg'
	close_sound = 'sound/storage/toolbox.ogg'
	rustle_sound = SFX_RUSTLE

/datum/storage/artificial/medium // Microwave ovens, small A/C units, tree stumps, light posts, private post boxes
	max_slots = 8
	max_specific_storage =  WEIGHT_CLASS_NORMAL
	max_total_storage = 16

/datum/storage/artificial/large // Trees, ovens, mail boxes
	max_slots = 12
	max_specific_storage =  WEIGHT_CLASS_BULKY
	max_total_storage = 24


// Flora storage objects

/datum/storage/flora/small
	max_slots = 1
	max_specific_storage =  WEIGHT_CLASS_SMALL
	max_total_storage = 2
	attack_hand_interact = FALSE
	open_sound = 'sound/storage/toolbox.ogg' // Get plant sounds
	close_sound = 'sound/storage/toolbox.ogg'
	rustle_sound = SFX_RUSTLE

/datum/storage/flora/medium
	max_slots = 4
	max_specific_storage =  WEIGHT_CLASS_NORMAL
	max_total_storage = 8
	attack_hand_interact = FALSE

/datum/storage/flora/large
	max_slots = 6
	max_specific_storage =  WEIGHT_CLASS_BULKY
	max_total_storage = 12
	attack_hand_interact = FALSE

// Fauna storage objects

/datum/storage/fauna/small
	max_slots = 2
	max_specific_storage =  WEIGHT_CLASS_SMALL
	max_total_storage = 4

	attack_hand_interact = FALSE
	open_sound = 'sound/storage/toolbox.ogg' // Get meat sounds
	close_sound = 'sound/storage/toolbox.ogg'
	rustle_sound = SFX_RUSTLE

/datum/storage/fauna/medium
	max_slots = 6
	max_specific_storage =  WEIGHT_CLASS_NORMAL
	max_total_storage = 12
	attack_hand_interact = FALSE

/datum/storage/fauna/large
	max_slots = 10
	max_specific_storage =  WEIGHT_CLASS_BULKY
	max_total_storage = 18
	attack_hand_interact = FALSE
