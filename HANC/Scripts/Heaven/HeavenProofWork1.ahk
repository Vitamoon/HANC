; Copyright © 2022 Kaelan Yim
; All rights reserved.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
DetectHiddenWindows On
SetTitleMatchMode 1
; not sure why this is set to 1 here

Loop 1
{
	if FileExist("C:\Users\Hanc\Dropbox\Prototyping\heavenon.txt") {
		Run HeavenProofWork2.ahk
		Exit
	} else {
		Sleep 1000
	}
}

ExitApp
F4::ExitApp