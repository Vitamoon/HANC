; Copyright © 2022 Kaelan Yim
; All rights reserved.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
DetectHiddenWindows On
SetTitleMatchMode 2

Run C:\Users\%A_UserName%\Documents\HANC\Scripts\Common\FoldKill.ahk
Sleep 1000
Run FAHControl
Run FAHClient.exe
Sleep 3000
WinMinimize FAHControl
WinMinimize FAHClient.exe
Sleep 1000
Run FoldingElmorHeater2.ahk
Sleep 1000

FileRead, xmldata, C:\Users\%A_UserName%\Documents\HANC\Scripts\Quadro\AmbientTemperature.xml
doc := ComObjCreate("MSXML2.DOMDocument.6.0")
doc.async := false
doc.loadXML(xmldata)

DocNode := doc.selectSingleNode("//LogDataExport/Logdata/LogDataSet/value")

curtemp := DocNode.text

Loop 600
{
	File := FileOpen("FoldingQuadroHeater2.ahk", "rw-d")

	File.Seek(467)
	File.Write(curtemp)
	File.Seek(467)
	Confirmer := File.Read(5)

	File.Close()

	; MsgBox %Confirmer%

	Run FoldingQuadroHeater4.ahk
	Sleep 60000
}

Sleep 10000
Run C:\Users\%A_UserName%\Documents\HANC\Scripts\Common\FoldKill.ahk
; this is important, otherwise F@H will stay open after the script ends

ExitApp
F4::ExitApp