/////////////////////////////////////////////////////////////
////////////// MOJAVE SUN OBSTACLES DIRECTORY ///////////////
/////////////////////////////////////////////////////////////

//IE. Structures which are limpid but impassable, to serve more of a decorative and tactical purpose.//

//Metal Bars

TYPEINFO_DEF(/obj/structure/ms13/bars)
	default_armor = list(BLUNT = 70, PUNCTURE = 50, SLASH = 90, LASER = 50, ENERGY = 100, BOMB = 50, BIO = 100, FIRE = 100, ACID = 70)

/obj/structure/ms13/bars
	name = "metal bars"
	desc = "Sturdy metal bars."
	icon = 'mojave/icons/obstacles/tallobstacles.dmi'
	icon_state = "bars"
	density = TRUE
	anchored = TRUE
	layer = ABOVE_OBJ_LAYER
	plane = -20
	max_integrity = 650
	damage_deflection = 21 //Basically meant to encompass 20 damage weapons and below
	can_atmos_pass = CANPASS_ALWAYS
	flags_1 = ON_BORDER_1
	var/barpasschance = 33

/obj/structure/ms13/bars/deconstruct(disassembled = TRUE)
	if(!(flags_1 & NODECONSTRUCT_1))
		new /obj/item/stack/sheet/ms13/scrap_steel(loc, 4)
	qdel(src)

/obj/structure/ms13/bars/attackby(obj/item/W, mob/user, params)
	if(W.tool_behaviour == TOOL_SAW)
		user.show_message(span_notice("You begin sawing through the bars."), MSG_VISUAL)
		if(do_after(user, 45 SECONDS, target = src, interaction_key = DOAFTER_SOURCE_DECON))
			user.show_message(span_notice("You saw through the bars!"), MSG_VISUAL)
			deconstruct()
			return TRUE

/obj/structure/ms13/bars/welder_act(mob/living/user, obj/item/I)
	if(!I.tool_start_check(user, amount=0))
		return TRUE
	if(I.use_tool(src, user, 20 SECONDS, volume=80))
		deconstruct(disassembled = TRUE)
		return TRUE

/obj/structure/ms13/bars/examine(mob/user)
	. = ..()
	. += deconstruction_hints(user)

/obj/structure/ms13/bars/proc/deconstruction_hints(mob/user)
	return span_notice("You could use a <b>saw</b> or <b>welding tool</b> to cut through [src].")

/obj/structure/ms13/bars/corner
	icon_state = "barscorner"
	var/obj/cornersetter //why the hell did they limit border code to one single direction

/obj/structure/ms13/bars/slot
	icon_state = "barsslot"
	barpasschance = 90

/obj/structure/ms13/bars/rusty
	icon_state = "bars_rust"

/obj/structure/ms13/bars/corner/rusty
	icon_state = "barscorner_rust"

/obj/structure/ms13/bars/slot/rusty
	icon_state = "barsslot_rust"

/obj/structure/ms13/bars/Initialize()
	. = ..()
	var/static/list/loc_connections = list(
		COMSIG_ATOM_EXIT = PROC_REF(on_exit),
	)

	if (flags_1 & ON_BORDER_1)
		AddElement(/datum/element/connect_loc, loc_connections)
	switch(dir)
		if(SOUTH)
			layer = ABOVE_WINDOW_LAYER
		if(NORTH)
			layer = OBJ_LAYER

/obj/structure/ms13/bars/corner/Initialize()
	. = ..()
	ghostbar(FALSE)

/obj/structure/ms13/bars/corner/proc/ghostbar(destroyed)
	cornersetter = new /obj/structure/ms13/bars(loc)
	switch(dir)
		if(NORTH)
			cornersetter.dir = WEST
		if(EAST)
			cornersetter.dir = NORTH
		if(SOUTH)
			cornersetter.dir = EAST
		if(WEST)
			cornersetter.dir = SOUTH

	cornersetter.invisibility = INVISIBILITY_ABSTRACT
	if(destroyed)
		qdel(cornersetter)

/obj/structure/ms13/bars/corner/Destroy()
	. = ..()
	ghostbar(TRUE)

/proc/valid_bars_location(turf/dest_turf, test_dir)
	if(!dest_turf)
		return FALSE
	for(var/obj/turf_content in dest_turf)
		if(istype(turf_content, /obj/structure/ms13/bars))
			if((turf_content.dir == test_dir))
				return FALSE
	for(var/obj/turf_content in dest_turf)
		if(istype(turf_content, /obj/structure/simple_door/celldoor))
			if((turf_content.dir == test_dir))
				return FALSE
	return TRUE

