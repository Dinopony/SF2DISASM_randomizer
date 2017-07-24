
; GAME SECTION 14 :
; 0x1B8000..0x1C8000 : Battlescene grounds, weapons, spell graphics, witch screens
; FREE SPACE : 474 bytes.


p_pt_BattleSceneGrounds:
		dc.l pt_Grounds
p_pt_WeaponSprites:
		dc.l pt_WeaponSprites
p_plt_BattleSceneWeaponColors:
		dc.l plt_WeaponPalettes
p_pt_SpellGraphics:
		dc.l pt_SpellGraphics
p_plt_Witch:
		dc.l plt_Witch
p_WitchLayout:
		dc.l WitchLayout
p_WitchTiles:
		dc.l WitchTiles
p_plt_WitchEnd:
		dc.l plt_WitchEnd
p_WitchEndLayout:
		dc.l WitchEndLayout
p_WitchEndTiles:
		dc.l WitchEndTiles
		include "data\graphics\battles\grounds\entries.asm"		; Grounds
		include "data\graphics\battles\weapons\entries.asm"		; Weapons
plt_WeaponPalettes:
		incbin "data/graphics/battles/weapons/weaponpalettes.bin"
		include "data\graphics\battles\spells\entries.asm"		; Spell Graphics
		includeIfVanillaRom "code\specialscreens\witch\graphics.asm"		; Witch Screen
		includeIfVanillaRom "code\specialscreens\witchend\graphics.asm"		; Witch End Screen
		align $1C8000
