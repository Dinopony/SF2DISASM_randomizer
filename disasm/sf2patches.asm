
; ---------------------------------------------------------------------------

; patch Easy_Battle_Test
;
;     0 = OFF, 1 = ON
;
EASY_BATTLE_TEST: equ 0

; ---------------------------------------------------------------------------

; patch Easy_Configuration_Mode
;
;     0 = OFF, 1 = ON
;
EASY_CONFIGURATION_MODE: equ 0

; ---------------------------------------------------------------------------

; patch Easy_Debug_Mode
;
;     0 = OFF, 1 = ON
;
EASY_DEBUG_MODE: equ 0

; ---------------------------------------------------------------------------

; patch Percent_Poison_Damage
;
;     0 = OFF, 1-100 = n% of max HP
;
PERCENT_POISON_DAMAGE: equ 0

; ---------------------------------------------------------------------------

; patch Three_Digits_Stats
;
;     0 = OFF, 1 = ON
;
THREE_DIGITS_STATS: equ 0

; ---------------------------------------------------------------------------

; patch Eight_Characters_Member_Names
;
;     0 = OFF, 1 = ON
;
EIGHT_CHARACTERS_MEMBER_NAMES: equ 0

; ---------------------------------------------------------------------------

; patch Full_Class_Names
;
;     0 = OFF, 1 = ON
;
FULL_CLASS_NAMES: equ 0

; ---------------------------------------------------------------------------

; patch Force_Members_Expansion
;
;     Enable the use of 2 additional force members
;
;     0 = OFF, 1 = ON
;
FORCE_MEMBERS_EXPANSION: equ 0

; ---------------------------------------------------------------------------

; patch Capitalized_Character_Names
;
;     Also fixes the Chess Army's "EVIL BISHOP", and "JAR" enemy names
;
;     0 = OFF, 1 = ON
;
CAPITALIZED_CHARACTER_NAMES: equ 0

; ---------------------------------------------------------------------------

; patch Bugfix_Search_In_Battle
;
;     0 = OFF, 1 = ON
;
BUGFIX_SEARCH_IN_BATTLE: equ 0

; ---------------------------------------------------------------------------

; patch Bugfix_Skipped_Turns
;
;     Fixes an oversight where randomized AGI, for the purpose of determining
;     turn order, is not capped at 127 as it should which occasionally
;     results in combatants with high enough current AGI to skip getting
;     a turn during battle.
;
;     0 = OFF, 1 = ON
;
BUGFIX_SKIPPED_TURNS: equ 0
