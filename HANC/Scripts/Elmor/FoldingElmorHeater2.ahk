; Copyright © 2022 Kaelan Yim
; All rights reserved.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
DetectHiddenWindows On
SetTitleMatchMode 2

TestDigit := (27.6)*(9/5)+32
DisplayNumber := Round(TestDigit, 1)

; Gui, Add, Text, cBlue, .  60                          70
Gui, Add, Text, vCurTemp cBlack w280, Loading...
Gui, Add, Slider, vSliderOutput w300 Range60-90 ToolTip TickInterval1, 70
Gui, Add, Text, cBlack, .  60                          70                          80                          90
Gui, Add, Button, gFailsafe, Terminate All
; Gui, Add, Text, cRed, .                                                              80                          90
Gui, Show, w320 h160 Center, Temperature Control (°F)
Gui, +AlwaysOnTop

Gui, Submit, NoHide
Sleep 5000

Loop 600
{
	Gui, Submit, NoHide
	GuiControl, Text, CurTemp, Current Temperature: %DisplayNumber% °F

	File := FileOpen("FoldingElmorHeater3.ahk", "rw-d")

	File.Seek(456)
	File.Write(SliderOutput)
	File.Seek(456)
	Confirmer := File.Read(2)

	File.Close()
	
	; MsgBox %Confirmer%

	Run FoldingElmorHeater3.ahk
	Sleep 60000
}

Failsafe:
{
	Run C:\Users\%A_UserName%\Documents\HANC\Scripts\Common\FoldKill.ahk
	ExitApp
}
return

ExitApp
F4::ExitApp