Route4_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route4TrainerHeaders
	ld de, Route4_ScriptPointers
	ld a, [wRoute4CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute4CurScript], a
	ld [wCurMapScript], a
	ret

Route4ResetScript:
	xor a
	ld [wJoyIgnore], a
	ld [wRocketHideoutB4FCurScript], a
	ld [wCurMapScript], a
	ret

Route4_ScriptPointers:
	def_script_pointers
;	dw_const CheckFightingMapTrainers,              SCRIPT_ROUTE4_DEFAULT
	dw_const Route4DefaultScript,	                SCRIPT_ROUTE4_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROUTE4_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROUTE4_END_BATTLE
	dw_const Route4GoatlordBeginBattleScript,		SCRIPT_ROUTE4_GOATLORD_BEGIN_BATTLE
	dw_const Route4GoatlordDefeatedScript,			SCRIPT_ROUTE4_GOATLORD_DEFEATED
	dw_const Route4GoatlordLeavesScript,			SCRIPT_ROUTE4_GOATLORD_LEAVES

Route4DefaultScript:
	CheckEvent EVENT_BEAT_ROUTE_4_GOATLORD
	jp nz, CheckFightingMapTrainers
	jp CheckFightingMapTrainers
	ld a, SCRIPT_ROUTE4_DEFAULT
	ld [wRoute4CurScript], a
	ld [wCurMapScript], a
	ret

Route4GoatlordBeginBattleScript:
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
	ld hl, GoatlordDefeatedText
	ld de, GoatlordVictoryText
	call SaveEndBattleTextPointers
	ld a, OPP_GOATLORD
	ld [wCurOpponent], a
	ld a, $2
	ld [wTrainerNo], a
	xor a
	ldh [hJoyHeld], a
	ld a, SCRIPT_ROUTE4_GOATLORD_DEFEATED
	ld [wRoute4CurScript], a 
	ld [wCurMapScript], a
	ret

Route4GoatlordDefeatedScript:
	ld a, [wIsInBattle]
	cp $ff
	jp z, Route4ResetScript
	ld a, D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	SetEvent EVENT_BEAT_ROUTE_4_GOATLORD
	ld a, SFX_STOP_ALL_MUSIC
	ld [wNewSoundID], a
	call PlaySound
	ld c, BANK(Music_IndigoPlateau)
	ld a, MUSIC_INDIGO_PLATEAU
	call PlayMusic
	ld a, TEXT_ROUTE4_GOATLORD
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld de, Route4GoatlordLeavesMovement
	ld a, ROUTE4_GOATLORD
	ldh [hSpriteIndex], a
	call MoveSprite
	ld a, SCRIPT_ROUTE4_GOATLORD_LEAVES
	ld [wRoute4CurScript], a
	ld [wCurMapScript], a
	ret

Route4GoatlordLeavesScript:
	ld a, [wd730]
	bit 0, a
	ret nz
	ld a, HS_ROUTE_4_GOATLORD
	ld [wMissableObjectIndex], a
	predef HideObject
	xor a
	ld [wJoyIgnore], a
	call PlayDefaultMusic
	ld a, SCRIPT_ROUTE4_DEFAULT
	ld [wRoute4CurScript], a
	ld [wCurMapScript], a
	ret

Route4GoatlordLeavesMovement:
	db NPC_MOVEMENT_UP
	db -1 ; end

Route4_TextPointers:
	def_text_pointers
	dw_const Route4GoatlordText,	  TEXT_ROUTE4_GOATLORD
	dw_const Route4CooltrainerF1Text, TEXT_ROUTE4_COOLTRAINER_F1
	dw_const Route4CooltrainerF2Text, TEXT_ROUTE4_COOLTRAINER_F2
	dw_const PickUpItemText,          TEXT_ROUTE4_TM_WHIRLWIND
	dw_const PokeCenterSignText,      TEXT_ROUTE4_POKECENTER_SIGN
	dw_const Route4MtMoonSignText,    TEXT_ROUTE4_MT_MOON_SIGN
	dw_const Route4SignText,          TEXT_ROUTE4_SIGN

Route4TrainerHeaders:
	def_trainers 2
Route4TrainerHeader0:
	trainer EVENT_BEAT_ROUTE_4_TRAINER_0, 3, Route4CooltrainerF2BattleText, Route4CooltrainerF2EndBattleText, Route4CooltrainerF2AfterBattleText
	db -1 ; end

Route4GoatlordText:
	text_asm
	CheckEvent EVENT_BEAT_ROUTE_4_GOATLORD
	jr nz, .GoatlordDefeated
	ld a, SFX_STOP_ALL_MUSIC
	ld [wNewSoundID], a
	call PlaySound
	ld c, BANK(Music_IndigoPlateau)
	ld a, MUSIC_INDIGO_PLATEAU
	call PlayMusic
	ld hl, Route4GoatlordBeforeBattleText
	call PrintText
	ld a, SCRIPT_ROUTE4_GOATLORD_BEGIN_BATTLE
	ld [wRoute4CurScript], a
	jr .done
.GoatlordDefeated
	ld hl, Route4GoatlordAfterBattleText
	call PrintText
.done
	jp TextScriptEnd

Route4GoatlordBeforeBattleText:
	text_far _Route4GoatlordBeforeBattleText
	text_end

Route4GoatlordDefeatedText:
	text_far _Route4GoatlordDefeatedText
	text_end

Route4GoatlordVictoryText:
	text_far _Route4GoatlordVictoryText
	text_end

Route4GoatlordAfterBattleText:
	text_far _Route4GoatlordAfterBattleText
	text_end

Route4CooltrainerF1Text:
	text_far _Route4CooltrainerF1Text
	text_end

Route4CooltrainerF2Text:
	text_asm
	ld hl, Route4TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route4CooltrainerF2BattleText:
	text_far _Route4CooltrainerF2BattleText
	text_end

Route4CooltrainerF2EndBattleText:
	text_far _Route4CooltrainerF2EndBattleText
	text_end

Route4CooltrainerF2AfterBattleText:
	text_far _Route4CooltrainerF2AfterBattleText
	text_end

Route4MtMoonSignText:
	text_far _Route4MtMoonSignText
	text_end

Route4SignText:
	text_far _Route4SignText
	text_end
