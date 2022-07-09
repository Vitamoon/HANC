#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

FileRead, xmldata, C:\Users\Hanc\Desktop\AmbientTemperature.xml
doc := ComObjCreate("MSXML2.DOMDocument.6.0")
doc.async := false
doc.loadXML(xmldata)

DocNode := doc.selectSingleNode("//LogDataExport/Logdata/LogDataSet/value")

value := DocNode.text

DetectHiddenWindows On
SetTitleMatchMode 2

	if value < 22
	{
		if WinExist("Geeks3D FurMark")
		{
			MsgBox FurMark is running! %value%
		}
		else 
	{
			Run FurMark
			MsgBox FurMark has been started. %value%
		}
	}
	else if value >= 22
	{
		if WinExist("Geeks3D FurMark")
		{
			Run KillFurMark.ahk
			MsgBox FurMark has been terminated. %value%
			
		}
		else 
		{
			MsgBox The room is already warm! %value%
		}
	}