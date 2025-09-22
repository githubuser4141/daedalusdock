//In this document: Pistol calibre cartridges values for damage and penetration.

//////////////////////
// AMMUNITION TYPES //
//////////////////////
/*
FMJ (full metal jacket)		=	Baseline
AP (armor piercing)			=	-20% damage. AP increased by 0.2. Wound bonus -50%
JHP (jacketed hollow point)	=	+15% damage. AP reduced by 0.2 (not below zero). Wound bonus + 50%
SWC (semi wadcutter)		=	AP reduced by 0.1. Wound bonus +50%
P+ (overpressure)			=	extra speed 500. AP +25%
Match						=	extra speed 200. AP +10%. Wound bonus -10%
Civilian round				=	-10% damage. AP reduced by 50%
*/

// Explanation: Two major ammo stats, AP and Damage. Bullets placed in classes. Light rounds for example balanced with each other, one more AP, one more Damage.
// Balance between classes mostly done on the gun end, bigger rounds typically fire slower and have more recoil. They are not supposed to be totally equal either.

TYPEINFO_DEF(/obj/projectile/bullet/pistol)
	default_armor = BULLET_FMJ

/obj/projectile/bullet/pistol
	armor_penetration = 0
	speed = BULLET_SPEED_PISTOL
	bulletTipType = BULLET_ROUNDED

////////////////////
// .22 LONG RIFLE //
////////////////////		-very light round

/obj/projectile/bullet/pistol/c22
	name = ".22lr bullet"
	damage = 18

TYPEINFO_DEF(/obj/projectile/bullet/c22/rubber)
	default_armor = BULLET_RUBBER

/obj/projectile/bullet/pistol/c22/rubber
	name = ".22lr rubber bullet"
	damage = 4
	stamina = 14

/////////////////
// .38 SPECIAL //
/////////////////		-Light round

/obj/projectile/bullet/pistol/c38
	name = ".38 bullet"
	damage = 25

TYPEINFO_DEF(/obj/projectile/bullet/c38/rubber)
	default_armor = BULLET_RUBBER

/obj/projectile/bullet/pistol/c38/rubber
	name = ".38 rubber bullet"
	damage = 5
	stamina = 20


//////////
// 9 MM //
//////////				-Light round, allround


/obj/projectile/bullet/pistol/c9mm
	name = "9mm FMJ bullet"
	damage = 28

/obj/projectile/bullet/pistol/c9mm/op
	name = "9mm +P bullet"
	damage = 30

TYPEINFO_DEF(/obj/projectile/bullet/c9mm/rubber)
	default_armor = BULLET_RUBBER

/obj/projectile/bullet/pistol/c9mm/rubber
	name = "9mm rubber bullet"
	damage = 8
	stamina = 20

/obj/projectile/bullet/pistol/c9mm/wounding
	name = "9mm JHP bullet"
	bulletTipType = BULLET_FLAT

/obj/projectile/bullet/pistol/c9mm/simple //for simple mobs, separate to allow balancing
	name = "9mm bullet"


///////////
// 10 MM //
///////////				-Medium round

/obj/projectile/bullet/pistol/c10mm
	name = "10mm FMJ bullet"
	damage = 33

TYPEINFO_DEF(/obj/projectile/bullet/c10mm/rubber)
	default_armor = BULLET_RUBBER

/obj/projectile/bullet/pistol/c10mm/rubber
	name = "10mm rubber bullet"
	damage = 8
	stamina = 25

/obj/projectile/bullet/pistol/c10mm/wounding
	name = "10mm JHP bullet"
	bulletTipType = BULLET_FLAT

/////////////
// .45 ACP //
/////////////			-Medium round, damage focus

/obj/projectile/bullet/pistol/c45
	name = ".45 FMJ bullet"
	damage = 30

/obj/projectile/bullet/pistol/c45/op
	name = ".45 +P bullet"
	damage = 32
	speed = BULLET_SPEED_SMG

TYPEINFO_DEF(/obj/projectile/bullet/c45/rubber)
	default_armor = BULLET_RUBBER

/obj/projectile/bullet/pistol/c45/rubber
	name = ".45 rubber bullet"
	damage = 10
	stamina = 20

/////////////////
// .357 MAGNUM //
/////////////////		-High power round

/obj/projectile/bullet/pistol/a357
	name = ".357 FMJ bullet"
	damage = 35

/obj/projectile/bullet/pistol/a357/hp
	name = ".357 JHP bullet"
	bulletTipType = BULLET_FLAT

////////////////
// .44 MAGNUM //
////////////////		- High power round

/obj/projectile/bullet/pistol/m44
	name = ".44 FMJ bullet"
	damage = 45

/obj/projectile/bullet/pistol/m44/hp
	name = ".44 JHP bullet"
	bulletTipType = BULLET_FLAT

////////////
// .45-70 //
////////////			-Heavy round, AP focus

/obj/projectile/bullet/pistol/c4570
	name = ".45-70 weak bullet"
	damage = 35
	speed = BULLET_SPEED_PISTOL

/obj/projectile/bullet/pistol/c4570/strong
	name = ".45-70 FMJ bullet"
	damage = 60
	speed = BULLET_SPEED_CARBINE

/obj/projectile/bullet/pistol/c4570/strong/hp
	name = ".45-70 JHP bullet"
	bulletTipType = BULLET_FLAT

///////////
// 14 MM //
///////////				-Heavy round, damage focus

/obj/projectile/bullet/pistol/mm14
	name = "14mm FMJ bullet"
	damage = 60

//////////////////////
//SPECIAL AMMO TYPES//
//////////////////////

//45 Long Colt.
/obj/projectile/bullet/pistol/a45lc
	name = ".45 LC bullet"
	damage = 40

/////////////
// NEEDLER //
/////////////			- AP focus

/obj/projectile/bullet/pistol/needle
	name = "needle"
	icon_state = "cbbolt"
	damage = 15
	speed = BULLET_SPEED_RIFLE
	bulletTipType = BULLET_SHARP

/////////////
// SHRAPNEL //
/////////////

/obj/projectile/bullet/pistol/shrapnel
	name = "flying shrapnel shard"
	damage = 20
	range = 20
