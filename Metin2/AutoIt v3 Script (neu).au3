#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

#include <AutoItConstants.au3>

; Press Esc to terminate script, Pause/Break to "pause"

Global $Paused, $counter
HotKeySet("{PAUSE}", "TogglePause")
HotKeySet("{ESC}", "Terminate")
HotKeySet("+!d", "ShowMessage") ;Shift-Alt-d

; Script Start - Add your code below here

#RequireAdmin

While 1
	Fishing()
WEnd


Func Fishing()
	Local $aCoord = PixelSearch(931, 501, 992, 572, 0x3A5C7B	, 6)
	If Not @error Then
		MouseClick($MOUSE_CLICK_LEFT, $aCoord[0] , $aCoord[1] , 1, 0)
		Sleep(1000)
	EndIf
EndFunc

Func TogglePause()
    $Paused = NOT $Paused
    While $Paused
        sleep(100)
        ToolTip('Script is "Paused"',0,0, $counter, 1)
    WEnd
    ToolTip("")
EndFunc

Func Terminate()
    Exit 0
EndFunc