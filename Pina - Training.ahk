
#SingleInstance Force
#MaxThreads  255
#MaxHotkeysPerInterval  200

If (FileExist(A_ScriptDir . "/Posições_Training_Pina.txt"))
{
	FileRead, save15, %A_ScriptDir%/Posições_Training_Pina.txt
	StringSplit, Training_, save15, |
}

Gui, Color, White, White
Gui, Margin, 20, 10
gui, Add,Tab2,vTab TCS_BUTTONS	0x100,Training
Gui, show, , Full Gordão - Taining
gui, Tab,Training
;----------------------------------------------------
;Train Mana
Gui, Add, Hotkey, x20 y50 h20 w50 vvariablelmana
gui, add, button, x80 y45 h30 w70 gMANA,  Train Mana
Gui Add, Checkbox, x160 y42 w100 h40 vMANAon gMANAo, % "On/Off"
;----------------------------------------------------
;food
Gui, Add, Hotkey, x20 y90 h20 w50 vvariablelfood
gui, add, button, x80 y85 h30 w70, Comer Food
Gui Add, Checkbox, x160 y82 w100 h40 vFoodon gFoodo, % "On/Off"
;----------------------------------------------------	
	;flechas
Gui, Add, Hotkey, x20 y130 h20 w50 vvariablelflechas
gui, add, button, x80 y125 h30 w70 gFLECHAS, Flechas
Gui Add, Checkbox, x160 y122 w100 h40 vFLECHASon gFLECHASo, % "On/Off"
;----------------------------------------------------
;Next Target
Gui, Add, Hotkey, x20 y170 h20 w50 vvariablelNT

gui, add, button, x80 y165 h30 w70 gAttarget, Attack Target
Gui Add, Checkbox, x160 y162 w100 h40 vNTon gNTo, % "On/Off"
;----------------------------------------------------	
;Soft
Gui, Add, Hotkey, x20 y210 h20 w50 vvariablelsft
gui, add, button, x80 y205 h30 w70 gSFT,  Soft Boots
Gui Add, Checkbox, x160 y202 w100 h40 vSFTon gSFTo, % "On/Off"
;----------------------------------------------------
;salvar as posições
Gui, add, button, x280 y215 gSALVAR_Training, Salvar
;----------------------------------------------------
gui, add, button, x240 y250 h30 w80 gexit, Exit Script
;----------------------------------------------------



Random, rand1, 1100, 1300
Random, rand2, 1200, 1500
Random, rand3, 1000, 1150
Random, rand4, 2100, 2500

gui, show
return

