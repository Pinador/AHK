
#SingleInstance Force
#MaxThreads  255
#MaxHotkeysPerInterval  200




If (FileExist(A_ScriptDir . "/Posições_Potions_Pina.txt"))
{
	FileRead, save13, %A_ScriptDir%/Posições_Potions_Pina.txt
	StringSplit, Potions_, save13, |
}

Gui, Color, White, White
Gui, Margin, 20, 10
gui, Add,Tab2,vTab TCS_BUTTONS	0x100,Potions
Gui, show, , Full Gordão - Heal com Potions
gui, Tab,Potions
;----------------------------------------------------
;Potion gigante
Gui, Add, Hotkey, x20 y50 h20 w50 vvariablel001
gui, add, button, x120 y45 h30 w70 gUlP,  Supreme
;----------------------------------------------------
;Potion grande
Gui, Add, Hotkey, x20 y90 h20 w50 vvariablel002
gui, add, button, x120 y85 h30 w70 gGrP,  Ultimate
;----------------------------------------------------
;Potion média
Gui, Add, Hotkey, x20 y130 h20 w50 vvariablel003
gui, add, button, x120 y125 h30 w70 gStP,  Great
;----------------------------------------------------
;Gui, Add, Hotkey, x20 y170 h20 w50 vvariablel004
;gui, add, button, x120 y165 h30 w70 gMnP,  Mana
;----------------------------------------------------
Gui Add, Checkbox, x200 y82 w100 h40 vPoton gPoto, % "On/Off"
;----------------------------------------------------
;salvar as posições
Gui, add, button, x280 y215 gSALVAR_Potions, Salvar
;----------------------------------------------------
;Exit
gui Add,Text,x20 y240,Para Pausar aperte Ctrl + Pause.
gui, add, button, x240 y250 h30 w80 gexit, Exit Script
;----------------------------------------------------

Random, rand1, 1100, 1300
Random, rand2, 1200, 1500
Random, rand3, 1000, 1150
Random, rand4, 2100, 2500

gui, show
return
;-----------------------------------------------

UlP: 
Gui Submit, NoHide
{
		MsgBox ,48 , , Selecione a Posição da sua Life onde usará o Supreme Potion, 10
		KeyWait, LButton, D
		MouseGetPos, Potions_2, Potions_3
		PixelGetColor, Potions_1,   %Potions_2%, %Potions_3% 
		MsgBox Posição %Potions_2%, %Potions_3%.
	}
	return
;-----------------------------------------------
	GrP: 
	Gui Submit, NoHide
	{
		MsgBox ,48 , , Selecione a Posição da sua Life onde usará o Ultimat Potion, 10
		KeyWait, LButton, D
		MouseGetPos, Potions_5, Potions_6
		PixelGetColor, Potions_4,   %Potions_5%, %Potions_6% 
		MsgBox Posição %Potions_5%, %Potions_6%.
	}
	return
;-----------------------------------------------
	StP: 
	Gui Submit, NoHide
	{
		MsgBox ,48 , , Selecione a Posição da sua Life onde usará o Great Potion, 10
		KeyWait, LButton, D
		MouseGetPos, Potions_8, Potions_9
		PixelGetColor, Potions_7,   %Potions_8%, %Potions_9% 
		MsgBox Posição %Potions_8%, %Potions_9%.
	}
	return
;-----------------------------------------------
;MnP: 
;Gui Submit, NoHide
;{
;	MsgBox ,48 , , Selecione a Posição da sua Mana onde usará a Potion, 10
;	KeyWait, LButton, D
;	MouseGetPos, Potions_11, Potions_12
;	PixelGetColor, Potions_10,   %Potions_11%, %Potions_12% 
;	MsgBox Posição %Potions_11%, %Potions_12%.
;}
;return
;-----------------------------------------------
	
	
	
;-----------------------------------------------
	Potera:
	#if (Poton)
	{
		PixelGetColor, colorhp011,   %Potions_2%, %Potions_3% 
		PixelGetColor, colorhp012,   %Potions_5%, %Potions_6% 
		PixelGetColor, colorhp013,   %Potions_8%, %Potions_9% 
	     ;PixelGetColor, colorhp014,   %Potions_11%, %Potions_12%
		;if WinActive("Tibia - ")
		{
			if (Potions_1 != colorhp011)
			{
				#MaxThreadsPerHotkey 5
				Send {%variablel001%}
				Sleep, rand3
				return 			
			}
			if (Potions_4 != colorhp012)
			{
				#MaxThreadsPerHotkey 5
				Send {%variablel002%}
				Sleep, rand3
				return
			}
			if (Potions_7 != colorhp013)
			{
				#MaxThreadsPerHotkey 5
				Send {%variablel003%}
				Sleep, rand3
				return
			}
		;if (Potions_10 != colorhp014)
		;{	
		;	Send {%variablel004%}
		;	Sleep, rand3
		;	return		
		;}
		}
		
	}
	#if
	Return
	
	Poto:
	Gui Submit, NoHide
	if (Poton)
	{
		SetTimer, Potera, 140
		
		
	}
	else
	{
		SetTimer, Potera, Off
		
}
Return	
;-----------------------------------------------
;-----------------------------------------------
SALVAR_Potions:
Gui, submit, nohide
FileDelete, %A_ScriptDir%/Posições_Potions_Pina.txt
FileAppend, %Potions_1%, %A_ScriptDir%/Posições_Potions_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Potions_Pina.txt
FileAppend, %Potions_2%, %A_ScriptDir%/Posições_Potions_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Potions_Pina.txt
FileAppend, %Potions_3%, %A_ScriptDir%/Posições_Potions_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Potions_Pina.txt
FileAppend, %Potions_4%, %A_ScriptDir%/Posições_Potions_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Potions_Pina.txt
FileAppend, %Potions_5%, %A_ScriptDir%/Posições_Potions_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Potions_Pina.txt
FileAppend, %Potions_6%, %A_ScriptDir%/Posições_Potions_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Potions_Pina.txt
FileAppend, %Potions_7%, %A_ScriptDir%/Posições_Potions_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Potions_Pina.txt
FileAppend, %Potions_8%, %A_ScriptDir%/Posições_Potions_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Potions_Pina.txt
FileAppend, %Potions_9%, %A_ScriptDir%/Posições_Potions_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Potions_Pina.txt

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

