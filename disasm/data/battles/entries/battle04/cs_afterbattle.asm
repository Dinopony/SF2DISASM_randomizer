
; ASM FILE data\battles\entries\battle04\cs_afterbattle.asm :
; 0x498EE..0x49AB2 : Cutscene after battle 4
abcs_battle04:  textCursor $90F
                loadMapFadeIn 66,9,16
                loadMapEntities ce_49A6A
                setActscriptWait ALLY_BOWIE,eas_Init
                setFacing ALLY_BOWIE,RIGHT
                setFacing ALLY_SARAH,RIGHT
                setFacing ALLY_CHESTER,RIGHT
                setFacing ALLY_JAHA,RIGHT
                setFacing ALLY_KAZIN,RIGHT
                fadeInB
                nextSingleText $0,128 ; "You beat us, but the army of Galam is already ravaging your beloved city!"
                nextSingleText $0,128 ; "This is WAR! I served\nyou 'til my last breath,\noh mighty King Galam...\x85"
                nextSingleText $0,ALLY_JAHA ; "Galam are at war with us? What is wrong with them?"
                nextSingleText $0,ALLY_BOWIE ; "I hope everyone is still alive... We'd better hurry!"
                setF $1FA                   ; Battle 6 completed (switch to ravaged Granseal)
                setF $197                   ; Battle 7 unlocked
                csc_end
ce_49A6A:       mainEntity 13,20,DOWN
                entity 14,21,DOWN,ALLY_SARAH,eas_Init
                entity 12,21,DOWN,ALLY_CHESTER,eas_Init
                entity 13,22,DOWN,ALLY_JAHA,eas_Init
                entity 11,22,DOWN,ALLY_KAZIN,eas_Init
                entity 17,19,LEFT,MAPSPRITE_GALAM_SOLDIER,eas_Init
                dc.w $FFFF
