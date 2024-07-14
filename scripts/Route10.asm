Route10_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route10TrainerHeaders
	ld de, Route10_ScriptPointers
	ld a, [wRoute10CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute10CurScript], a
	ret

Route10ResetScript:
	xor a
	ld [wJoyIgnore], a
	ld [wRoute10CurScript], a
	ld [wCurMapScript], a
	ret

Route10_ScriptPointers:
	def_script_pointers
;	dw_const CheckFightingMapTrainers,              SCRIPT_ROUTE10_DEFAULT
	dw_const Route10DefaultScript,                  SCRIPT_ROUTE10_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROUTE10_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROUTE10_END_BATTLE
	dw_const Route10GoatlordBeforeBattle,           SCRIPT_ROUTE10_GOATLORD_BEFORE_BATTLE
	dw_const Route10GoatlordAfterBattle,            SCRIPT_ROUTE10_GOATLORD_AFTER_BATTLE
	dw_const Route10GoatlordLeavesScript,           SCRIPT_ROUTE10_GOATLORD_LEAVES

Route10DefaultScript:
	CheckEvent EVENT_BEAT_ROUTE_10_GOATLORD
	jr nz, .checkTrainers
	ld a, HS_ROUTE_10_GOATLORD
	ld [wMissableObjectIndex], a
	predef HideObject
	ld hl, Route10GoatlordEncounterEventCoords
	call ArePlayerCoordsInArray
	jp nc, .checkTrainers
	ld a, D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, SFX_STOP_ALL_MUSIC
	ld [wNewSoundID], a
	call PlaySound
	ld c, BANK(Music_IndigoPlateau)
	ld a, MUSIC_INDIGO_PLATEAU
	call PlayMusic
	ld a, HS_ROUTE_10_GOATLORD
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld de, Route10GoatlordArrivesMovement
	ld a, ROUTE10_GOATLORD
	ldh [hSpriteIndex], a
	call MoveSprite
	ld a, SCRIPT_ROUTE10_GOATLORD_BEFORE_BATTLE
	ld [wRoute10CurScript], a
	ld [wCurMapScript], a
	ret
.checkTrainers
	jp nc, CheckFightingMapTrainers
	ld a, SCRIPT_ROUTE10_DEFAULT
	ld [wRoute10CurScript], a
	ld [wCurMapScript], a
	ret

Route10GoatlordBeforeBattle:
	ld a, [wd730]
	bit 0, a
	ret nz
	ld a, SPRITE_FACING_LEFT
	ld [wSpritePlayerStateData1FacingDirection], a
	xor a
	ld [wJoyIgnore], a
	ld a, TEXT_ROUTE10_GOATLORD
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
	ld hl, Route10GoatlordDefeatedText
	ld de, Route10GoatlordVictoryText
	call SaveEndBattleTextPointers
	ld a, OPP_GOATLORD
	ld [wCurOpponent], a
	ld a, $3
	ld [wTrainerNo], a
	xor a
	ldh [hJoyHeld], a
	ld a, SCRIPT_ROUTE10_GOATLORD_AFTER_BATTLE
	ld [wRoute10CurScript], a
	ld [wCurMapScript], a
	ret

Route10GoatlordAfterBattle:
	ld a, [wIsInBattle]
	cp $ff
	jp z, Route10ResetScript
	ld a, D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	SetEvent EVENT_BEAT_ROUTE_10_GOATLORD
	ld a, SFX_STOP_ALL_MUSIC
	ld [wNewSoundID], a
	call PlaySound
	ld c, BANK(Music_IndigoPlateau)
	ld a, MUSIC_INDIGO_PLATEAU
	call PlayMusic
	ld a, TEXT_ROUTE10_GOATLORD
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld de, Route10GoatlordLeavesMovement
	ld a, ROUTE10_GOATLORD
	ldh [hSpriteIndex], a
	call MoveSprite
	ld a, SCRIPT_ROUTE10_GOATLORD_LEAVES
	ld [wRoute10CurScript], a
	ld [wCurMapScript], a
	ret

Route10GoatlordLeavesScript:
	ld a, [wd730]
	bit 0, a
	ret nz
	ld a, HS_ROUTE_10_GOATLORD
	ld [wMissableObjectIndex], a
	predef HideObject
	call PlayDefaultMusic
	xor a
	ld [wJoyIgnore], a
	ld a, SCRIPT_ROUTE10_DEFAULT
	ld [wRoute10CurScript], a
	ld [wCurMapScript], a
	ret

Route10GoatlordEncounterEventCoords:
	dbmapcoord 8, 18
	db -1 ; end

Route10GoatlordArrivesMovement:
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db -1 ; end

Route10GoatlordLeavesMovement:
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_LEFT
	db -1 ; end

Route10_TextPointers:
	def_text_pointers
	dw_const Route10SuperNerd1Text,     TEXT_ROUTE10_SUPER_NERD1
	dw_const Route10Hiker1Text,         TEXT_ROUTE10_HIKER1
	dw_const Route10SuperNerd2Text,     TEXT_ROUTE10_SUPER_NERD2
	dw_const Route10CooltrainerF1Text,  TEXT_ROUTE10_COOLTRAINER_F1
	dw_const Route10Hiker2Text,         TEXT_ROUTE10_HIKER2
	dw_const Route10CooltrainerF2Text,  TEXT_ROUTE10_COOLTRAINER_F2
	dw_const Route10GoatlordText,       TEXT_ROUTE10_GOATLORD
	dw_const Route10RockTunnelSignText, TEXT_ROUTE10_ROCKTUNNEL_NORTH_SIGN
	dw_const PokeCenterSignText,        TEXT_ROUTE10_POKECENTER_SIGN
	dw_const Route10RockTunnelSignText, TEXT_ROUTE10_ROCKTUNNEL_SOUTH_SIGN
	dw_const Route10PowerPlantSignText, TEXT_ROUTE10_POWERPLANT_SIGN

