TYPEINFO_DEF(/obj/projectile/bullet/shotgun_slug)
	default_armor = BULLET_SOLID

/obj/projectile/bullet/shotgun_slug
	name = "12g shotgun slug"
	damage = 50
	spread = 2

TYPEINFO_DEF(/obj/projectile/bullet/shotgun_slug/ap)
	default_armor = BULLET_HARDENED

/obj/projectile/bullet/shotgun_slug/ap
	name = "12g shotgun armor-piercing slug"

TYPEINFO_DEF(/obj/projectile/bullet/shotgun_beanbag)
	default_armor = BULLET_RUBBER

/obj/projectile/bullet/shotgun_beanbag
	name = "beanbag slug"
	damage = 15
	stamina = 35
	bulletTipType = BULLET_FLAT

/obj/projectile/incendiary/flamethrower
	name = "FIREEEEEEEEEE!!!!!"
	icon = 'icons/effects/fire.dmi'
	icon_state = "3"
	light_outer_range = 2
	light_color = LIGHT_COLOR_FIRE
	damage_type = BURN
	damage = 12 //slight damage on impact
	range = 10

TYPEINFO_DEF(/obj/projectile/bullet/pellet)
	default_armor = BULLET_SOLID

/obj/projectile/bullet/pellet
	speed = BULLET_SPEED_PISTOL
	bulletTipType = BULLET_ROUNDED

/obj/projectile/bullet/pellet/shotgun_buckshot
	name = "buckshot pellet"
	damage = 20

/obj/projectile/bullet/pellet/shotgun_rubbershot
	name = "rubbershot pellet"
	damage = 2
	stamina = 10
	embedding = null

TYPEINFO_DEF(/obj/projectile/bullet/pellet/shotgun_provised)
	default_armor = BULLET_FMJ

/obj/projectile/bullet/pellet/shotgun_improvised
	bulletTipType = BULLET_FLAT

/obj/projectile/bullet/pellet/shotgun_improvised/Initialize()
	. = ..()
	range = rand(1, 8)

/obj/projectile/bullet/pellet/shotgun_improvised/on_range()
	do_sparks(1, TRUE, src)
	..()

/obj/projectile/bullet/pellet/magnum_buckshot
	name = "magnum buckshot pellet"
	damage = 25
