@echo off

:: *************************************************************
:: Edit this line if you installed OCTGN in a different diectory
set OCTGN=%SystemDrive%\Users\%USERNAME%\Documents\OCTGN
:: *************************************************************


echo %OCTGN%

echo This batch file will replace some files in your OCTGN directory. The batch file will make backups. Nonetheless, it is adviseable to make a manual backup of your GameDatabase and ImageDatabase directories just in case.

pause 

set GAMEDB=%OCTGN%\GameDatabase\0f38e453-26df-4c04-9d67-6d43de939c77
set IMAGEDB=%OCTGN%\ImageDatabase\0f38e453-26df-4c04-9d67-6d43de939c77\Sets\21bf9e05-fb23-4b1d-b89a-398f671f5999\Cards

:: Background
copy "%GAMEDB%\table\background.jpg" "%GAMEDB%\table\background.jpg.backup"
copy ".\files\background.jpg" "%GAMEDB%\table\background.jpg"

:: Tabletop
copy "%GAMEDB%\table\Tabletop.png" "%GAMEDB%\table\Tabletop.png.backup"
copy ".\files\Tabletop.png" "%GAMEDB%\table\Tabletop.png"

:: Tabletop Flipped
copy "%GAMEDB%\table\Tabletop_flipped.png" "%GAMEDB%\table\Tabletop_flipped.png.backup"
copy ".\files\Tabletop_flipped.png" "%GAMEDB%\table\Tabletop_flipped.png"

:: Font
copy "%GAMEDB%\Fonts\CyberpunkIsNotDead_ANR.ttf" "%GAMEDB%\Fonts\CyberpunkIsNotDead_ANR.ttf.backup"
copy ".\files\OpenSanSan.ttf" "%GAMEDB%\Fonts\CyberpunkIsNotDead_ANR.ttf"

:: HQ
copy "%IMAGEDB%\81cba950-9703-424f-9a6f-af02e0203762.jpg" "%IMAGEDB%\81cba950-9703-424f-9a6f-af02e0203762.jpg.backup"
copy ".\files\81cba950-9703-424f-9a6f-af02e0203762.jpg" "%IMAGEDB%\81cba950-9703-424f-9a6f-af02e0203762.jpg"

:: R&D
copy "%IMAGEDB%\fbb865c9-fccc-4372-9618-ae83a47101a2.jpg" "%IMAGEDB%\fbb865c9-fccc-4372-9618-ae83a47101a2.jpg.backup"
copy ".\files\fbb865c9-fccc-4372-9618-ae83a47101a2.jpg" "%IMAGEDB%\fbb865c9-fccc-4372-9618-ae83a47101a2.jpg"

:: Archives
copy "%IMAGEDB%\47597fa5-cc0c-4451-943b-9a14417c2007.jpg" "%IMAGEDB%\47597fa5-cc0c-4451-943b-9a14417c2007.jpg.backup"
copy ".\files\47597fa5-cc0c-4451-943b-9a14417c2007.jpg" "%IMAGEDB%\47597fa5-cc0c-4451-943b-9a14417c2007.jpg"

:: Remote Server
copy "%IMAGEDB%\d59fc50c-c727-4b69-83eb-36c475d60dcb.jpg" "%IMAGEDB%\d59fc50c-c727-4b69-83eb-36c475d60dcb.jpg.backup"
copy ".\files\d59fc50c-c727-4b69-83eb-36c475d60dcb.jpg" "%IMAGEDB%\d59fc50c-c727-4b69-83eb-36c475d60dcb.jpg"

:: Trace
copy "%IMAGEDB%\eb7e719e-007b-4fab-973c-3fe228c6ce20.png" "%IMAGEDB%\eb7e719e-007b-4fab-973c-3fe228c6ce20.png.backup"
copy ".\files\eb7e719e-007b-4fab-973c-3fe228c6ce20.png" "%IMAGEDB%\eb7e719e-007b-4fab-973c-3fe228c6ce20.png"

:: Purge
copy "%IMAGEDB%\23473bd3-f7a5-40be-8c66-7d35796b6031.png" "%IMAGEDB%\23473bd3-f7a5-40be-8c66-7d35796b6031.png.backup"
copy ".\files\23473bd3-f7a5-40be-8c66-7d35796b6031.png" "%IMAGEDB%\23473bd3-f7a5-40be-8c66-7d35796b6031.png"
IF EXIST "%IMAGEDB%\23473bd3-f7a5-40be-8c66-7d35796b6031.jpg" (
	rename "%IMAGEDB%\23473bd3-f7a5-40be-8c66-7d35796b6031.jpg" "23473bd3-f7a5-40be-8c66-7d35796b6031.jpg.backup"
)

:: OK
copy "%IMAGEDB%\e904542b-83db-4022-9e8e-9369fe7bc761.png" "%IMAGEDB%\e904542b-83db-4022-9e8e-9369fe7bc761.png.backup"
copy ".\files\e904542b-83db-4022-9e8e-9369fe7bc761.png" "%IMAGEDB%\e904542b-83db-4022-9e8e-9369fe7bc761.png"

:: Access
copy "%IMAGEDB%\33ac6951-93ec-4034-9578-0d7dcc77c3f8.png" "%IMAGEDB%\33ac6951-93ec-4034-9578-0d7dcc77c3f8.png.backup"
copy ".\files\33ac6951-93ec-4034-9578-0d7dcc77c3f8.png" "%IMAGEDB%\33ac6951-93ec-4034-9578-0d7dcc77c3f8.png"

:: Wait
copy "%IMAGEDB%\0887f64f-4fe8-4a5b-9d41-77408fe0224b.png" "%IMAGEDB%\0887f64f-4fe8-4a5b-9d41-77408fe0224b.png.backup"
copy ".\files\0887f64f-4fe8-4a5b-9d41-77408fe0224b.png" "%IMAGEDB%\0887f64f-4fe8-4a5b-9d41-77408fe0224b.png"

:: No rez
copy "%IMAGEDB%\fb146e53-714b-4b29-861a-d58ca9840c00.png" "%IMAGEDB%\fb146e53-714b-4b29-861a-d58ca9840c00.png.backup"
copy ".\files\fb146e53-714b-4b29-861a-d58ca9840c00.png" "%IMAGEDB%\fb146e53-714b-4b29-861a-d58ca9840c00.png"

echo Pack installed!
pause 