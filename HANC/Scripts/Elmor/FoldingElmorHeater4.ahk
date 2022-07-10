; Copyright © 2022 Kaelan Yim
; All rights reserved.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
DetectHiddenWindows On
SetTitleMatchMode 2

FileRead, result, C:\Users\%A_UserName%\Documents\HANC\Scripts\Elmor\AmbientTemperature.csv
curtemp := SubStr(result, -5, 4)

if curtemp < 21.1
{
	if WinExist("FAHCore")
	{
		Sleep 1
	}
	else
	{
		Run C:\Users\%A_UserName%\Documents\HANC\Scripts\Common\FoldResume.ahk
	}
}
else if curtemp >= 21.1
{
	if WinExist("FAHCore")
	{
		Run C:\Users\%A_UserName%\Documents\HANC\Scripts\Common\FoldPause.ahk
	}
}

ExitApp
F4::ExitApp