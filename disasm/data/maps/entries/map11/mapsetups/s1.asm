
; ASM FILE data\maps\entries\map11\mapsetups\s1.asm :
; 0x579E2..0x57A0C : 
ms_map11_Entities:
		msSequencedEntity 8, 19, DOWN, 236, ems_57A04
		msWalkingEntity 6, 28, DOWN, 236, 6, 28, 2
		msFixedEntity 37, 14, DOWN, 228, eas_Init
		msFixedEntity 41, 14, DOWN, 228, eas_Init
		msEntitiesEnd
ems_57A04:      dc.b LEFT
		dc.b LEFT
		dc.b RIGHT
		dc.b RIGHT
		dc.b RIGHT
		dc.b LEFT
		emsEnd
