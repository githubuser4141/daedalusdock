//In this document: Rifle calibre cartridges values for damage and penetration.

//////////////////////
// AMMUNITION TYPES //
//////////////////////
/*
FMJ (full metal jacket)		=	Baseline
AP (armor piercing)			=	-20% damage. AP increased by 0.2. Wound bonus -50%
JHP (jacketed hollow point)	=	+15% damage. AP reduced by 0.2 (not below zero). Wound bonus + 50%
SWC (semi wadcutter)		=	AP reduced by 0.1. Wound bonus +50%
P+ (overpressure)			=	extra speed 500. AP +25%
Match						=	extra speed 200. AP -10%. Wound bonus -10%. Damage + 10%.
Civilian round				=	-10% damage for .223. AP reduced by 50%
*/

// Explanation: Two major ammo stats, AP and Damage. Bullets placed in classes. Light rounds for example balanced with each other, one more AP, one more Damage.
// Balance between classes mostly done on the gun end, bigger rounds typically fire slower and have more recoil. They are not supposed to be totally equal either.

/*
TYPEINFO_DEF(/obj/projectile/bullet/rifle/lr22)
	default_armor = list(BLUNT = 0, PUNCTURE = 15, SLASH = 0, LASER = 0, ENERGY = 0 , BOMB = 0, BIO = 0, FIRE = 0, ACID = 0)

/obj/projectile/bullet/rifle/bmg50
	name = ".50 BMG"
	damage = 20

// Rifle grade sharp
#define BULLET_SHARP 1>>0
// Riot control
#define BULLET_ROUNDED 1>>1
// Very sharp. Tank Ammunition grade
#define BULLET_ULTRASHARP 1>>2
// Fragmented bullet tip, unpredictable performance.
#define BULLET_FRAGMENTED 1>>3
// A flat bullet head
#define BULLET_FLAT 1>>4


#define BULLET_SPEED_PISTOL -0.1
#define BULLET_SPEED_SMG -0.3
#define BULLET_SPEED_CARBINE -0.5
#define BULLET_SPEED_RIFLE -0.7
#define BULLET_SPEED_RIFLE_PLUS -0.9
#define BULLET_SPEED_SLOWED 0.1
#define BULLET_SPEED_SNAIL 0.4

#define BULLET_FOAM list(BLUNT = 0, PUNCTURE = 0, SLASH = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, FIRE = 0, ACID = 0)
#define BULLET_RUBBER list(BLUNT = 0, PUNCTURE = 5, SLASH = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, FIRE = 0, ACID = 0)
#define BULLET_FRAG list(BLUNT = 0, PUNCTURE = 15, SLASH = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, FIRE = 0, ACID = 0)
#define BULLET_FMJ list(BLUNT = 0, PUNCTURE = 30, SLASH = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, FIRE = 0, ACID = 0)
#define BULLET_SOLID list(BLUNT = 0, PUNCTURE = 60, SLASH = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, FIRE = 0, ACID = 0)
#define BULLET_HARDENED list(BLUNT = 0, PUNCTURE = 120, SLASH = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, FIRE = 0, ACID = 0)
#define BULLET_ARMOR_PIERCING list(BLUNT = 0, PUNCTURE = 200, SLASH = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, FIRE = 0, ACID = 0)
#define BULLET_ANTI_MAT list(BLUNT = 0, PUNCTURE = 350, SLASH = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, FIRE = 0, ACID = 0)
*/

////////////////////
// 5.56 MM & .223 //
////////////////////		- Moderate damage, pretty good AP. .223 civilian version for hunting/sport.

TYPEINFO_DEF(/obj/projectile/bullet/rifle)
	default_armor = BULLET_FMJ

/obj/projectile/bullet/rifle
	speed = BULLET_SPEED_RIFLE
	bulletTipType = BULLET_SHARP
	armor_penetration = 0

/obj/projectile/bullet/rifle/a556
	name = "5.56 FMJ bullet"
	damage = 35
	speed = BULLET_SPEED_RIFLE_PLUS

/obj/projectile/bullet/rifle/a556/match
	name = "5.56 match bullet"

/obj/projectile/bullet/rifle/a556/sport
	name = ".223 FMJ bullet"
	damage = 30
	speed = BULLET_SPEED_RIFLE

TYPEINFO_DEF(/obj/projectile/bullet/rifle/a556/rubber)
	default_armor = BULLET_RUBBER

/obj/projectile/bullet/rifle/a556/rubber
	name = "5.56 rubber bullet"
	damage = 10
	stamina = 25

TYPEINFO_DEF(/obj/projectile/bullet/rifle/a556/ap)
	default_armor = BULLET_ARMOR_PIERCING