/obj/structure/ms13/bars/CanAllowThrough(atom/movable/mover, border_dir)
	. = ..()

	if(istype(mover, /obj/projectile))
		return TRUE

	if(istype(mover, /obj/projectile/bullet))
		return TRUE

	if(istype(mover, /obj/item))
		var/obj/item/I = mover
		if(I.w_class == WEIGHT_CLASS_SMALL)
			return TRUE

	if(.)
		return

	if(ismob(mover))
		if(get_dir(loc, src) == dir)
			return

	if(border_dir == dir)
		return FALSE

	if(istype(mover, /obj/structure/ms13/bars))
		var/obj/structure/ms13/bars/moved_bars = mover
		return valid_bars_location(loc, moved_bars.dir)

	return TRUE

/obj/structure/ms13/bars/proc/on_exit(datum/source, atom/movable/leaving, direction)
	SIGNAL_HANDLER

	if(istype(leaving, /obj/projectile) && prob(barpasschance))
		return

	if(istype(leaving, /obj/projectile/bullet) && prob(barpasschance))
		return

	if(istype(leaving, /obj/item))
		var/obj/item/I = leaving
		if(I.w_class == WEIGHT_CLASS_SMALL && prob(barpasschance))
			return
		else
			return COMPONENT_ATOM_BLOCK_EXIT

	if(leaving == src)
		return // Let's not block ourselves.

	if (leaving.pass_flags & pass_flags_self)
		return

	if(direction == dir && density)
		leaving.Bump(src)
		return COMPONENT_ATOM_BLOCK_EXIT

TYPEINFO_DEF(/obj/structure/simple_door/celldoor)
	default_armor = list(BLUNT = 80, PUNCTURE = 50, SLASH = 90, LASER = 50, ENERGY = 100, BOMB = 50, BIO = 100, FIRE = 100, ACID = 70)

/obj/structure/simple_door/celldoor
	name = "cell door"
	desc = "Better hope you aren't rotting on the wrong side, slick."
	icon = 'mojave/icons/obstacles/tallobstacles.dmi'
	icon_state = "door"
	density = TRUE
	anchored = TRUE
	opacity = FALSE
	layer = ABOVE_MOB_LAYER
	max_integrity = 1000
	damage_deflection = 21
	flags_1 = ON_BORDER_1
	hitted_sound = 'mojave/sound/ms13effects/metal_door_hit.ogg'
	flags_1 = ON_BORDER_1

// BASE FENCES! //

//Base Fence - For obj interaction

TYPEINFO_DEF(/obj/structure/ms13/fence)
	default_armor = list(BLUNT = 50, PUNCTURE = 50, SLASH = 30, LASER = 50, ENERGY = 100, BOMB = 50, BIO = 100, FIRE = 100, ACID = 70)

/obj/structure/ms13/fence
	name = "base fence"
	desc = "Get this shit off the map mappa!"
	icon = 'mojave/icons/structure/fences.dmi'
	icon_state = "wirefence"
	density = TRUE
	anchored = TRUE
	plane = -20
	layer = ABOVE_OBJ_LAYER
	max_integrity = 400
	damage_deflection = 15
	can_atmos_pass = CANPASS_ALWAYS
	flags_1 = ON_BORDER_1
	hitted_sound = 'mojave/sound/ms13effects/impact/chain fence/chainfence.ogg'
	var/fencepasschance = 90
	var/basetype = /obj/structure/ms13/fence //used for corner debugging
	var/canpass = FALSE // if projectiles can go through
	var/cansqueeze = TRUE //turn off for vertical states - for people
	var/breakmats = /obj/item/stack/sheet/ms13/scrap/two //not sure this isnt a thing on everything

/obj/structure/ms13/fence/deconstruct(disassembled = TRUE)
	if(!(flags_1 & NODECONSTRUCT_1))
		playsound(src, 'mojave/sound/ms13effects/impact/chain fence/chainfence.ogg', 100, TRUE)
		new breakmats(loc)
		for(var/obj/item/I in src)
			I.forceMove(loc)
	qdel(src)

/obj/structure/ms13/fence/vertical
	icon_state = null
	flags_1 = NONE
	cansqueeze = FALSE

/obj/structure/ms13/fence/corner
	icon_state = null
	var/obj/cornersetter

/obj/structure/ms13/fence/junction
	icon_state = null
	flags_1 = NONE
	cansqueeze = FALSE

