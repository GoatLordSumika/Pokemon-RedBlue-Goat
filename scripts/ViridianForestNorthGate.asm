ViridianForestNorthGate_Script:
	call EnableAutoTextBoxDrawing
	ld hl, ViridianForestNorthGate_ScriptPointers
	ld a, [wViridianForestNorthGateCurScript]
	jp CallFunctionInTable

ViridianForestNorthGate_ScriptPointers:
	def_script_pointers
	dw_const ViridianForestNorthGateDefaultScript, SCRIPT_VIRIDIANFORESTNORTHGATE_DEFAULT

ViridianForestNorthGateDefaultScript:
	CheckEvent EVENT_BEAT_ROUTE_2_GOATLORD
	ret nz
	ld a, HS_ROUTE_2_GOATLORD
	ld [wMissableObjectIndex], a
	predef HideObject
	ResetEvent EVENT_MET_ROUTE_2_GOATLORD
	ld a, SCRIPT_VIRIDIANFORESTNORTHGATE_DEFAULT
	ld [wViridianForestNorthGateCurScript], a
	ret

ViridianForestNorthGate_TextPointers:
	def_text_pointers
	dw_const ViridianForestNorthGateSuperNerdText, TEXT_VIRIDIANFORESTNORTHGATE_SUPER_NERD
	dw_const ViridianForestNorthGateGrampsText,    TEXT_VIRIDIANFORESTNORTHGATE_GRAMPS

ViridianForestNorthGateSuperNerdText:
	text_far _ViridianForestNorthGateSuperNerdText
	text_end

ViridianForestNorthGateGrampsText:
	text_far _ViridianForestNorthGateGrampsText
	text_end