/obj/projectile/bullet/rifle/a556/ap
	name = "5.56 armor-piercing bullet"
	bulletTipType = BULLET_ULTRASHARP

/obj/projectile/bullet/rifle/a556/simple //for simple mobs, separate to allow balancing
	name = "5.56 bullet"

/obj/projectile/bullet/rifle/a556/ap/simple //for simple mobs, separate to allow balancing
	name = "5.56 armor-piercing bullet"


////////////////////
// 7.62 MM & .308 //
////////////////////			- heavy rifle round, powerful but high recoil and less rof in the guns that can use it. .308 civilian version for hunting.

/obj/projectile/bullet/rifle/a762
	name = "7.62x51mm FMJ bullet"
	damage = 45

//.308 Winchester
/obj/projectile/bullet/rifle/a762/sport
	name = ".308 bullet"
	damage = 50

TYPEINFO_DEF(/obj/projectile/bullet/rifle/a762/rubber)
	default_armor = BULLET_RUBBER

/obj/projectile/bullet/rifle/a762/rubber
	name = "7.62 rubber bullet"
	damage = 15
	stamina = 30
	sharpness = NONE
	bulletTipType = BULLET_ROUNDED

/obj/projectile/bullet/rifle/a762/sport/simple //for simple mobs, separate to allow balancing
	name = ".308 bullet"

TYPEINFO_DEF(/obj/projectile/bullet/rifle/a762/ap)
	default_armor = BULLET_ARMOR_PIERCING

/obj/projectile/bullet/rifle/a762/ap
	name = "7.62x51mm armor-piercing bullet"
	speed = BULLET_SPEED_RIFLE_PLUS
	bulletTipType = BULLET_ULTRASHARP

/////////
// .50 //
/////////			-Very heavy rifle round.

TYPEINFO_DEF(/obj/projectile/bullet/rifle/a50MG)
	default_armor = BULLET_SOLID

/obj/projectile/bullet/rifle/a50MG
	name = ".50 BMG bullet"
	damage = 170

/obj/projectile/bullet/rifle/a50MG/explosive
	name = ".50 BMG explosive bullet"

/obj/projectile/bullet/rifle/a50MG/explosive/on_hit(atom/target, blocked = FALSE)
	..()
	explosion(target, 0, 1, 1, 1)

TYPEINFO_DEF(/obj/projectile/bullet/rifle/a50MG/rubber)
	default_armor = BULLET_RUBBER

/obj/projectile/bullet/rifle/a50MG/rubber
	name = ".50 BMG rubber bullet"
	damage = 50
	stamina = 80
	bulletTipType = BULLET_ROUNDED
	speed = BULLET_SPEED_CARBINE

TYPEINFO_DEF(/obj/projectile/bullet/rifle/a50MG/penetrator)
	default_armor = BULLET_ANTI_MAT

/obj/projectile/bullet/rifle/a50MG/penetrator
	name = ".50 BMG penetrator round"
	bulletTipType = BULLET_ULTRASHARP

/obj/projectile/bullet/rifle/a50MG/penetrator/slap
	name = ".50 BMG SLAP round"
	damage = 45
	speed = BULLET_SPEED_RIFLE_PLUS

//////////////////////
// 4.73 MM CASELESS //
//////////////////////			-Small rifle bullet

/obj/projectile/bullet/rifle/a473
	name = "4.73 FMJ bullet"
	damage = 25
	speed = BULLET_SPEED_RIFLE_PLUS

//////////////////////////
// 5 MM minigun special //
//////////////////////////

/obj/projectile/bullet/rifle/c5mm
	damage = 25
	speed = BULLET_SPEED_RIFLE_PLUS

/////////////////////////
//2 MM ELECTROMAGNETIC //
/////////////////////////			- Gauss rifle

TYPEINFO_DEF(/obj/projectile/bullet/rifle/c2mm)
	default_armor = BULLET_SOLID

/obj/projectile/bullet/rifle/c2mm
	name = "2mm railgun round"
	damage = 70
	speed = BULLET_SPEED_RIFLE_PLUS

TYPEINFO_DEF(/obj/projectile/bullet/rifle/c2mm/frangible)
	default_armor = BULLET_FRAG

/obj/projectile/bullet/rifle/c2mm/frangible
	name = "2mm frangible railgun round"
	bulletTipType = BULLET_FRAGMENTED

/// Musket

TYPEINFO_DEF(/obj/projectile/bullet/rifle/F13/musketball)
	default_armor = BULLET_SOLID

/obj/projectile/bullet/rifle/F13/musketball
	damage = 50
	bulletTipType = BULLET_FLAT
	speed = BULLET_SPEED_SMG