/obj/structure/ms13/fence/junction/Initialize()
	if(dir == NORTH)
		cansqueeze = TRUE
	. = ..()

/obj/structure/ms13/fence/Initialize()
	. = ..()
	var/static/list/loc_connections = list(
		COMSIG_ATOM_EXIT = PROC_REF(on_exit),
	)

	if (flags_1 & ON_BORDER_1)
		AddElement(/datum/element/connect_loc, loc_connections)
	switch(dir)
		if(SOUTH)
			layer = ABOVE_ALL_MOB_LAYER + 0.1
		if(NORTH)
			layer = OBJ_LAYER

/obj/structure/ms13/fence/corner/Initialize()
	. = ..()
	ghostfence(FALSE)

/obj/structure/ms13/fence/corner/proc/ghostfence(destroyed)
	cornersetter = new basetype(loc)
	switch(dir)
		if(NORTH)
			cornersetter.dir = SOUTH
		if(SOUTH)
			cornersetter.dir = SOUTH
		if(EAST)
			cansqueeze = FALSE
		if(WEST)
			cansqueeze = FALSE

	cornersetter.invisibility = INVISIBILITY_ABSTRACT
	if(destroyed)
		qdel(cornersetter)

/obj/structure/ms13/fence/corner/Destroy()
	. = ..()
	ghostfence(TRUE)

/proc/valid_fence_location(turf/dest_turf, test_dir)
	if(!dest_turf)
		return FALSE
	for(var/obj/turf_content in dest_turf)
		if(istype(turf_content, /obj/structure/ms13/fence))
			if((turf_content.dir == test_dir))
				return FALSE
	return TRUE

/obj/structure/ms13/fence/CanAllowThrough(atom/movable/mover, border_dir)
	. = ..()

	if(istype(mover, /obj/projectile))
		return TRUE

	if(istype(mover, /obj/projectile/bullet))
		return TRUE

	if(istype(mover, /obj/item))
		var/obj/item/I = mover
		if(I.w_class == WEIGHT_CLASS_TINY)
			return TRUE

	if(.)
		return

	if(cansqueeze)
		if(ismob(mover))
			if(get_dir(loc, src) == dir)
				return

		if(border_dir == dir)
			return FALSE

		if(istype(mover, /obj/structure/ms13/fence))
			var/obj/structure/ms13/fence/moved_fence = mover
			return valid_fence_location(loc, moved_fence.dir)

	if(!cansqueeze)
		return FALSE

	return TRUE

/obj/structure/ms13/fence/proc/on_exit(datum/source, atom/movable/leaving, direction)
	SIGNAL_HANDLER

	if(canpass)
		if(istype(leaving, /obj/projectile) && prob(fencepasschance))
			return

		if(istype(leaving, /obj/projectile/bullet) && prob(fencepasschance))
			return

		if(istype(leaving, /obj/item))
			var/obj/item/I = leaving
			if(I.w_class == WEIGHT_CLASS_TINY && prob(fencepasschance))
				return
			else
				return COMPONENT_ATOM_BLOCK_EXIT

	if(cansqueeze)
		if(istype(leaving, /obj/projectile) && prob(fencepasschance))
			return

		if(istype(leaving, /obj/projectile/bullet) && prob(fencepasschance))
			return

		if(istype(leaving, /obj/item))
			var/obj/item/I = leaving
			if(I.w_class == WEIGHT_CLASS_TINY && prob(fencepasschance))
				return

		if(leaving == src)
			return // Let's not block ourselves.

		if (leaving.pass_flags & pass_flags_self)
			return

		if(direction == dir && density)
			leaving.Bump(src)
			return COMPONENT_ATOM_BLOCK_EXIT

// WIRE FENCES! //

//Plain Wire Fence

TYPEINFO_DEF(/obj/structure/ms13/fence/wire)
	default_armor = list(BLUNT = 50, PUNCTURE = 50, SLASH = 30, LASER = 50, ENERGY = 100, BOMB = 50, BIO = 100, FIRE = 100, ACID = 70)

/obj/structure/ms13/fence/wire
	name = "wire fence"
	desc = "A basic wire fence, rusted and still standing."
	icon_state = "wirefence"
	max_integrity = 400
	damage_deflection = 15
	fencepasschance = 80
	basetype = /obj/structure/ms13/fence/wire

/obj/structure/ms13/fence/wire/end/east
	icon_state = "wirefence_end_east"

/obj/structure/ms13/fence/wire/end/west
	icon_state = "wirefence_end_west"

