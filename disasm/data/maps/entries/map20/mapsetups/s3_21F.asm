
; ASM FILE data\maps\entries\map20\mapsetups\s3_21F.asm :
; 0x6329A..0x63364 : 
ms_map20_flag21F_ZoneEvents:
		msZoneEvent 19, 52, sub_632AC-ms_map20_flag21F_ZoneEvents
		msZoneEvent 26, 255, sub_632FA-ms_map20_flag21F_ZoneEvents
		msZoneEvent 27, 52, sub_63330-ms_map20_flag21F_ZoneEvents
		msDefaultZoneEvent 0, nullsub_85-ms_map20_flag21F_ZoneEvents

; =============== S U B R O U T I N E =======================================

nullsub_85:
		rts

	; End of function nullsub_85


; =============== S U B R O U T I N E =======================================

sub_632AC:
		 
		sndCom  SOUND_COMMAND_FADE_OUT
		script  cs_632EA
		clr.w   ((CURRENT_SPEAK_SOUND-$1000000)).w
		txt     $FAE            ; "The Princess is asleep.{N}Will you kiss her?"
		jsr     j_YesNoPrompt
		tst.w   d0
		bne.s   byte_632E0
		script  cs_EndKiss
		jsr     PlayEndCredits
		moveq   #$FFFFFFFF,d0
		jsr     PlayIntroOrEndCutscene
		jmp     (WitchEnd).w
byte_632E0:
		sndCom  SOUND_COMMAND_INIT_DRIVER
		sndCom  MUSIC_TOWN
		rts

	; End of function sub_632AC

cs_632EA:       setActscriptWait $0,eas_Init
		csWait 1
		shiver $0
		csc_end

; =============== S U B R O U T I N E =======================================

sub_632FA:
		 
		chkFlg  $3D6
		beq.s   return_6332E
		chkFlg  $3D7
		bne.s   return_6332E
		move.w  ((CURRENT_SPEAK_SOUND-$1000000)).w,((word_FFB09E-$1000000)).w
		move.w  #$80,d0 
		jsr     GetEntityPortraitAndSpeechSfx
		move.w  d1,((CURRENT_PORTRAIT-$1000000)).w
		move.w  d2,((CURRENT_SPEAK_SOUND-$1000000)).w
		txt     $FA9            ; "Oh, {LEADER}!{N}I really respect you.{W2}"
		txt     $FAA            ; "You shouldered quite a{N}burden for the kingdom.{W2}"
		txt     $FAB            ; "I'll be happy if you rule{N}this kingdom with Princess{N}Elis!{W1}"
		setFlg  $3D7
return_6332E:
		rts

	; End of function sub_632FA


; =============== S U B R O U T I N E =======================================

sub_63330:
		 
		chkFlg  $3D8
		bne.s   return_6335C
		script  cs_6335E
		move.w  ((CURRENT_SPEAK_SOUND-$1000000)).w,((word_FFB09E-$1000000)).w
		move.w  #$80,d0 
		jsr     GetEntityPortraitAndSpeechSfx
		move.w  d1,((CURRENT_PORTRAIT-$1000000)).w
		move.w  d2,((CURRENT_SPEAK_SOUND-$1000000)).w
		txt     $FAC            ; "{LEADER}, please kiss{N}her.{W1}"
		setFlg  $3D8
return_6335C:
		rts

	; End of function sub_63330

cs_6335E:       setFacing $80,DOWN
		csc_end
