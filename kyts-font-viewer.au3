﻿#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=assets\Icon.ico
#AutoIt3Wrapper_Outfile=bin\KyTs Font Viewer.exe
#AutoIt3Wrapper_Outfile_x64=bin\KyTs Font Viewer_x64.exe
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_UseUpx=y
#AutoIt3Wrapper_Compile_Both=y
#AutoIt3Wrapper_Res_Description=Better Font Viewer
#AutoIt3Wrapper_Res_Fileversion=1.0.1.6
#AutoIt3Wrapper_Res_Fileversion_AutoIncrement=y
#AutoIt3Wrapper_Res_ProductName=Kyts Font Viewer
#AutoIt3Wrapper_Res_ProductVersion=1.0
#AutoIt3Wrapper_Res_CompanyName=JK. Kyts
#AutoIt3Wrapper_Res_LegalCopyright=www.hieuda.com
#AutoIt3Wrapper_Res_Language=1033
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
;~ #RequireAdmin

#cs
		░░▓▓███  ████████████████████████████████▄▄
		░░▓▓███  ██         ▓███
		░░▓▓███ ██   ██  ██ ▓███  ██████
		░░▓▓█████    ██  ██ ▓███  ██   █
		░░▓▓███████  ██  ██ ▓███  ██
		░░▓▓▌█▐  ▌█  ▌▄  █▐ ▓▐██  ██████
		░░▓▓▌▄▐  ▌█  ▌▄  █▐ ▓▐██       █
		░░▓▓▌█▐  ▌█  ▌▀███▐ ▓▐██  ██████
						 ██
 ▄▄████████████████████████
#ce

Opt("TrayIconHide", 1)
Opt("GUICloseOnESC", 1)
Opt("GUIOnEventMode", 1)

#include "lib\App\App.au3"

_GDIPlus_Startup()
        
#Region Create GUI, Get Cmd argument, open first file
_Create_MainGUI()
_Get_CmdArgs_InstallFont()

;~ What is this? I don't remember
If StringInStr($TypeFont, _GetFileType($CurentFontPath)) <> 0 Then
	_ViewFont($CurentFontPath)
Else
	_ViewFile()
EndIf

WinSetTrans($hGUI, "", 0)
GUISetState()
_ShowForm()
_GUICtrlTVExplorer_Expand($hTV, $CurentFontPath)
#EndRegion ;	Create GUI and mesages

_GUI_Loop()

;~ ##########################
;~ ###### END OF PROGRAM ####
;~ ##########################
