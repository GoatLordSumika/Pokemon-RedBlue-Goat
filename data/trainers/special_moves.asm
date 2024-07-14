; Yellow entry format:
;	db trainerclass, trainerid
;	repeat { db partymon location, partymon move, move id }
;	db 0

SpecialTrainerMoves:
; Route 2
	db GOATLORD, 1
	db 3, 1, TACKLE
	db 3, 2, STRING_SHOT
	db 3, 3, HARDEN
	db 0

; Viridian Forest
	db BUG_CATCHER, 2
	db 1, 2, TACKLE
	db 1, 3, STRING_SHOT
	db 2, 2, POISON_STING
	db 2, 3, STRING_SHOT
	db 0

; Route 3
	db BUG_CATCHER, 4
	db 2, 2, POISON_STING
	db 2, 3, STRING_SHOT
	db 4, 2, TACKLE
	db 4, 3, STRING_SHOT
	db 0

	db BUG_CATCHER, 5
	db 1, 2, POISON_STING
	db 1, 3, STRING_SHOT
	db 0

	db BUG_CATCHER, 6
	db 1, 1, TACKLE
	db 1, 2, STRING_SHOT
	db 1, 3, HARDEN
	db 0

; Mt. Moon 1F
	db BUG_CATCHER, 7
	db 1, 1, POISON_STING
	db 1, 2, STRING_SHOT
	db 1, 3, HARDEN
	db 0

;Cerulean Gym
	db SWIMMER, 1
	db 1, 3, WATER_GUN
	db 2, 3, WATER_GUN
	db 0

	db JR_TRAINER_F, 1
	db 1, 4, WATER_GUN
	db 0

	; Route 24
	db BUG_CATCHER, 9
	db 1, 2, POISON_STING
	db 0

;Route 6
	db BUG_CATCHER, 10
	db 1, 3, MEGA_DRAIN
	db 2, 3, SUPERSONIC
	db 2, 4, MEGA_DRAIN
	db 3, 2, POISON_STING
	db 0

	db BUG_CATCHER, 11
	db 1,3, MEGA_DRAIN
	db 0

;Route 11
	db GAMBLER, 1
	db 1, 3, WATER_GUN
	db 2, 1, WATER_GUN
	db 0

	db GAMBLER, 2
	db 1, 1, VINE_WHIP
	db 1, 3, TOXIC
	db 2, 2, TOXIC
	db 0

	db GAMBLER, 3
	db 1, 4, THUNDER_WAVE
	db 2, 2, THUNDER_WAVE
	db 2, 3, FLASH
	db 0

;SS Anne
	db SAILOR, 1
	db 2, 4, WATER_GUN
	db 0

	db SAILOR, 3
	db 1, 4, WATER_GUN
	db 0

	db SAILOR, 4
	db 1, 4, WATER_GUN
	db 0

	db SAILOR, 6
	db 2, 1, WATER_GUN
	db 2, 3, WATER_GUN
	db 0

;Route 9
	db JR_TRAINER_M, 7
	db 1, 1, MEGA_DRAIN
	db 0

	db BUG_CATCHER, 13
	db 1, 2, POISON_STING
	db 1, 4, CUT
	db 2, 3, MEGA_DRAIN
	db 3, 1, CUT
	db 0

	db BUG_CATCHER, 14
	db 2, 3, MEGA_DRAIN
	db 0

	db HIKER, 5
	db 1, 4, MEGA_PUNCH
	db 0

;Route 10
	db GOATLORD, 3
	;KADABRA
	db 4, 1, CONFUSION
	;Nidoqueen
	db 5, 1, WATER_GUN
	;Gyarados
	db 6, 2, BUBBLEBEAM
	db 6, 3, BITE
	db 6, 4, BUBBLEBEAM
	db 0