;-----------------------------------------------
{
	Mana:
	Gui Submit, NoHide
	{
		MsgBox ,48 , , Selecione a Posição de sua Mana full, 10
		KeyWait, LButton, D
		MouseGetPos, Training_2, Training_3
		PixelGetColor, Training_1,   %Training_2%, %Training_3% 
	}
	return
	
	Trainmana:
	#if (MANAon)
	{
		
		PixelGetColor, colormp0101,   %Training_2%, %Training_3% 
		;if WinActive("Tibia - ")
		{
			if (Training_1 == colormp0101)
			{
				Send {%variablelmana%}
				Sleep, rand1
				return
			}
		}
		
	}
	#if
	Return
	
	MANAo:
	Gui Submit, NoHide
	if (MANAon)
	{
		SetTimer, Trainmana, 100
	}
	else
	{
		SetTimer, Trainmana, Off
		
	}
	Return
}
;-----------------------------------------------
{
	Comerfood:
	#if (Foodon)
	{
		;if WinActive("Tibia - ")
		{
			Send {%variablelfood%}
			Sleep, 60000
			return
			
		}
		
	}
	#if
	Return
	
	Foodo:
	Gui Submit, NoHide
	if (Foodon)
	{
		SetTimer, Comerfood, 100
		MsgBox ,48 , , Comer Food foi ativado!, 10.
	}
	else
	{
		SetTimer, Comerfood, Off
		MsgBox ,48 , , Comer Food foi desativado!, 10.
	}
	Return
}
;-----------------------------------------------
{
	FLECHAS:
	Gui Submit, NoHide
	{
		MsgBox ,48 , , Selecione a Posição onde vai puxar flechas (centro) sem nada!, 10
		KeyWait, LButton, D
		MouseGetPos, Training_5, Training_6
		PixelGetColor, Training_4,   %Training_5%, %Training_6% 
	}
	return
	
	TrainFlechas:
	#if (MANAon)
	{
		
		PixelGetColor, colorFlechas0101,   %Training_5%, %Training_6% 
		;if WinActive("Tibia - ")
		{
			if (Training_4 == colorFlechas0101)
			{
				Send {%variablelFlechas%}
				Sleep, rand1
				return
			}
		}
		
	}
	#if
	Return
	
	Flechaso:
	Gui Submit, NoHide
	if (Flechason)
	{
		SetTimer, TrainFlechas, 100
	}
	else
	{
		SetTimer, TrainFlechas, Off
		
	}
	Return
}
;-----------------------------------------------
{
	Attarget:
	Gui Submit, NoHide
	{
		MsgBox ,48 , , Selecione a Posição onde esta o primeiro bicho (battle)!, 10
		KeyWait, LButton, D
		MouseGetPos, Training_8, Training_9
		PixelGetColor, Training_7,   %Training_8%, %Training_9% 
		return
	}
	
	ATarget:
	#if (NTon)
	{
		PixelGetColor, colorbb1,   %Training_8%, %Training_9% 
		;if WinActive("Tibia - ")
		{
			if (Training_7 == colorbb1)
			{
				send {Escape}
				Sleep, 100
				Send {%variablelNT%}
				Sleep, 15000
				return
			}	
		}
		
	}
	#if
	Return
	
	NTo:
	Gui Submit, NoHide
	if (NTon)
	{
		SetTimer, ATarget, 100
		MsgBox ,48 , , Attack Target foi ativado!, 10.
	}
	else
	{
		SetTimer, ATarget, Off
		MsgBox ,48 , , Attack Target foi desativado!, 10.
	}
	Return
}
;-----------------------------------------------
{
	SFT:
	Gui Submit, NoHide
	{
		MsgBox ,48 , , Selecione a Posição de sua Mana full, 10
		KeyWait, LButton, D
		MouseGetPos, Training_11, Training_12
		PixelGetColor, Training_10,   %Training_11%, %Training_12% 
	}
	return
	
	SoftBoots:
	#if (MANAon)
	{
		
		PixelGetColor, colorSFT0101,   %Training_11%, %Training_12% 
		;if WinActive("Tibia - ")
		{
			if (Training_10 != colorSFT0101)
			{
				Send {%variablelSFT%}
				Sleep, rand1
				return
			}
		}
		
	}
	#if
	Return
	
	SFTo:
	Gui Submit, NoHide
	if (SFTon)
	{
		SetTimer, SoftBoots, 1000
	}
	else
	{
		SetTimer, SoftBoots, Off
		
	}
	Return
}
;-----------------------------------------------
SALVAR_Training:
Gui, submit, nohide
FileDelete, %A_ScriptDir%/Posições_Training_Pina.txt
FileAppend, %Training_1%, %A_ScriptDir%/Posições_Training_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Training_Pina.txt
FileAppend, %Training_2%, %A_ScriptDir%/Posições_Training_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Training_Pina.txt
FileAppend, %Training_3%, %A_ScriptDir%/Posições_Training_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Training_Pina.txt
FileAppend, %Training_4%, %A_ScriptDir%/Posições_Training_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Training_Pina.txt
FileAppend, %Training_5%, %A_ScriptDir%/Posições_Training_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Training_Pina.txt
FileAppend, %Training_6%, %A_ScriptDir%/Posições_Training_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Training_Pina.txt
FileAppend, %Training_7%, %A_ScriptDir%/Posições_Training_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Training_Pina.txt
FileAppend, %Training_8%, %A_ScriptDir%/Posições_Training_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Training_Pina.txt
FileAppend, %Training_9%, %A_ScriptDir%/Posições_Training_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Training_Pina.txt
FileAppend, %Training_10%, %A_ScriptDir%/Posições_Training_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Training_Pina.txt
FileAppend, %Training_11%, %A_ScriptDir%/Posições_Training_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Training_Pina.txt
FileAppend, %Training_12%, %A_ScriptDir%/Posições_Training_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Training_Pina.txt


Return
;-----------------------------------------------
;-----------------------------------------------
guiclose:
exit:
{
	exitapp
}
return