/obj/structure/ms13/fence/vertical/wire
	name = "wire fence"
	desc = "A basic wire fence, rusted and still standing."
	icon_state = null //purely for mapping sanity
	max_integrity = 400
	damage_deflection = 15
	fencepasschance = 80
	basetype = /obj/structure/ms13/fence/wire
	cansqueeze = FALSE

/obj/structure/ms13/fence/vertical/wire/east
	icon_state = "wirefence_east"

/obj/structure/ms13/fence/vertical/wire/west
	icon_state = "wirefence_west"

/obj/structure/ms13/fence/junction/wire
	name = "wire fence"
	desc = "A basic wire fence, rusted and still standing."
	icon_state = null //purely for mapping sanity
	max_integrity = 400
	damage_deflection = 15
	fencepasschance = 80
	basetype = /obj/structure/ms13/fence/wire
	cansqueeze = FALSE

/obj/structure/ms13/fence/junction/wire/east
	icon_state = "wirefence_east_T"

/obj/structure/ms13/fence/junction/wire/west
	icon_state = "wirefence_west_T"

/obj/structure/ms13/fence/corner/wire
	name = "wire fence"
	desc = "A basic wire fence, rusted and still standing."
	icon_state = "wirefence_corner"
	max_integrity = 400
	damage_deflection = 15
	fencepasschance = 80
	basetype = /obj/structure/ms13/fence/wire

//Wire fence door, seperated unfortunately

TYPEINFO_DEF(/obj/structure/simple_door/seethrough/fence/wire)
	default_armor = list(BLUNT = 50, PUNCTURE = 50, SLASH = 30, LASER = 50, ENERGY = 100, BOMB = 50, BIO = 100, FIRE = 100, ACID = 70)

/obj/structure/simple_door/seethrough/fence/wire
	name = "wire fence door"
	desc = "A wire fence door, the clattered gateway to freedom perhaps."
	icon_state = "wirefence_closed"
	door_type = "wirefence"
	plane = -20
	layer = ABOVE_MOB_LAYER
	damage_deflection = 15
	max_integrity = 600

/obj/structure/simple_door/seethrough/fence/deconstruct(disassembled = TRUE)
	if(!(flags_1 & NODECONSTRUCT_1))
		playsound(src, 'mojave/sound/ms13effects/metal_door_break.ogg', 100, TRUE)
		new /obj/item/stack/sheet/ms13/scrap/two(loc)
		for(var/obj/item/I in src)
			I.forceMove(loc)
	qdel(src)

/obj/machinery/door/unpowered/ms13/seethrough/fence/Initialize()
	. = ..()
	if(dir == NORTH)
		pixel_y = -8

	if(dir == SOUTH)
		pixel_y = -8

	if(dir == EAST)
		pixel_x = -16
		pixel_y = 0

	if(dir == WEST)
		pixel_x = -16
		pixel_y = 0

#warn You need to make the get_turf select a turf infront of the door's direction

/obj/structure/simple_door/seethrough/fence/Open()
	. = ..()
	if(blocked)
		for(var/atom/movable/M in get_turf(src))
			return
	plane = GAME_PLANE

/obj/structure/simple_door/seethrough/fence/Close()
	. = ..()
	if(blocked)
		for(var/atom/movable/M in get_turf(src))
			if(M.density && M != src) //something is blocking the door
				return
	plane = initial(plane)

//Barbed Wire Fence

/obj/structure/ms13/fence/wire/barb
	name = "barbed wire fence"
	desc = "A menacing wire fence, topped with rusted and deadly barbed wire."
	icon_state = "barbfence"
	max_integrity = 800 //no difference yet except its stronger
	damage_deflection = 20
	fencepasschance = 70
	basetype = /obj/structure/ms13/fence/wire/barb

/obj/structure/ms13/fence/wire/end/east/barb
	icon_state = "barbfence_end_east"

/obj/structure/ms13/fence/wire/end/west/barb
	icon_state = "barbfence_end_west"

/obj/structure/ms13/fence/vertical/wire/barb
	name = "barbed wire fence"
	desc = "A menacing wire fence, topped with rusted and deadly barbed wire."
	icon_state = null //purely for mapping sanity
	max_integrity = 800
	damage_deflection = 20
	fencepasschance = 70
	basetype = /obj/structure/ms13/fence/wire/barb
	cansqueeze = FALSE

/obj/structure/ms13/fence/vertical/wire/east/barb
	icon_state = "barbfence_east"