;Rock Tunnel
	db JR_TRAINER_F, 9
	db 1, 4, SWIFT
	db 2, 4, EMBER
	db 0

	db JR_TRAINER_F, 10
	db 1, 1, BODY_SLAM
	db 2, 1, TACKLE
	db 0

	db JR_TRAINER_F, 17
	db 1, 2, ABSORB
	db 2, 1, BUBBLEBEAM
	db 2, 3, POUND
	db 0

	db JR_TRAINER_F, 18
	db 2, 1, VINE_WHIP
	db 2, 4, GROWTH
	db 3, 2, WATER_GUN
	db 0

	db JR_TRAINER_F, 19
	db 2, 1, MEGA_DRAIN
	db 0

	db HIKER, 9
	db 1, 4, MEGA_PUNCH
	db 0

	db HIKER, 10
	db 1, 4, MEGA_PUNCH
	db 0

	db HIKER, 12
	db 1, 4, MEGA_PUNCH
	db 0

	db HIKER, 13
	db 3, 4, MEGA_PUNCH
	db 0

	db HIKER, 14
	db 2, 4, MEGA_PUNCH
	db 0

	db POKEMANIAC, 3
	db 1, 1, SCRATCH
	db 3, 1, TACKLE
	db 0

	db POKEMANIAC, 4
	db 1, 4, WRAP
	db 2, 4, HORN_ATTACK
	db 0

;Route 10 - After Rock Tunnel
	db JR_TRAINER_F, 8
	db 2, 2, SWIFT
	db 0

;Route 12
	db FISHER, 3
	;GOLDEEN
	db 1, 2, WATER_GUN
	db 0

	db FISHER, 4
	;TENTACOOL
	db 1, 3, ACID
	db 0

	db FISHER, 5
	;GOLDEEN
	db 1, 2, WATER_GUN
	db 0

	db FISHER, 6
	;HORSEA
	db 1, 1, WATER_GUN
	db 1, 3, WATER_GUN
	;PSYDUCK
	db 3, 3, WATER_GUN
	;GYARADOS
	db 4, 2, TACKLE
	db 4, 3, SPLASH
	db 4, 4, BITE
	db 0

;Route 8
	db LASS, 13
	;NIDORINA
	db 2, 1, BODY_SLAM
	db 2, 2, BODY_SLAM
	db 2, 4, BODY_SLAM
	db 0

	db LASS, 16
	;JIGGLYPUFF
	db 1, 2, WATER_GUN
	db 1, 4, SING
	;CLEFAIRY
	db 3, 3, MEGA_PUNCH
	db 0

	db SUPER_NERD, 3
	;GEODUDE
	db 2, 4, MEGA_PUNCH
	;VOLTORB
	db 4, 2, THUNDERBOLT
	db 4, 4, THUNDER_WAVE
	db 0

	db SUPER_NERD, 4
	;GRIMER
	db 1, 3, MEGA_DRAIN
	;KABUTO
	db 2, 3, WATER_GUN
	db 0

	db SUPER_NERD, 5
	;GRIMER
	db 1, 2, ICE_BEAM
	db 0

	db GAMBLER, 5
	;SEEL
	db 1, 2, WATER_GUN
	;KRABBY
	db 2, 1, WATER_GUN
	db 2, 3, CUT
	;POLIWHIRL
	db 3, 1, DOUBLESLAP
	db 0

;Rocket Hideout
	db ROCKET, 10
	;CLEFAIRY
	db 1, 1, BUBBLEBEAM
	db 1, 3, STRENGTH
	db 0

	db ROCKET, 13
	;CUBONE
	db 1, 3, STRENGTH
	db 0

	db ROCKET, 14
	;DODUO
	db 1, 1, FLY
	db 0

	db ROCKET, 15
	;SEAKING
	db 1, 2, BUBBLEBEAM
	db 0

	db ROCKET, 16
	;VULPIX
	db 1, 4, DIG
	db 0

	db GIOVANNI, 1
	;NIDORINA
	db 1, 1, TAKE_DOWN
	;NIDORINO
	db 2, 4, DOUBLE_EDGE
	;RHYHORN
	db 3, 2, DIG
	db 3, 3, ROCK_SLIDE
	;KANGASKHAN
	db 4, 1, MEGA_KICK
	db 4, 2, BODY_SLAM
	db 0