Route10TrainerHeaders:
	def_trainers
Route10TrainerHeader0:
	trainer EVENT_BEAT_ROUTE_10_TRAINER_0, 4, Route10SuperNerd1BattleText, Route10SuperNerd1EndBattleText, Route10SuperNerd1AfterBattleText
Route10TrainerHeader1:
	trainer EVENT_BEAT_ROUTE_10_TRAINER_1, 3, Route10Hiker1BattleText, Route10Hiker1EndBattleText, Route10Hiker1AfterBattleText
Route10TrainerHeader2:
	trainer EVENT_BEAT_ROUTE_10_TRAINER_2, 4, Route10SuperNerd2BattleText, Route10SuperNerd2EndBattleText, Route10SuperNerd2AfterBattleText
Route10TrainerHeader3:
	trainer EVENT_BEAT_ROUTE_10_TRAINER_3, 3, Route10CooltrainerF1BattleText, Route10CooltrainerF1EndBattleText, Route10CooltrainerF1AfterBattleText
Route10TrainerHeader4:
	trainer EVENT_BEAT_ROUTE_10_TRAINER_4, 2, Route10Hiker2BattleText, Route10Hiker2EndBattleText, Route10Hiker2AfterBattleText
Route10TrainerHeader5:
	trainer EVENT_BEAT_ROUTE_10_TRAINER_5, 2, Route10CooltrainerF2BattleText, Route10CooltrainerF2EndBattleText, Route10CooltrainerF2AfterBattleText
	db -1 ; end

Route10SuperNerd1Text:
	text_asm
	ld hl, Route10TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route10SuperNerd1BattleText:
	text_far _Route10SuperNerd1BattleText
	text_end

Route10SuperNerd1EndBattleText:
	text_far _Route10SuperNerd1EndBattleText
	text_end

Route10SuperNerd1AfterBattleText:
	text_far _Route10SuperNerd1AfterBattleText
	text_end

Route10Hiker1Text:
	text_asm
	ld hl, Route10TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

Route10Hiker1BattleText:
	text_far _Route10Hiker1BattleText
	text_end

Route10Hiker1EndBattleText:
	text_far _Route10Hiker1EndBattleText
	text_end

Route10Hiker1AfterBattleText:
	text_far _Route10Hiker1AfterBattleText
	text_end

Route10SuperNerd2Text:
	text_asm
	ld hl, Route10TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

Route10SuperNerd2BattleText:
	text_far _Route10SuperNerd2BattleText
	text_end

Route10SuperNerd2EndBattleText:
	text_far _Route10SuperNerd2EndBattleText
	text_end

Route10SuperNerd2AfterBattleText:
	text_far _Route10SuperNerd2AfterBattleText
	text_end

Route10CooltrainerF1Text:
	text_asm
	ld hl, Route10TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

Route10CooltrainerF1BattleText:
	text_far _Route10CooltrainerF1BattleText
	text_end

Route10CooltrainerF1EndBattleText:
	text_far _Route10CooltrainerF1EndBattleText
	text_end

Route10CooltrainerF1AfterBattleText:
	text_far _Route10CooltrainerF1AfterBattleText
	text_end

Route10Hiker2Text:
	text_asm
	ld hl, Route10TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

Route10Hiker2BattleText:
	text_far _Route10Hiker2BattleText
	text_end

Route10Hiker2EndBattleText:
	text_far _Route10Hiker2EndBattleText
	text_end

Route10Hiker2AfterBattleText:
	text_far _Route10Hiker2AfterBattleText
	text_end

Route10CooltrainerF2Text:
	text_asm
	ld hl, Route10TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

Route10CooltrainerF2BattleText:
	text_far _Route10CooltrainerF2BattleText
	text_end

Route10CooltrainerF2EndBattleText:
	text_far _Route10CooltrainerF2EndBattleText
	text_end

Route10CooltrainerF2AfterBattleText:
	text_far _Route10CooltrainerF2AfterBattleText
	text_end

Route10GoatlordText:
	text_asm
	CheckEvent EVENT_BEAT_ROUTE_10_GOATLORD
	jr nz, .afterBattle
	ld hl, Route10GoatlordBeforeBattleText
	call PrintText
	jr .done
.afterBattle
	ld hl, Route10GoatlordAfterBattleText
	call PrintText
.done
	jp TextScriptEnd

Route10GoatlordBeforeBattleText:
	text_far _Route10GoatlordBeforeBattleText
	text_end

Route10GoatlordDefeatedText:
	text_far _Route10GoatlordDefeatedText
	text_end

Route10GoatlordVictoryText:
	text_far _Route10GoatlordVictoryText
	text_end

Route10GoatlordAfterBattleText:
	text_far _Route10GoatlordAfterBattleText
	text_end

Route10RockTunnelSignText:
	text_far _Route10RockTunnelSignText
	text_end

Route10PowerPlantSignText:
	text_far _Route10PowerPlantSignText
	text_end