/obj/structure/ms13/fence/vertical/wire/west/barb
	icon_state = "barbfence_west"

/obj/structure/ms13/fence/junction/wire/barb
	name = "barbed wire fence"
	desc = "A menacing wire fence, topped with rusted and deadly barbed wire."
	icon_state = null
	max_integrity = 800
	damage_deflection = 20
	fencepasschance = 70
	basetype = /obj/structure/ms13/fence/wire/barb
	cansqueeze = FALSE

/obj/structure/ms13/fence/junction/wire/east/barb
	icon_state = "barbfence_east_T"

/obj/structure/ms13/fence/junction/wire/west/barb
	icon_state = "barbfence_west_T"

/obj/structure/ms13/fence/corner/wire/barb
	name = "barbed wire fence"
	desc = "A menacing wire fence, topped with rusted and deadly barbed wire."
	icon_state = "barbfence_corner"
	max_integrity = 800
	damage_deflection = 20
	fencepasschance = 70
	basetype = /obj/structure/ms13/fence/wire/barb

//Barbed Wire fence door

/obj/machinery/door/unpowered/ms13/seethrough/fence/wire/barb
	name = "barbed wire fence door"
	desc = "A menacing wire fence door, no jumping this one, keep out!"
	icon_state = "barbfence_closed"
//	door_type = "barbfence"
	max_integrity = 900
	damage_deflection = 20
	armor = list(MELEE = 70, BULLET = 80, LASER = 50, ENERGY = 60, BOMB = 40, BIO = 100, FIRE = 40, ACID = 100)

// Sand bags

/obj/structure/ms13/sandbag
	name = "sandbag"
	desc = "Stacked bags of material, designed to cover people from lead rain."
	icon = 'mojave/icons/structure/smooth_structures/sandbags.dmi'
	icon_state = "sandbags-0"
	base_icon_state = "sandbags"
	density = TRUE
	anchored = TRUE
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = list(SMOOTH_GROUP_MS13_SANDBAGS)
	canSmoothWith = list(SMOOTH_GROUP_MS13_SANDBAGS)
	max_integrity = 250

/obj/structure/ms13/sandbag/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/climbable)

/obj/structure/ms13/sandbag/deconstruct(disassembled = TRUE)
	if(!(flags_1 & NODECONSTRUCT_1))
		if(disassembled)
			new /obj/item/stack/sheet/ms13/cloth(loc, 3)
		else
			new /obj/item/stack/sheet/ms13/cloth(loc, 3)
	qdel(src)

/obj/structure/ms13/road_barrier
	name = "road barrier"
	desc = "A light and portable road barrier, used to direct traffic and stop people from going to dead ends."
	icon = 'mojave/icons/obstacles/barriers.dmi'
	icon_state = "road_barrier"
	density = TRUE
	max_integrity = 150
	var/hasaltstates = FALSE
	var/altstates = 0
	var/climbable = FALSE

/obj/structure/ms13/road_barrier/Initialize()
	. = ..()
	if(climbable)
		AddElement(/datum/element/climbable)
	if(!hasaltstates)
		return
	if(prob(45))
		icon_state = "[initial(icon_state)]_[rand(1,(altstates))]"

/obj/structure/ms13/road_barrier/concrete
	desc = "A heavy duty concrete road barrier, used to direct traffic and prevent going off the lane. Great to take cover behind."
	icon_state = "concrete_barrier"
	anchored = TRUE
	hasaltstates = TRUE
	climbable = TRUE
	max_integrity = 550
	altstates = 5

/obj/structure/ms13/road_barrier/concrete/alt
	desc = "A heavy duty concrete road barrier featuring a pattern that to this day is still somewhat vibrant. Used to direct traffic and prevent going off the lane."
	icon_state = "concrete_barrier_alt"
	altstates = 1

// Railings //

/obj/structure/railing/ms13
	name = "base state MS13 guard rail"
	icon = 'mojave/icons/structure/railings.dmi'
	plane = -50
	layer = CLOSED_TURF_LAYER
	max_integrity = 150
	climbable = FALSE //so we can override TG

/obj/structure/railing/ms13/Initialize()
	. = ..()
	if(dir == SOUTH)
		layer = ABOVE_ALL_MOB_LAYER
	if(dir == NORTH)
		layer = ABOVE_ALL_MOB_LAYER

	AddElement(/datum/element/climbable, climb_time = 3 SECONDS, climb_stun = 0, no_stun = TRUE, jump_over = TRUE, jump_north = 12, jump_south = 17, jump_sides = 12)

