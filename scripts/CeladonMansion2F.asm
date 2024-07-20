CeladonMansion2F_Script:
	call EnableAutoTextBoxDrawing
	ret

CeladonMansion2F_TextPointers:
	def_text_pointers
	dw_const CeladonMansion2FGoatlordText,	TEXT_CELADONMANSION2F_GOATLORD
	dw_const CeladonMansion2FMeetingRoomSignText, TEXT_CELADONMANSION2F_MEETING_ROOM_SIGN

CeladonMansion2FGoatlordText:
	text_asm
	CheckEvent EVENT_GOATLORD_LINKING_CORD
	jr nz, .giveLinkingCord
	ld hl, CeladonMansion2GoatlordDefaultText
	call PrintText
	jr .done
.giveLinkingCord
	ld hl, CeladonMansion2GoatlordGiveLinkingCordText
	call PrintText
	lb bc, LINKING_CORD, 1
	call GiveItem
	jr nc, .bagFull
	ResetEvent EVENT_GOATLORD_LINKING_CORD
	ld hl, .linkingCordJingle
	call PrintText
	jr .done
.bagFull
	ld hl, CeladonMansion2GoatlordBagFullText
	call PrintText
.done
	jp TextScriptEnd

.linkingCordJingle
	text_far _CeladonMansion2GoatlordLinkingCordJingleText
	sound_get_item_1
	text_end

CeladonMansion2GoatlordGiveLinkingCordText:
	text_far _CeladonMansion2GoatlordGiveLinkingCordText
	text_end

CeladonMansion2GoatlordDefaultText:
	text_far _CeladonMansion2GoatlordDefaultText
	text_end

CeladonMansion2GoatlordBagFullText:
	text_far _CeladonMansion2GoatlordBagFullText
	text_end

CeladonMansion2FMeetingRoomSignText:
	text_far _CeladonMansion2FMeetingRoomSignText
	text_end
