; Copyright © 2022 Kaelan Yim
; All rights reserved.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
DetectHiddenWindows On
SetTitleMatchMode 2

Run C:\Users\%A_UserName%\Documents\HANC\Scripts\Common\FurKill.ahk
Run C:\Users\%A_UserName%\Documents\HANC\Scripts\Common\PrimeKill.ahk
Run OfflineElmorHeater2.ahk
Sleep 1000

FileRead, result, C:\Users\%A_UserName%\Documents\HANC\Scripts\Elmor\AmbientTemperature.csv
curtemp := SubStr(result, -5, 4)

Loop 600
{
	File := FileOpen("OfflineElmorHeater2.ahk", "rw-d")

	File.Seek(467)
	File.Write(curtemp)
	File.Seek(467)
	Confirmer := File.Read(5)

	File.Close()

	; MsgBox %Confirmer%

	Run OfflineElmorHeater4.ahk
	Sleep 60000
}

Sleep 10000
Run C:\Users\%A_UserName%\Documents\HANC\Scripts\Common\FurKill.ahk
Run C:\Users\%A_UserName%\Documents\HANC\Scripts\Common\PrimeKill.ahk

ExitApp
F4::ExitApp