/obj/structure/railing/ms13/deconstruct(disassembled = TRUE)
	if(!(flags_1 & NODECONSTRUCT_1))
		new /obj/item/stack/sheet/ms13/scrap(loc)
	qdel(src)

/obj/structure/railing/ms13/solo
	name = "guard rail"
	desc = "A sturdy rail setup with multiple functions, including but not limited to: ensuring you dont fly off the top of a four story tall building"
	icon_state = "civ_solo"

/obj/structure/railing/ms13/solo/industrial
	desc = "A sturdy rail setup with multiple functions, including but not limited to: ensuring you dont fly off the top of a four story tall building. It's got a slick orange taint, so you know it's to workplace regulations."
	icon_state = "indus_solo"

/obj/structure/railing/ms13/sewer
	name = "guard rail"
	desc = "A rusty guard rail used to prevent you from falling into the region's sewage. Thank the lord it's there."
	icon_state = "railings_sewer"

// Fences. Huzzah! //
/obj/structure/railing/ms13/wood
	name = "wooden fence"
	desc = "A classic wooden fence. It doesn't get more homely than this."
	icon_state = "wood_full"

/obj/structure/railing/ms13/wood/Initialize()
	. = ..()
	register_context()

/obj/structure/railing/ms13/wood/crowbar_act_secondary(mob/living/user, obj/item/tool)
	if(flags_1&NODECONSTRUCT_1)
		return TRUE
	..()
	user.visible_message("<span class='notice'>[user] starts to break \the [src].</span>", \
		"<span class='notice'>You start to break \the [src].</span>", \
		"<span class='hear'>You hear splitting wood.</span>")
	tool.play_tool_sound(src)
	if(do_after(user, 10 SECONDS * tool.toolspeed, target = src, interaction_key = DOAFTER_SOURCE_DECON))
		playsound(src.loc, 'mojave/sound/ms13effects/wood_deconstruction.ogg', 50, TRUE)
		user.visible_message("<span class='notice'>[user] pries \the [src] into pieces.</span>", \
			"<span class='notice'>You pry \the [src] into pieces.</span>", \
			"<span class='hear'>You hear splitting wood.</span>")
		deconstruct(disassembled = TRUE)
		return TRUE

/obj/structure/railing/ms13/wood/deconstruct(disassembled = TRUE)
	if(!(flags_1 & NODECONSTRUCT_1))
		if(disassembled)
			new /obj/item/stack/sheet/ms13/wood/plank(loc, 3)
			new /obj/item/stack/sheet/ms13/scrap_parts(loc, 2)
		else
			new /obj/item/stack/sheet/ms13/wood/scrap_wood(loc, 2)
	qdel(src)

/obj/structure/railing/ms13/wood/examine(mob/user)
	. = ..()
	. += deconstruction_hints(user)

/obj/structure/railing/ms13/wood/proc/deconstruction_hints(mob/user)
	return span_notice("You could use a <b>crowbar</b> or similar prying tool to dismantle [src] for planks and parts.")

/obj/structure/railing/ms13/wood/add_context(atom/source, list/context, obj/item/held_item, mob/living/user)
	. = ..()

	switch (held_item?.tool_behaviour)
		if (TOOL_CROWBAR)
			context[SCREENTIP_CONTEXT_RMB] = "Dismantle"
			return CONTEXTUAL_SCREENTIP_SET

/obj/structure/railing/ms13/wood/ending
	icon_state = "wood_end"

/obj/structure/railing/ms13/wood/single
	icon_state = "wood_solo"

/obj/structure/railing/ms13/wood/snow
	name = "wooden fence"
	desc = "A classic wooden fence. It doesn't get more homely than this."
	icon_state = "wood_snow_full"

/obj/structure/railing/ms13/wood/snow/ending
	icon_state = "wood_snow_end"

/obj/structure/railing/ms13/wood/snow/single
	icon_state = "wood_snow_solo"

// Wood Barricade //

/obj/structure/ms13/barricade
	name = "wooden barricade"
	desc = "A semi-sturdy improvised wooden defense."
	icon = 'mojave/icons/obstacles/tallobstacles.dmi'
	icon_state = "barricade"
	density = TRUE
	anchored = TRUE
	layer = ABOVE_OBJ_LAYER
	max_integrity = 120
	flags_1 = ON_BORDER_1
	var/barpasschance = 20

