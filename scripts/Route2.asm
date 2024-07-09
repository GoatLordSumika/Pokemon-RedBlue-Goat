Route2_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route2_ScriptPointers
	ld a, [wRoute2CurScript]
	jp CallFunctionInTable

Route2ResetScript:
	xor a
	ld [wJoyIgnore], a
	ld [wRoute2CurScript], a

Route2_ScriptPointers:
	def_script_pointers
	dw_const Route2DefaultScript, 				SCRIPT_ROUTE2_DEFAULT
	dw_const Route2GoatlordMovesToPlayerScript,	SCRIPT_ROUTE2_GOATLORD_MOVES_TO_PLAYER
	dw_const Route2GoatlordIntroScript,			SCRIPT_ROUTE2_GOATLORD_INTRO
	dw_const Route2GoatlordBeginBattleScript,	SCRIPT_ROUTE2_GOATLORD_BEGIN_BATTLE
	dw_const Route2GoatlordDefeatedScript,		SCRIPT_ROUTE2_GOATLORD_DEFEATED
	dw_const Route2GoatlordLeavesScript,		SCRIPT_ROUTE2_GOATLORD_LEAVES
	dw_const Route2RejectedBattleScript,		SCRIPT_ROUTE2_REJECTED_BATTLE
	dw_const Route2CheckPlayerIsMovingScript,	SCRIPT_ROUTE2_CHECK_PLAYER_IS_MOVING

Route2DefaultScript:
	CheckEvent EVENT_BEAT_ROUTE_2_GOATLORD
	ret nz
	ld hl, Route2GoatlordEncounterEventCoords
	call ArePlayerCoordsInArray
	ret nc
	ld a, SFX_STOP_ALL_MUSIC
	ld [wNewSoundID], a
	call PlaySound
	ld c, BANK(Music_IndigoPlateau)
	ld a, MUSIC_INDIGO_PLATEAU
	call PlayMusic
	ld a, SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, TEXT_ROUTE2_GOATLORD
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld a, HS_ROUTE_2_GOATLORD
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, SCRIPT_ROUTE2_GOATLORD_MOVES_TO_PLAYER
	ld [wRoute2CurScript], a
	ret

Route2GoatlordEncounterEventCoords:
	dbmapcoord 3, 9
	db -1 ; end

Route2GoatlordMovesToPlayerScript:
	ld de, Route2GoatlordArrivesMovement
	ld a, ROUTE2_GOATLORD
	ldh [hSpriteIndex], a
	call MoveSprite
	ld a, SCRIPT_ROUTE2_GOATLORD_INTRO
	ld [wRoute2CurScript], a
	ret

Route2GoatlordIntroScript:
	ld a, [wd730]
	bit 0, a
	ret nz
	SetEvent EVENT_MET_ROUTE_2_GOATLORD
	ld a, SELECT | START | D_RIGHT | D_LEFT
	ld [wJoyIgnore], a
	ld a, TEXT_ROUTE2_GOATLORD
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	ret

Route2GoatlordBeginBattleScript:
;	SetEvent EVENT_SET_FINAL_BATTLE_MUSIC
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
	ld hl, GoatlordDefeatedText
	ld de, GoatlordVictoryText
	call SaveEndBattleTextPointers
	ld a, OPP_GOATLORD
	ld [wCurOpponent], a
	ld a, $1
	ld [wTrainerNo], a
	xor a
	ldh [hJoyHeld], a
	ld a, SCRIPT_ROUTE2_GOATLORD_DEFEATED
	ld [wRoute2CurScript], a 
	ret

Route2GoatlordDefeatedScript:
	ld a, [wIsInBattle]
	cp $ff
	jp z, Route2ResetScript
	ld a, D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	SetEvent EVENT_BEAT_ROUTE_2_GOATLORD
	ld a, SFX_STOP_ALL_MUSIC
	ld [wNewSoundID], a
	call PlaySound
	ld c, BANK(Music_IndigoPlateau)
	ld a, MUSIC_INDIGO_PLATEAU
	call PlayMusic
	ld a, TEXT_ROUTE2_GOATLORD
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld de, Route2GoatlordLeavesMovement
	ld a, ROUTE2_GOATLORD
	ldh [hSpriteIndex], a
	call MoveSprite
	ld a, SCRIPT_ROUTE2_GOATLORD_LEAVES
	ld [wRoute2CurScript], a
	ret

