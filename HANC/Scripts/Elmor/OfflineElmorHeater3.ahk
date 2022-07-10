; Copyright © 2022 Kaelan Yim
; All rights reserved.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
DetectHiddenWindows On
SetTitleMatchMode 2

Numerical := (70-32)*(5/9)
WriteString := Round(Numerical, 1)

Loop 1
{
	File := FileOpen("OfflineElmorHeater4.ahk", "rw-d")

	File.Seek(758)
	File.Write(WriteString)
	File.Seek(592)
	Output1 := File.Read(4)

	File.Seek(1057)
	File.Write(WriteString)
	File.Seek(891)
	Output2 := File.Read(4)

	File.Close()

	; MsgBox %Output1%, %Output2%
}

ExitApp
F4::ExitApp