/obj/structure/ms13/barricade/crowbar_act_secondary(mob/living/user, obj/item/tool)
	if(flags_1&NODECONSTRUCT_1)
		return TRUE
	..()
	user.visible_message("<span class='notice'>[user] starts to break \the [src].</span>", \
		"<span class='notice'>You start to break \the [src].</span>", \
		"<span class='hear'>You hear splitting wood.</span>")
	tool.play_tool_sound(src)
	if(do_after(user, 6 SECONDS * tool.toolspeed, target = src, interaction_key = DOAFTER_SOURCE_DECON))
		playsound(src.loc, 'mojave/sound/ms13effects/wood_deconstruction.ogg', 50, TRUE)
		user.visible_message("<span class='notice'>[user] pries \the [src] into pieces.</span>", \
			"<span class='notice'>You pry \the [src] into pieces.</span>", \
			"<span class='hear'>You hear splitting wood.</span>")
		deconstruct(disassembled = TRUE)
		return TRUE

/obj/structure/ms13/barricade/deconstruct(disassembled = TRUE)
	if(!(flags_1 & NODECONSTRUCT_1))
		if(disassembled)
			new /obj/item/stack/sheet/ms13/wood/plank(loc, 2)
			new /obj/item/stack/sheet/ms13/scrap_parts(loc)
		else
			new /obj/item/stack/sheet/ms13/wood/scrap_wood(loc)
	qdel(src)

/obj/structure/ms13/barricade/examine(mob/user)
	. = ..()
	. += deconstruction_hints(user)

/obj/structure/ms13/barricade/proc/deconstruction_hints(mob/user)
	return span_notice("You could use a <b>crowbar</b> or similar prying tool to dismantle [src] for planks and parts.")

/obj/structure/ms13/barricade/add_context(atom/source, list/context, obj/item/held_item, mob/living/user)
	. = ..()

	switch (held_item?.tool_behaviour)
		if (TOOL_CROWBAR)
			context[SCREENTIP_CONTEXT_RMB] = "Dismantle"
			return CONTEXTUAL_SCREENTIP_SET

/obj/structure/ms13/barricade/Initialize() //this shit should really be a component
	. = ..()
	register_context()
	var/static/list/loc_connections = list(
		COMSIG_ATOM_EXIT = PROC_REF(on_exit),
	)

	if (flags_1 & ON_BORDER_1)
		AddElement(/datum/element/connect_loc, loc_connections)
	switch(dir)
		if(SOUTH)
			layer = ABOVE_WINDOW_LAYER
		if(NORTH)
			layer = OBJ_LAYER

/proc/valid_barricade_location(turf/dest_turf, test_dir)
	if(!dest_turf)
		return FALSE
	for(var/obj/turf_content in dest_turf)
		if(istype(turf_content, /obj/structure/ms13/barricade))
			if((turf_content.dir == test_dir))
				return FALSE
	return TRUE

/obj/structure/ms13/barricade/CanAllowThrough(atom/movable/mover, border_dir)
	. = ..()

	if(istype(mover, /obj/projectile))
		return TRUE

	if(istype(mover, /obj/projectile/bullet))
		return TRUE

	if(istype(mover, /obj/item))
		var/obj/item/I = mover
		if(I.w_class == WEIGHT_CLASS_SMALL)
			return TRUE

	if(.)
		return

	if(ismob(mover))
		if(get_dir(loc, src) == dir)
			return

	if(border_dir == dir)
		return FALSE

	if(istype(mover, /obj/structure/ms13/barricade))
		var/obj/structure/ms13/barricade/moved_bars = mover
		return valid_bars_location(loc, moved_bars.dir)

	return TRUE

/obj/structure/ms13/barricade/proc/on_exit(datum/source, atom/movable/leaving, direction)
	SIGNAL_HANDLER

	if(istype(leaving, /obj/projectile) && prob(barpasschance))
		return

	if(istype(leaving, /obj/projectile/bullet) && prob(barpasschance))
		return

	if(istype(leaving, /obj/item))
		var/obj/item/I = leaving
		if(I.w_class == WEIGHT_CLASS_SMALL && prob(barpasschance))
			return
		else
			return COMPONENT_ATOM_BLOCK_EXIT

	if(leaving == src)
		return // Let's not block ourselves.

	if (leaving.pass_flags & pass_flags_self)
		return

	if(direction == dir && density)
		leaving.Bump(src)
		return COMPONENT_ATOM_BLOCK_EXIT

// Bone Piles //

