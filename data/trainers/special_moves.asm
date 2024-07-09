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

	; Route 3
	db BUG_CATCHER, 5
	db 1, 2, POISON_STING
	db 1, 3, STRING_SHOT
	db 0

	; Route 3
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

	db BROCK, 1
	db 2, 3, BIDE
	db 0

	db MISTY, 1
	db 1, 2, WATER_GUN
	db 2, 4, BUBBLEBEAM
	db 0

	db LT_SURGE, 1
	db 1, 1, THUNDERBOLT
	db 1, 2, MEGA_PUNCH
	db 1, 3, MEGA_KICK
	db 1, 4, GROWL
	db 0

	db ERIKA, 1
	db 1, 3, MEGA_DRAIN
	db 2, 1, RAZOR_LEAF
	db 3, 1, PETAL_DANCE
	db 0

	db KOGA, 1
	db 1, 1, TOXIC
	db 1, 2, TACKLE
	db 2, 1, TOXIC
	db 2, 3, SUPERSONIC
	db 3, 1, TOXIC
	db 3, 2, DOUBLE_EDGE
	db 4, 1, LEECH_LIFE
	db 4, 2, DOUBLE_TEAM
	db 4, 3, PSYCHIC_M
	db 4, 4, TOXIC
	db 0

	db BLAINE, 1
	db 1, 1, FLAMETHROWER
	db 1, 4, CONFUSE_RAY
	db 3, 1, FLAMETHROWER
	db 3, 2, FIRE_BLAST
	db 3, 3, REFLECT
	db 0

	db SABRINA, 1
	db 1, 1, FLASH
	db 2, 1, KINESIS
	db 2, 4, PSYWAVE
	db 3, 1, PSYWAVE
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
	db 2, 1, PSYWAVE
	db 0

	db RIVAL1, 8
	db 2, 1, PSYWAVE
	db 0

	db RIVAL1, 9
	db 2, 1, PSYWAVE
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

	db -1 ; end