Route2GoatlordLeavesScript:
	ld a, [wd730]
	bit 0, a
	ret nz
	ld a, HS_ROUTE_2_GOATLORD
	ld [wMissableObjectIndex], a
	predef HideObject
	xor a
	ld [wJoyIgnore], a
	call PlayDefaultMusic
	ld a, SCRIPT_ROUTE2_DEFAULT
	ld [wRoute2CurScript], a
	ret

Route2RejectedBattleScript:
	ld a, SELECT | START | D_RIGHT | D_LEFT | D_UP
	ld [wJoyIgnore], a
	ld hl, wSimulatedJoypadStatesEnd
	ld de, Route2PlayerMovement
	call DecodeRLEList
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, SCRIPT_ROUTE2_CHECK_PLAYER_IS_MOVING
	ld [wRoute2CurScript], a
	ret

Route2CheckPlayerIsMovingScript:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	ld a, SCRIPT_ROUTE2_DEFAULT
	ld [wRoute2CurScript], a
	ret

Route2GoatlordArrivesMovement:
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db -1 ; end

Route2GoatlordLeavesMovement:
	db NPC_MOVEMENT_UP
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_UP
	db NPC_MOVEMENT_UP
	db NPC_MOVEMENT_UP
	db -1 ; end

Route2PlayerMovement:
	db D_DOWN, 3
	db -1 ; end

Route2_TextPointers:
	def_text_pointers
	dw_const Route2GoatlordText,		 TEXT_ROUTE2_GOATLORD
	dw_const PickUpItemText,             TEXT_ROUTE2_MOON_STONE
	dw_const PickUpItemText,             TEXT_ROUTE2_HP_UP
	dw_const Route2SignText,             TEXT_ROUTE2_SIGN
	dw_const Route2DiglettsCaveSignText, TEXT_ROUTE2_DIGLETTS_CAVE_SIGN

Route2GoatlordText:
	text_asm
	CheckEvent EVENT_MET_ROUTE_2_GOATLORD
	jr z, .callout
	CheckEvent EVENT_BEAT_ROUTE_2_GOATLORD
	jr z, .intro
	ld hl, GoatlordAfterBattleText
	call PrintText
	jr .done
.callout
	ld hl, HeyYouText
	call PrintText
	jr .done
.intro
	ld hl, GoatlordIntroText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jp nz, .answerNo
	ld hl, GoatlordBeforeBattleText
	call PrintText
	ld a, SCRIPT_ROUTE2_GOATLORD_BEGIN_BATTLE
	ld [wRoute2CurScript], a
	jr .done
.answerNo
	ld hl, GoatlordRejectedBattleText
	call PrintText
	ld a, SCRIPT_ROUTE2_REJECTED_BATTLE
	ld [wRoute2CurScript], a
.done
	jp TextScriptEnd

HeyYouText:
	text_far _Route2GoatlordCalloutText
	text_end

GoatlordIntroText:
	text_far _Route2GoatlordIntroText
	text_end

GoatlordBeforeBattleText:
	text_far _Route2GoatlordBeforeBattleText
	text_end

GoatlordDefeatedText:
	text_far _Route2GoatlordDefeatedText
	text_end

GoatlordVictoryText:
	text_far _Route2GoatlordVictoryText
	text_end

GoatlordAfterBattleText:
	text_far _Route2GoatlordAfterBattleText
	text_end

GoatlordRejectedBattleText:
	text_far _Route2GoatlordRejectedBattleText
	text_end

Route2SignText:
	text_far _Route2SignText
	text_end

Route2DiglettsCaveSignText:
	text_far _Route2DiglettsCaveSignText
	text_end