/obj/structure/ms13/bonepile
	name = "pile of bones"
	desc = "A seemingly never ending pile of bones... There's been a lot of death, here."
	icon = 'mojave/icons/structure/smooth_structures/bone_pile.dmi'
	icon_state = "icon-0"
	base_icon_state = "icon"
	density = FALSE
	anchored = TRUE
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = list(SMOOTH_GROUP_MS13_BONEPILE)
	canSmoothWith = list(SMOOTH_GROUP_MS13_BONEPILE, SMOOTH_GROUP_MS13_WALL, SMOOTH_GROUP_MS13_LOW_WALL)

/obj/structure/ms13/bonepile/Initialize(mapload)
	. = ..()

	var/turf/my_turf = get_turf(loc)
	if(my_turf)
		ADD_TRAIT(my_turf, TRAIT_ADD_SLOWDOWN, STAIRS_ON_TURF)

/obj/structure/ms13/bonepile/Destroy()
	. = ..()

	var/turf/my_turf = get_turf(loc)
	if(my_turf)
		REMOVE_TRAIT(my_turf, TRAIT_REMOVE_SLOWDOWN, STAIRS_ON_TURF)

// Turnstiles //

/**
 * Turnstiles. They block movement in two directions (the two walls of the turnstile) and knock down people coming from another. Dir+180 is the intended entry direction.
 * NOTE: we only have sprites for NORTH and SOUTH turnstiles.
 *
*/
/obj/structure/ms13/turnstile
	name = "turnstile"
	desc = "You can only go one way... assuming you don't hop over."
	icon = 'mojave/icons/obstacles/turnstile.dmi'
	icon_state = "tourniquet"
	density = TRUE
	anchored = TRUE
	max_integrity = 400
	integrity_failure = 0.85

/obj/structure/ms13/turnstile/Initialize()
	. = ..()
	AddElement(/datum/element/climbable, climb_time = 1 SECONDS, climb_stun = 0, no_stun = TRUE, jump_over = TRUE)

	var/static/list/loc_connections = list(
		COMSIG_ATOM_EXIT = PROC_REF(on_exit),
		COMSIG_ATOM_ENTERED = PROC_REF(on_entered),
	)
	AddElement(/datum/element/connect_loc, loc_connections)

/// Stop people from just walking out the side
/obj/structure/ms13/turnstile/proc/on_exit(datum/source, atom/movable/leaving, direction)
	SIGNAL_HANDLER

	if(leaving == src)
		return // Let's not block ourselves.

	if((direction & dir) || (direction & turn(dir, 180)))
		return

	if (leaving.throwing)
		return

	if (leaving.movement_type & (PHASING | FLYING | FLOATING))
		return

	leaving.Bump(src)
	return COMPONENT_ATOM_BLOCK_EXIT

/// Handles flicking the rotation animation.
/obj/structure/ms13/turnstile/proc/on_entered(datum/source, atom/movable/arrived, atom/old_loc, list/atom/old_locs)
	SIGNAL_HANDLER

	if(arrived.throwing)
		return

	if(arrived.movement_type & (PHASING | FLYING | FLOATING))
		return

	// ghetto check for if we're being climbed over (which sets our density to FALSE during the step)
	if(!density)
		return

	if(!broken)
		flick("rotating", src)

/obj/structure/ms13/turnstile/CanAllowThrough(atom/movable/mover, border_dir)
	. = ..()

	if(istype(mover, /obj/projectile))
		return

	if(istype(mover, /obj/item))
		var/obj/item/I = mover
		if(I.w_class <= WEIGHT_CLASS_NORMAL)
			return TRUE

	if(ismob(mover))
		if((border_dir == turn(dir, 90)) || (border_dir == turn(dir, -90)))
			return

	if((border_dir & turn(dir, 180)) && !broken)
		if(mover.move_force >= MOVE_FORCE_STRONG)
			// 20 damage at FORCE_STRONG, +10 for every step above that
			take_damage(10 * mover.move_force / MOVE_FORCE_DEFAULT)

		// taking damage could have broken the bars
		if(!broken)
			return

	return TRUE

/obj/structure/ms13/turnstile/CanAStarPass(obj/item/card/id/ID, to_dir, atom/movable/caller)
	if ((to_dir == turn(dir, 90)) || (to_dir == turn(dir, -90)))
		return FALSE
	return ..()

/obj/structure/ms13/turnstile/atom_break()
	. = ..()
	broken = TRUE
	icon_state = "bent"

/obj/structure/ms13/turnstile/atom_fix()
	. = ..()
	broken = FALSE
	icon_state = "tourniquet"