;Celadon Gym
	db LASS, 17
	;BELLSPROUT
	db 1, 1, MEGA_DRAIN
	db 1, 2, GROWTH
	;GLOOM
	db 2, 1, MEGA_DRAIN
	db 2, 3, ACID
	db 0

	db LASS, 18
	;ODDISH
	db 1, 2, MEGA_DRAIN
	;WEEPINBELL
	db 1, 1, MEGA_DRAIN
	db 1, 2, GROWTH
	db 0

	db JR_TRAINER_F, 11
	;TANGELA
	db 1, 1, MEGA_DRAIN
	;IVYSAUR
	db 2, 1, TACKLE
	db 2, 3, MEGA_DRAIN
	db 0

	db BEAUTY, 1
	;TANGELA
	db 1, 1, MEGA_DRAIN
	;BULBASAUR
	db 2, 1, TACKLE
	db 2, 3, MEGA_DRAIN
	;BELLSPROUT
	db 3, 1, MEGA_DRAIN
	db 3, 2, 
	;ODDISH
	db 4, 2, MEGA_DRAIN
	db 0

	db BEAUTY, 2
	;WEEPINBELL
	db 1, 1, MEGA_DRAIN
	db 1, 2, GROWTH
	;GLOOM
	db 2, 1, MEGA_DRAIN
	db 2, 3, ACID
	db 0

	db COOLTRAINER_F, 1
	;WEEPINBELL
	db 1, 1, MEGA_DRAIN
	db 1, 2, GROWTH
	;GLOOM
	db 2, 1, MEGA_DRAIN
	db 2, 3, ACID
	;IVYSAUR
	db 3, 1, TACKLE
	db 3, 3, MEGA_DRAIN
	;PARASECT
	db 4, 4, MEGA_DRAIN
	db 0

	db BROCK, 1
	db 2, 3, BIDE
	db 0

	db MISTY, 1
	db 1, 2, WATER_GUN
	db 2, 4, BUBBLEBEAM
	db 0

	db LT_SURGE, 1
	;VOLTORB
	db 2, 4, THUNDER_WAVE
	;MAGNEMITE
	db 3, 3, THUNDER_WAVE
	;RAICHU
	db 4, 1, THUNDERBOLT
	db 4, 4, QUICK_ATTACK
	db 0

	db ERIKA, 1
	;TANGELA
	db 1, 1, MEGA_DRAIN
	db 1, 3, TAKE_DOWN
	;IVYSAUR
	db 2, 1, MEGA_DRAIN
	db 2, 2, SOLARBEAM
	db 2, 3, TAKE_DOWN
	;VICTREEBEL
	;db 3, 2, ACID
	;db 3, 3, STUN_SPORE
	;VILEPLUME
	;db 4, 3, ACID
	db 0

	db KOGA, 1
	db 1, 4, TOXIC
	db 2, 1, TOXIC
	db 2, 3, ROCK_SLIDE
	db 2, 4, DIG
	db 3, 1, TOXIC
	db 3, 2, MEGA_DRAIN
	db 3, 4, PSYBEAM
	db 4, 1, ACID
	db 4, 2, BUBBLEBEAM
	db 4, 3, SUPERSONIC
	db 4, 4, TOXIC
	db 5, 1, TOXIC
	db 5, 2, BODY_SLAM
	db 6, 1, TOXIC
	db 6, 3, THUNDERBOLT
	db 0

	db BLAINE, 1
	db 1, 1, DOUBLE_EDGE
	db 2, 4, FIRE_PUNCH
	db 3, 1, FLAMETHROWER
	db 3, 2, CONFUSE_RAY
	db 3, 3, DIG
	db 3, 4, BODY_SLAM
	db 4, 4, FIRE_BLAST
	db 5, 1, FIRE_BLAST
	db 5, 2, SWIFT
	db 5, 3, DOUBLE_TEAM
	db 6, 1, EARTHQUAKE
	db 6, 2, FLY
	db 0

	db SABRINA, 1
	db 1, 1, REFLECT
	db 1, 3, HYPNOSIS
	db 2, 4, THUNDER
	db 3, 1, SURF
	db 3, 2, THUNDERBOLT
	db 3, 3, PSYCHIC_M
	db 3, 4, RECOVER
	db 4, 2, PSYCHIC_M
	db 4, 3, SURF
	db 4, 4, DIG
	db 5, 1, SOLARBEAM
	db 5, 3, PSYCHIC_M
	db 5, 4, EGG_BOMB
	db 6, 1, THUNDER_WAVE
	db 6, 2, SEISMIC_TOSS
	db 0

	db GIOVANNI, 3
	db 1, 3, FISSURE
	db 2, 2, DOUBLE_TEAM
	db 3, 1, EARTHQUAKE
	db 3, 3, THUNDER
	db 4, 1, EARTHQUAKE
	db 4, 2, LEER
	db 4, 3, THUNDER
	db 5, 1, ROCK_SLIDE
	db 5, 4, EARTHQUAKE
	db 0

	db LORELEI, 1
	db 1, 1, BUBBLEBEAM
	db 2, 3, ICE_BEAM
	db 3, 1, PSYCHIC_M
	db 3, 2, SURF
	db 4, 3, LOVELY_KISS
	db 5, 3, BLIZZARD
	db 0

	db BRUNO, 1
	db 1, 1, ROCK_SLIDE
	db 1, 2, SCREECH
	db 1, 4, DIG
	db 2, 3, FIRE_PUNCH
	db 2, 4, DOUBLE_TEAM
	db 3, 1, DOUBLE_KICK
	db 3, 2, MEGA_KICK
	db 3, 4, DOUBLE_TEAM
	db 4, 1, ROCK_SLIDE
	db 4, 2, SCREECH
	db 4, 4, EARTHQUAKE
	db 5, 2, KARATE_CHOP
	db 5, 3, STRENGTH
	db 0

	db AGATHA, 1
	db 1, 2, SUBSTITUTE
	db 1, 3, LICK
	db 1, 4, MEGA_DRAIN
	db 2, 2, TOXIC
	db 2, 4, LEECH_LIFE
	db 3, 2, LICK
	db 4, 1, WRAP
	db 5, 2, PSYCHIC_M
	db 0

	db LANCE, 1
	db 1, 1, DRAGON_RAGE
	db 2, 1, THUNDER_WAVE
	db 2, 3, THUNDERBOLT
	db 3, 1, BUBBLEBEAM
	db 3, 2, WRAP
	db 3, 3, ICE_BEAM
	db 4, 1, WING_ATTACK
	db 4, 2, SWIFT
	db 4, 3, FLY
	db 5, 1, BLIZZARD
	db 5, 2, FIRE_BLAST
	db 5, 3, THUNDER
	db 0

	db RIVAL1, 7
	;Abra
	db 2, 1, PSYWAVE
	db 0

	db RIVAL1, 8
	;Abra
	db 2, 1, PSYWAVE
	db 0

	db RIVAL1, 9
	;Abra
	db 2, 1, PSYWAVE
	db 0

	db RIVAL2, 1
	;PIDGEOTTO
	db 1, 4, SWIFT
	;RATICATE
	db 2, 1, DIG
	;KADABRA
	db 3, 1, 
	;WARTORTLE
	db 4, 1, BODY_SLAM
	db 4, 3, BUBBLEBEAM
	db 0

	db RIVAL2, 2
	;PIDGEOTTO
	db 1, 4, SWIFT
	;RATICATE
	db 2, 1, DIG
	db 2, 2, BUBBLEBEAM
	;KADABRA
	db 3, 1, THUNDER_WAVE
	;IVYSAUR
	db 4, 1, BODY_SLAM
	db 0

	db RIVAL2, 3
	;PIDGEOTTO
	db 1, 4, SWIFT
	;RATICATE
	db 2, 1, DIG
	db 2, 2, BUBBLEBEAM
	;KADABRA
	db 3, 1, THUNDER_WAVE
	;CHARMELEON
	db 4, 1, BODY_SLAM
	db 4, 2, DIG
	db 0

	db RIVAL2, 4
	;PIDGEOTTO
	db 1, 4, SWIFT
	;Growlithe
	db 2, 2, DIG
	;WEEPINBELL
	db 3, 1, VINE_WHIP
	db 3, 2, GROWTH
	;KADABRA
	db 4, 1, THUNDER_WAVE
	;WARTORTLE
	db 5, 1, BODY_SLAM
	db 5, 3, BUBBLEBEAM
	db 0

	db RIVAL2, 5
	;PIDGEOTTO
	db 1, 4, SWIFT
	;GYARADOS
	db 2, 2, BUBBLEBEAM
	db 2, 3, BITE
	db 2, 4, BUBBLEBEAM
	;GROWLITHE
	db 3, 2, DIG
	;KADABRA
	db 4, 1, THUNDER_WAVE
	;IVYSAUR
	db 5, 1, BODY_SLAM
	db 0

	db RIVAL2, 6
	;PIDGEOTTO
	db 1, 4, SWIFT
	;WEEPINBELL
	db 2, 1, VINE_WHIP
	db 2, 2, GROWTH
	;GYARADOS
	db 3, 2, BUBBLEBEAM
	db 3, 3, BITE
	db 3, 4, BUBBLEBEAM
	;KADABRA
	db 4, 1, THUNDER_WAVE
	;CHARMELEON
	db 5, 1, BODY_SLAM
	db 5, 4, DIG
	db 0

	db RIVAL3, 1
	db 1, 3, EARTHQUAKE
	db 2, 4, KINESIS
	db 3, 4, LEECH_SEED
	db 4, 1, ICE_BEAM
	db 5, 1, CONFUSE_RAY
	db 5, 4, FIRE_SPIN
	db 6, 3, QUICK_ATTACK
	db 0

	db RIVAL3, 2
	db 1, 3, EARTHQUAKE
	db 2, 4, KINESIS
	db 3, 4, LEECH_SEED
	db 4, 1, THUNDERBOLT
	db 5, 1, ICE_BEAM
	db 6, 2, REFLECT
	db 6, 3, QUICK_ATTACK
	db 0

	db RIVAL3, 3
	db 1, 3, EARTHQUAKE
	db 2, 4, KINESIS
	db 3, 4, LEECH_SEED
	db 4, 1, CONFUSE_RAY
	db 4, 4, FIRE_SPIN
	db 5, 1, THUNDERBOLT
	db 6, 1, AURORA_BEAM
	db 6, 3, QUICK_ATTACK
	db 0

	db GOATLORD, 4
	;Starmie
	db 1, 1, SURF
	db 1, 2, THUNDERBOLT
	db 1, 3, PSYCHIC_M
	db 1, 4, RECOVER
	;Tauros
	db 2, 1, DOUBLE_EDGE
	db 2, 2, HYPER_BEAM
	db 2, 3, EARTHQUAKE
	db 2, 4, BLIZZARD
	;Venusar
	db 3, 2, SWORDS_DANCE
	db 3, 4, BODY_SLAM
	;Alakazam
	db 4, 1, PSYCHIC_M
	db 4, 2, FIRE_PUNCH
	db 4, 3, ICE_PUNCH
	db 4, 4, THUNDERPUNCH
	;Zapodos
	db 5, 1, DRILL_PECK
	db 5, 2, THUNDERBOLT
	db 5, 3, THUNDER_WAVE
	db 5, 4, DRILL_PECK
	;Mew
	db 6, 1, FLAMETHROWER
	db 6, 2, SURF
	db 6, 3, BLIZZARD 

	db -1 ; end