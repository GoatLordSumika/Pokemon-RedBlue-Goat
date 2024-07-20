CeladonHotel_Script:
	jp EnableAutoTextBoxDrawing

CeladonHotel_TextPointers:
	def_text_pointers
	dw_const CeladonHotelGrannyText,           TEXT_CELADONHOTEL_GRANNY
	dw_const CeladonHotelBeautyText,           TEXT_CELADONHOTEL_BEAUTY
	dw_const CeladonHotelSuperNerdText,        TEXT_CELADONHOTEL_SUPER_NERD
	dw_const CeladonHotelGentlemanText,        TEXT_CELADONHOTEL_GENTLEMAN
	dw_const CeladonHotelTMSocietyVendor1Text, TEXT_CELADONHOTEL_TM_SOCIETY_VENDOR_1
	dw_const CeladonHotelTMSocietyVendor2Text, TEXT_CELADONHOTEL_TM_SOCIETY_VENDOR_2
	dw_const CeladonHotelTMSocietyVendor3Text, TEXT_CELADONHOTEL_TM_SOCIETY_VENDOR_3
	dw_const CeladonHotelTMSocietyVendor4Text, TEXT_CELADONHOTEL_TM_SOCIETY_VENDOR_4

CeladonHotelGrannyText:
	text_far _CeladonHotelGrannyText
	text_end

CeladonHotelBeautyText:
	text_far _CeladonHotelBeautyText
	text_end

CeladonHotelSuperNerdText:
	text_far _CeladonHotelSuperNerdText
	text_end

CeladonHotelGentlemanText:
	text_far _CeladonHotelGentlemanText
	text_end

;CeladonHotelGentlemanText:
;	text_asm
;	ld hl, wObtainedBadges
;	res BIT_CASCADEBADGE, [hl]
;	ld hl, wBeatGymFlags
;	res BIT_CASCADEBADGE, [hl]
;	ld hl, CeladonHotelTMSocietyVendorGreetingText
;	call PrintText
;	jp TextScriptEnd

CeladonHotelTMSocietyVendor1Text:
	text_asm
	ld a, [wObtainedBadges]
	bit BIT_BOULDERBADGE, a
	jr nz, .hasBoulderbadge
	jr .missingBadges
.hasBoulderbadge
	ld a, [wObtainedBadges]
	bit BIT_CASCADEBADGE, a
	jr nz, .hasCascadebadge
	jr .missingBadges
.hasCascadebadge
	ld hl, CeladonHotelTMSocietyVendorGreetingText
	call PrintText
	ld hl, TMSocietyBrockMistyText
	call DisplayCustomPokemartDialogue
	jr .done
.missingBadges
	ld hl, CeladonHotelTMSocietyVendorGenericMissingBadgesText
	call PrintText
	ld hl, CeladonHotelTMSocietyVendor1MissingBadgesText
	call PrintText
.done
	jp TextScriptEnd
	
CeladonHotelTMSocietyVendor1MissingBadgesText:
	text_far _CeladonHotelTMSocietyVendor1MissingBadgesText
	text_end

CeladonHotelTMSocietyVendor2Text:
	text_asm
	ld a, [wObtainedBadges]
	bit BIT_THUNDERBADGE, a
	jr nz, .hasThunderbadge
	jr .missingBadges
.hasThunderbadge
	ld a, [wObtainedBadges]
	bit BIT_RAINBOWBADGE, a
	jr nz, .hasRainbowbadge
	jr .missingBadges
.hasRainbowbadge
	ld hl, CeladonHotelTMSocietyVendorGreetingText
	call PrintText
	ld hl, TMSocietyBlaineGiovanniText
	call DisplayCustomPokemartDialogue
	jr .done
.missingBadges
	ld hl, CeladonHotelTMSocietyVendorGenericMissingBadgesText
	call PrintText
	ld hl, CeladonHotelTMSocietyVendor2MissingBadgesText
	call PrintText
.done
	jp TextScriptEnd
	
CeladonHotelTMSocietyVendor2MissingBadgesText:
	text_far _CeladonHotelTMSocietyVendor2MissingBadgesText
	text_end

CeladonHotelTMSocietyVendor3Text:
	text_asm
	ld a, [wObtainedBadges]
	bit BIT_SOULBADGE, a
	jr nz, .hasSoulbadge
	jr .missingBadges
.hasSoulbadge
	ld a, [wObtainedBadges]
	bit BIT_MARSHBADGE, a
	jr nz, .hasMarshbadge
	jr .missingBadges
.hasMarshbadge
	ld hl, CeladonHotelTMSocietyVendorGreetingText
	call PrintText
	ld hl, TMSocietyBlaineGiovanniText
	call DisplayCustomPokemartDialogue
	jr .done
.missingBadges
	ld hl, CeladonHotelTMSocietyVendorGenericMissingBadgesText
	call PrintText
	ld hl, CeladonHotelTMSocietyVendor3MissingBadgesText
	call PrintText
.done
	jp TextScriptEnd
	
CeladonHotelTMSocietyVendor3MissingBadgesText:
	text_far _CeladonHotelTMSocietyVendor3MissingBadgesText
	text_end

CeladonHotelTMSocietyVendor4Text:
	text_asm
	ld a, [wObtainedBadges]
	bit BIT_VOLCANOBADGE, a
	jr nz, .hasVolcanobadge
	jr .missingBadges
.hasVolcanobadge
	ld a, [wObtainedBadges]
	bit BIT_EARTHBADGE, a
	jr nz, .hasEarthbadge
	jr .missingBadges
.hasEarthbadge
	ld hl, CeladonHotelTMSocietyVendorGreetingText
	call PrintText
	ld hl, TMSocietyBlaineGiovanniText
	call DisplayCustomPokemartDialogue
	jr .done
.missingBadges
	ld hl, CeladonHotelTMSocietyVendorGenericMissingBadgesText
	call PrintText
	ld hl, CeladonHotelTMSocietyVendor4MissingBadgesText
	call PrintText
.done
	jp TextScriptEnd

CeladonHotelTMSocietyVendor4MissingBadgesText:
	text_far _CeladonHotelTMSocietyVendor4MissingBadgesText
	text_end

CeladonHotelTMSocietyVendorGenericMissingBadgesText:
	text_far _CeladonHotelTMSocietyVendorGenericMissingBadgesText
	text_end

CeladonHotelTMSocietyVendorGreetingText:
	text_far _CeladonHotelTMSocietyVendorGreetingText
	text_end