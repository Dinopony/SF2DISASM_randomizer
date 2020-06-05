
echo off
cls
echo -------------------------------------------------------------
echo Start of assembly
echo Assembling sound driver ...
cd ../disasm/data/sound/
..\..\..\tools\asw\asw.exe ..\..\code\common\tech\sound\sounddriver.asm
..\..\..\tools\asw\p2bin.exe ..\..\code\common\tech\sound\sounddriver.p .\sounddriver.bin -k -r $0000-$1fff
cd musicbank0/
..\..\..\..\tools\asw\asw.exe -x -E errors.log .\musicbank0.asm
..\..\..\..\tools\asw\p2bin.exe .\musicbank0.p ..\musicbank0build.bin -k -r $8000-$ffff
cd ../musicbank1/
..\..\..\..\tools\asw\asw.exe -x -E errors.log .\musicbank1.asm
..\..\..\..\tools\asw\p2bin.exe .\musicbank1.p ..\musicbank1build.bin -k -r $8000-$ffff
cd ../../../
echo Assembling game ...
SET "buildname=output.bin"
@"../tools/asm68k" /e EXPANDED_ROM=0 /o ae-,e+,w+ /p sf2.asm, "../build/%buildname%" > ../build/output.log
echo End of assembly, produced %buildname%

cd ../build
SF2Rando --inputRom="%buildname%" --extractCutscenes

pause