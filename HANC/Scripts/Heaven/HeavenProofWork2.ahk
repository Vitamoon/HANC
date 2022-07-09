; Copyright © 2022 Kaelan Yim
; All rights reserved.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
DetectHiddenWindows On
SetTitleMatchMode 2

Run HeavenProofWork3.ahk
Sleep 1000

Sleep 4000
SendInput ^+k

Sleep 10000
SendInput ^+k
WinClose Unigine Heaven Benchmark

ExitApp
F4::ExitApp