/// Alter speech when a mob is buried in a grave
/mob/living/proc/handle_buried_speech(mob/living/carbon/speaker, list/speech_args)
	SIGNAL_HANDLER

	var/message = speech_args[SPEECH_MESSAGE]
	if(message[1] != "*")
		speech_args[SPEECH_MESSAGE] = stars(message, 40)
