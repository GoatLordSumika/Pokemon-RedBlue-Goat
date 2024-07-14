CeruleanMart_Script:
	jp EnableAutoTextBoxDrawing

CeruleanMart_TextPointers:
	def_text_pointers
	dw_const CeruleanMartClerkText,        TEXT_CERULEANMART_CLERK
;	dw_const CeruleanMartTestText,		   TEXT_CERULEANMART_CLERK
	dw_const CeruleanMartCooltrainerMText, TEXT_CERULEANMART_COOLTRAINER_M
	dw_const CeruleanMartCooltrainerFText, TEXT_CERULEANMART_COOLTRAINER_F

;CeruleanMartTestText:
;	text_asm
;	ld hl, CeruleanMartCooltrainerFText
;	call PrintText
;	ld hl, TMSocietyBrockMistyText
;	call DisplayCustomPokemartDialogue
;	jp TextScriptEnd

CeruleanMartCooltrainerMText:
	text_far _CeruleanMartCooltrainerMText
	text_end

CeruleanMartCooltrainerFText:
	text_far _CeruleanMartCooltrainerFText
	text_end
