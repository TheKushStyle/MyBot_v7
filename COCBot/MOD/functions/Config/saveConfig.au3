; #FUNCTION# ====================================================================================================================
; Name ..........: saveConfig.au3
; Description ...: Saves all of the GUI values to the config.ini and building.ini files
; Syntax ........: saveConfig()
; Parameters ....: NA
; Return values .: NA
; Author ........: AiO++ Team
; Modified ......:
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2017
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================

;  ������������������������������������������������������������������������
;  AiO++ Team
;  ������������������������������������������������������������������������

Func SaveConfig_MOD()

	ApplyConfig_MOD(GetApplyConfigSaveAction())

	; Check Collector Outside - Persian MOD (#-08)
	_Ini_Add("search", "DBMeetCollOutside", $g_bDBMeetCollOutside)
	_Ini_Add("search", "TxtDBMinCollOutsidePercent", GUICtrlRead($g_hTxtDBMinCollOutsidePercent))

	_Ini_Add("search", "DBCollectorsNearRedline", $g_bDBCollectorsNearRedline ? 1 : 0)
	_Ini_Add("search", "CmbRedlineTiles", _GUICtrlComboBox_GetCurSel($g_hCmbRedlineTiles))

	_Ini_Add("search", "SkipCollectorCheck", $g_bSkipCollectorCheck ? 1 : 0)
	_Ini_Add("search", "TxtSkipCollectorGold", GUICtrlRead($g_hTxtSkipCollectorGold))
	_Ini_Add("search", "TxtSkipCollectorElixir", GUICtrlRead($g_hTxtSkipCollectorElixir))
	_Ini_Add("search", "TxtSkipCollectorDark", GUICtrlRead($g_hTxtSkipCollectorDark))

	_Ini_Add("search", "SkipCollectorCheckTH", $g_bSkipCollectorCheckTH ? 1 : 0)
	_Ini_Add("search", "CmbSkipCollectorCheckTH", _GUICtrlComboBox_GetCurSel($g_hCmbSkipCollectorCheckTH))

	; Smart Train - Persian MOD (#-13)
	_Ini_Add("SmartTrain", "Enable", $ichkSmartTrain)
	_Ini_Add("SmartTrain", "PreciseTroops", $ichkPreciseTroops)
	_Ini_Add("SmartTrain", "ChkFillArcher", $ichkFillArcher)
	_Ini_Add("SmartTrain", "FillArcher", $iFillArcher)
	_Ini_Add("SmartTrain", "FillEQ", $ichkFillEQ)

EndFunc   ;==>SaveConfig_MOD
