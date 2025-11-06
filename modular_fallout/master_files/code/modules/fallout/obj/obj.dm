/atom
	var/hitted_sound

/atom/play_attack_sound(damage_amount, damage_type = BRUTE, damage_flag = 0)
	//MOJAVE SUN EDIT START - Hit Sounds
	if(hitted_sound && damage_amount)
		playsound(src, hitted_sound, 50, TRUE)
	else if(!(hitted_sound))
		switch(damage_type)
			if(BRUTE)
				if(damage_amount)
					playsound(src, 'sound/weapons/smash.ogg', 50, TRUE)
				else
					playsound(src, 'sound/weapons/tap.ogg', 50, TRUE)
			if(BURN)
				playsound(src.loc, 'sound/items/welder.ogg', 100, TRUE)
	//MOJAVE SUN EDIT END - Hit Sounds
