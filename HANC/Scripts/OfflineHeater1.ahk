; Copyright © 2022 Kaelan Yim
; All rights reserved.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
DetectHiddenWindows On
SetTitleMatchMode 2

Run FurKill.ahk
Run PrimeKill.ahk
Run OfflineHeater2.ahk
Sleep 1000

FileRead, result, C:\Users\%A_UserName%\Documents\HANC\Scripts\elmor.csv
curtemp := SubStr(result, -5, 4)

Loop 2
{
	File := FileOpen("OfflineHeater2.ahk", "rw-d")

	File.Seek(467)
	File.Write(curtemp)
	File.Seek(467)
	Confirmer := File.Read(4)

	File.Close()

	; MsgBox %Confirmer%

	Run OfflineHeater4.ahk
	Sleep 10000
}

ExitApp
F4::ExitApp