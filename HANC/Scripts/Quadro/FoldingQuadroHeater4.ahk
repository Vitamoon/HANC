; Copyright © 2022 Kaelan Yim
; All rights reserved.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
DetectHiddenWindows On
SetTitleMatchMode 2

FileRead, xmldata, C:\Users\%A_UserName%\Documents\HANC\Scripts\Quadro\AmbientTemperature.xml
doc := ComObjCreate("MSXML2.DOMDocument.6.0")
doc.async := false
doc.loadXML(xmldata)

DocNode := doc.selectSingleNode("//LogDataExport/Logdata/LogDataSet/value")

curtemp := DocNode.text

if curtemp < 24.1
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
else if curtemp >= 22.1
{
	if WinExist("FAHCore")
	{
		Run C:\Users\%A_UserName%\Documents\HANC\Scripts\Common\FoldPause.ahk
	}
}

ExitApp
F4::ExitApp