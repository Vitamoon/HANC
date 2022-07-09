; Copyright © 2022 Kaelan Yim
; All rights reserved.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
DetectHiddenWindows On
SetTitleMatchMode 2

TestDigit := (30.3)*(9/5)+32
DisplayNumber := Round(TestDigit, 1)

; Gui, Add, Text, cBlue, .  60                          70
Gui, Add, Text, vCurTemp cBlack w280, Loading...
Gui, Add, Slider, vSliderOutput w300 Range60-90 ToolTip TickInterval1, 70
Gui, Add, Text, cBlack, .  60                          70                          80                          90
Gui, Add, Button, gFailsafe, Terminate All
; Gui, Add, Text, cRed, .                                                              80                          90
Gui, Show, w320 h160 Center, Temperature Control (°F)
Gui, +AlwaysOnTop

Loop 10
{
	Gui, Submit, NoHide
	Sleep 9000

	; Run, CSVCurrentTemp.ahk
	; FileReadLine, Output, C:\Users\Hanc\Desktop\CurrentValue.txt, 1

	GuiControl, Text, CurTemp, Current Temperature: %DisplayNumber% °F

	File := FileOpen("OfflineHeater3.ahk", "rw-d")

	File.Seek(467)
	File.Write(SliderOutput)
	File.Seek(467)
	Confirmer := File.Read(4)

	File.Close()
	
	Run OfflineHeater3.ahk

	; MsgBox %Confirmer%
}

Failsafe:
{
Run FurKill.ahk
Run PrimeKill.ahk
ExitApp
}
return

ExitApp
F4::ExitApp