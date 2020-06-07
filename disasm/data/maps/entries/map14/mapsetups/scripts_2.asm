
; ASM FILE data\maps\entries\map14\mapsetups\scripts_2.asm :
; 0x58FA4..0x592E0 : 
cs_58FA4:       textCursor $8D6
                reloadMap 8,7
                loadMapEntities ce_59270
                setActscriptWait ALLY_BOWIE,eas_Init
                csWait 1
                setPriority ALLY_BOWIE,$0
                setPriority 130,$0
                setPriority 133,$FFFF
                fadeInB
                customActscript 129
                 ac_wait 1200           ;   
                 ac_moveRel 1,0         ;   
                 ac_waitDest            ;   
                 ac_moveRel 0,1         ;   
                 ac_waitDest            ;   
                 ac_wait 600            ;   
                 ac_moveRel 0,65529     ;   
                 ac_waitDest            ;   
                 ac_jump eas_Idle       ;   
                ac_end
                nextSingleText $0,128   ; "Somebody, take that plank{N}from him!{W1}"
                setFacing 128,RIGHT
                csWait 30
                setFacing 128,LEFT
                csWait 30
                setFacing 128,RIGHT
                csWait 30
                setFacing 130,LEFT
                nextSingleText $0,130   ; "I got it!{W1}"
                entityActionsWait 130
                 moveLeft 2
                endActions
                entityActions 128
                 moveLeft 2
                endActions
                entityActionsWait 130
                 moveUp 1
                endActions
                entityActionsWait 130
                 moveLeft 1
                endActions
                setFacing 128,RIGHT
                setFacing 130,UP
                nextSingleText $0,130   ; "Thank you, boy!{W1}"
                setFacing 130,DOWN
                csWait 30
                entityActions 132
                 moveDown 1
                endActions
                entityActions 133
                 moveDown 1
                endActions
                entityActionsWait 134
                 moveDown 1
                endActions
                nextSingleText $FF,255  ; "{LEADER} hands over{N}the plank.{W1}"
                csWait 30
                nextSingleText $0,130   ; "We need a lot of planks{N}for our new town!{W1}"
                entityActions 130
                 moveDown 7
                endActions
                entityActions 132
                 moveDown 7
                endActions
                entityActions 133
                 moveDown 7
                endActions
                entityActionsWait 134
                 moveDown 7
                endActions
                hide 130
                hide 132
                hide 133
                hide 134
                setF $1FC ; Mark battle 8 as completed
                setF $1FE ; Mark battle 10 as completed
                setF $200 ; Mark battle 12 as completed
                setF $202 ; Mark battle 14 as completed
                setF $205 ; Mark battle 17 as completed
                setF $207 ; Mark battle 19 as completed
                setF $209 ; Mark battle 21 as completed
                setF $19B ; Mark battle 11 as unlocked
                setF $2C4 ; Remove Ribble cutscenes (show NPCs)
                setF $2C5 ; Remove Ribble cutscenes (open doors)
                setF $2C8 ; Remove Peter cutscene triggering Volcanon mountainous path battle
                warp $49,$3E,$31,$2
                csc_end
ce_59270:       mainEntity 13,11,DOWN
                entity 12,20,UP,ALLY_JAHA,eas_Init
                entity 14,20,UP,ALLY_SLADE,eas_Init
                entity 14,21,UP,ALLY_SARAH,eas_Init
                entity 14,22,UP,ALLY_KIWI,eas_Init
                entity 14,23,UP,ALLY_CHESTER,eas_Init
                entity 14,24,UP,ALLY_KAZIN,eas_Init
                entity 13,13,UP,MAPSPRITE_SAILOR,eas_Init
                entity 9,13,LEFT,MAPSPRITE_MAN2,eas_Init
                entity 16,13,RIGHT,MAPSPRITE_MAN1,eas_Init
                entity 13,20,UP,MAPSPRITE_WORKER,eas_Init
                entity 12,11,RIGHT,MAPSPRITE_OBJECT2,eas_Init3
                entity 13,11,DOWN,MAPSPRITE_OBJECT2,eas_Init3
                entity 14,11,LEFT,MAPSPRITE_OBJECT2,eas_Init3
                dc.w $FFFF
