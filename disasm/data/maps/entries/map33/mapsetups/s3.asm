
; ASM FILE data\maps\entries\map33\mapsetups\s3.asm :
; 0x5AA8A..0x5AAD8 : 
ms_map33_ZoneEvents:
		msZoneEvent 15, 21, sub_5AA98-ms_map33_ZoneEvents
		msZoneEvent 12, 14, sub_5AACA-ms_map33_ZoneEvents
		msDefaultZoneEvent 0, nullsub_94-ms_map33_ZoneEvents

; =============== S U B R O U T I N E =======================================

nullsub_94:
		rts

	; End of function nullsub_94


; =============== S U B R O U T I N E =======================================

sub_5AA98:
		 
		chkFlg  $306            ; set after the first scene with Goliath at Creed's Mansion
		bne.s   byte_5AAAA      
		script  cs_5AC58
		setFlg  $306            ; set after the first scene with Goliath at Creed's Mansion
		bra.s   return_5AAC8
byte_5AAAA:
		chkFlg  $311            ; set after the fairy tags along at Creed's
		beq.s   return_5AAC8
		chkFlg  $312            ; set after Oddler elects to stay behind at Creed's Mansion
		bne.s   return_5AAC8
		script  cs_5B466
		setFlg  $312            ; set after Oddler elects to stay behind at Creed's Mansion
		setFlg  $45             ; Fairy is a follower
		clrFlg  $44             ; Oddler is a follower
return_5AAC8:
		rts

	; End of function sub_5AA98


; =============== S U B R O U T I N E =======================================

sub_5AACA:
		 
		chkFlg  $30F            ; set after the scene where Creed restores the Force and heads down the basement
		bne.s   return_5AAD6
		script  cs_5AF36
return_5AAD6:
		rts

	; End of function sub_5AACA

