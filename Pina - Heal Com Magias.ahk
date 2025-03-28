
#SingleInstance Force
#MaxThreads  255
#MaxHotkeysPerInterval  200



If (FileExist(A_ScriptDir . "/Posições_Heal_Pina.txt"))
{
	FileRead, save12, %A_ScriptDir%/Posições_Heal_Pina.txt
	StringSplit, Heal_, save12, |
}

Gui, Color, White, White
Gui, Margin, 20, 10
gui, Add,Tab2,vTab TCS_BUTTONS	0x100,Heal

gui, Tab,Heal
;----------------------------------------------------
Gui, show, , Full Gordão - Heal com Magias
;Spell grande
Gui, Add, Hotkey, x20 y50 h20 w50 vvariablel01
gui, add, button, x120 y45 h30 w70 gEGS,  Heal Maior
;----------------------------------------------------
;Spell média
Gui, Add, Hotkey, x20 y90 h20 w50 vvariablel02
gui, add, button, x120 y85 h30 w70 gESA,  Heal Menor
;----------------------------------------------------
Gui Add, Checkbox, x200 y65 w100 h40 vEGSon gEGSo, % "On/Off"
;----------------------------------------------------
;SIO
Gui, Add, Hotkey, x20 y170 h20 w50 vvariablelSIO
gui, add, button, x120 y165 h30 w70 gSIO,  EXURA SIO
Gui Add, Checkbox, x200 y162 w100 h40 vSIOon gSIOo, % "On/Off"
;----------------------------------------------------
;salvar as posições
Gui, add, button, x280 y215 gSALVAR_Heal, Salvar
;----------------------------------------------------
;Exit
gui Add,Text,x20 y240,Para Pausar aperte Pause Break.
gui, add, button, x240 y250 h30 w80 gexit, Exit Script
;----------------------------------------------------


Random, rand1, 1100, 1300
Random, rand2, 1200, 1500
Random, rand3, 1000, 1150
Random, rand4, 2100, 2500

gui, show
return


EGS: 
Gui Submit, NoHide
{
		MsgBox ,48 , , Selecione a Posição da sua Life, 10
		KeyWait, LButton, D
		MouseGetPos, Heal_1, Heal_2
		PixelGetColor, Heal_3,   %Heal_1%, %Heal_2% 
		MsgBox Posição %Heal_1%, %Heal_2%.
		MsgBox ,48 , , Selecione a Posição de sua Mana, 10
		KeyWait, LButton, D
		MouseGetPos, Heal_4, Heal_5
		PixelGetColor, Heal_6,   %Heal_4%, %Heal_5% 
	}
	return
;-----------------------------------------------
	ESA: 
	Gui Submit, NoHide
	{
		MsgBox ,48 , , Selecione a Posição da sua Life, 10
		KeyWait, LButton, D
		MouseGetPos, Heal_7, Heal_8
		PixelGetColor, Heal_9,   %Heal_7%, %Heal_8% 
		MsgBox Posição %Heal_7%, %Heal_8%.
	}
	return
;-----------------------------------------------
	
	
	
;-----------------------------------------------
	Gransan:
	#if (EGSon)
	{
		PixelGetColor, colorhp01,   %Heal_1%, %Heal_2% 
		PixelGetColor, colormp01,   %Heal_4%, %Heal_5% 
		PixelGetColor, colorhp02,   %Heal_7%, %Heal_8% 
		;if WinActive("Tibia - Paladinoza")
		{
			if (Heal_3 != colorhp01)  &&  (Heal_6 == colormp01)
			{
				#MaxThreadsPerHotkey 5
				Send {%variablel01%}
				Sleep, rand1		
				return 		
			}
			if (Heal_9 != colorhp02)  &&  (Heal_6 == colormp01)
			{
				#MaxThreadsPerHotkey 5
				Send {%variablel02%}
				Sleep, rand2
				return
			}
		}
		
	}
	#if
	Return
	
	EGSo:
	Gui Submit, NoHide
	if (EGSon)
	{
		SetTimer, Gransan, 100
		
		
	}
	else
	{
		SetTimer, Gransan, Off
		
}
Return
;-----------------------------------------------
{
	SIO:
	Gui Submit, NoHide
	{
		MsgBox ,48 , , Selecione a Posição onde esta o primeiro Player Kina (battle)!, 10
		KeyWait, LButton, D
		MouseGetPos, Heal_11, Heal_12
		PixelGetColor, Heal_10,   %Heal_11%, %Heal_12% 
		MsgBox Posição %Heal_11%, %Heal_12%.
		
		MsgBox ,48 , , Selecione a Posição da vida do kina para dar SIO (battle)!, 10
		KeyWait, LButton, D
		MouseGetPos, Heal_14, Heal_15
		PixelGetColor, Heal_13,   %Heal_14%, %Heal_15% 
		MsgBox Posição %Heal_14%, %Heal_15%.
		
	}
	
	EXURASIO:
	#if (SIOon)
	{
		PixelGetColor, colorpk1,   %Heal_11%, %Heal_12% 
		PixelGetColor, colorlk1,   %Heal_14%, %Heal_15% 
		;if WinActive("Tibia - ")
		{
			if (Heal_10 == colorpk1) && (Heal_13 == colorlk1)
			{
				Send {%variablelSIO%}
				Sleep, rand2
				return
			}	
		}
		
	}
	#if
	Return
	
	SIOo:
	Gui Submit, NoHide
	if (SIOon)
	{
		SetTimer, EXURASIO, 100
	}
	else
	{
		SetTimer, EXURASIO, Off
	}
	Return
}
;-----------------------------------------------


SALVAR_Heal:
Gui, submit, nohide
FileDelete, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, %Heal_1%, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, %Heal_2%, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, %Heal_3%, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, %Heal_4%, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, %Heal_5%, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, %Heal_6%, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, %Heal_7%, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, %Heal_8%, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, %Heal_9%, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, %Heal_10%, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, %Heal_11%, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, %Heal_12%, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, %Heal_13%, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, %Heal_14%, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, %Heal_15%, %A_ScriptDir%/Posições_Heal_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pina.txt

Return
;-----------------------------------------------

;-----------------------------------------------
guiclose:
exit:
{
	exitapp
}
return
		
Pause::Pause

