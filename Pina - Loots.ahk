
#SingleInstance Force
#MaxThreads  255
#MaxHotkeysPerInterval  200
If (FileExist(A_ScriptDir . "/Posições_Loots_Pina.txt"))
{
	FileRead, save14, %A_ScriptDir%/Posições_Loots_Raminha.txt
	StringSplit, Loots_, save14, |
}
Gui, Color, White, White
Gui, Margin, 20, 10
gui, Add,Tab2,vTab TCS_BUTTONS	0x100,Loots|Runes
Gui, show, , Full Gordão - Loots

gui, Tab,Loots
;----------------------------------------------------
Gui, Add, Hotkey, x20 y50 h20 w50 vvariablel03
Gui, Add, Button, x70 y45 h30 w53 gSubmit3, Confirme a Key
gui, add, button, x120 y45 h30 w65 gLoot0, Loot
Gui Add, Checkbox, x200 y42 w100 h40 vlooton glooto, % "On/Off"
;----------------------------------------------------
gui, add, button, x120 y85 h30 w65 gLoot1, Loot/Scroll-
;----------------------------------------------------
Gui Add, Checkbox, x200 y82 w100 h40 vloot1on gloot1o, % "On/Off"
;----------------------------------------------------
Gui, Add, Hotkey, x20 y130 h20 w50 vvariablel05
Gui, Add, Button, x70 y125 h30 w53 gSubmit5, Confirme a Key
gui, add, button, x120 y125 h30 w65 gLoot05, Puxar
Gui Add, Checkbox, x200 y122 w100 h40 vpuxaron gpuxaro, % "On/Off"
;----------------------------------------------------
;salvar as posições
Gui, add, button, x280 y215 gSALVAR_Loots, Salvar
;----------------------------------------------------
;Exit
gui Add,Text,x20 y255,Para Suspender Aperte Ctrl + U.
gui, add, button, x240 y250 h30 w80 gexit, Exit Script
;----------------------------------------------------


gui, Tab,Runes
;----------------------------------------------------
;Runas
gui, add, button, x105 y50 h30 w70 gRuna, Runa/Scroll+
Gui Add, Checkbox, x200 y45 w100 h40 vrunaon grunao, % "On/Off"
;----------------------------------------------------
Gui, Add, Hotkey, x30 y90 h20 w50 vvariablelruna
Gui, Add, Button, x80 y85 h30 w55 gSubmitruna, Confirme a Key
gui, add, button, x135 y85 h30 w40 gSDruna, Runa
Gui Add, Checkbox, x200 y82 w100 h40 vruna1on gruna1o, % "On/Off"
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
	Submit3:
	Gui, Submit, NoHide
	Hotkey, %variablel03%, action3, On
	return
	Loot0:
	{
		MsgBox ,48 , , Selecione sua diagonal esquerda norte, 10
		KeyWait, LButton, D
		MouseGetPos, Loots_1, Loots_2
		MsgBox ,48 , , Selecione seu norte, 10
		KeyWait, LButton, D
		MouseGetPos, Loots_3, Loots_4
		MsgBox ,48 , , Selecione sua diagonal direita norte, 10
		KeyWait, LButton, D
		MouseGetPos, Loots_5, Loots_6
		MsgBox ,48 , , Selecione sua direita, 10
		KeyWait, LButton, D
		MouseGetPos, Loots_7, Loots_8
		MsgBox ,48 , , Selecione sua diagonal direita sul, 10
		KeyWait, LButton, D
		MouseGetPos, Loots_9, Loots_10
		MsgBox ,48 , , Selecione seu sul, 10
		KeyWait, LButton, D
		MouseGetPos, Loots_11, Loots_12
		MsgBox ,48 , , Selecione sua diagonal esquerda sul, 10
		KeyWait, LButton, D
		MouseGetPos, Loots_13, Loots_14
		MsgBox ,48 , , Selecione sua esquerda, 10
		KeyWait, LButton, D
		MouseGetPos, Loots_15, Loots_16
		MsgBox ,48 , , Selecione seu pé, 10
		KeyWait, LButton, D
		MouseGetPos, Loots_17, Loots_18
		#if (looton)
		{
			action3:
			{
				;if WinActive("Tibia - Raminha Bloker")
				{
					SetMouseDelay, 6
					SetKeyDelay, 10
					SetDefaultMouseSpeed, 0
					Mousegetpos,ItemX,ItemY
					Send +{Click %Loots_1%,%Loots_2%, right}  
					Send +{Click %Loots_3%,%Loots_4%, right}
					Send +{Click %Loots_5%,%Loots_6%, right}
					Send +{Click %Loots_7%,%Loots_8%, right}
					Send +{Click %Loots_9%,%Loots_10%, right}
					Send +{Click %Loots_11%,%Loots_12%, right}
					Send +{Click %Loots_13%,%Loots_14%, right}
					Send +{Click %Loots_15%,%Loots_16%, right}
					Send +{Click %Loots_17%,%Loots_18%, right}
					MouseMove, %ItemX%, %ItemY%
					return
				}
			}
			return
		}
		return
		#if
	}
	
	looto:
	Gui Submit, NoHide
	if (looton)
	{
		SetTimer, Submit3, 100
	}
	else
	{
		SetTimer, Submit3, Off
	}
	Return
}
;-----------------------------------------------
{
	Submit4:
	Gui, Submit, NoHide
	return
	Loot1:
	{
		MsgBox ,48 , , Selecione sua diagonal esquerda norte, 10
		KeyWait, LButton, D
		MouseGetPos, Loots_1, Loots_2
		MsgBox ,48 , , Selecione seu norte, 10
		KeyWait, LButton, D
		MouseGetPos, Loots_3, Loots_4
		MsgBox ,48 , , Selecione sua diagonal direita norte, 10
		KeyWait, LButton, D
		MouseGetPos, Loots_5, Loots_6
		MsgBox ,48 , , Selecione sua direita, 10
		KeyWait, LButton, D
		MouseGetPos, Loots_7, Loots_8
		MsgBox ,48 , , Selecione sua diagonal direita sul, 10
		KeyWait, LButton, D
		MouseGetPos, Loots_9, Loots_10
		MsgBox ,48 , , Selecione seu sul, 10
		KeyWait, LButton, D
		MouseGetPos, Loots_11, Loots_12
		MsgBox ,48 , , Selecione sua diagonal esquerda sul, 10
		KeyWait, LButton, D
		MouseGetPos, Loots_13, Loots_14
		MsgBox ,48 , , Selecione sua esquerda, 10
		KeyWait, LButton, D
		MouseGetPos, Loots_15, Loots_16
		MsgBox ,48 , , Selecione seu pé, 10
		KeyWait, LButton, D
		MouseGetPos, Loots_17, Loots_18
		#if (loot1on)
		mbutton::
		{
			;if WinActive("Tibia - Raminha Bloker")
			{
				SetMouseDelay, 6
				SetKeyDelay, 10
				SetDefaultMouseSpeed, 0
				Mousegetpos,Item1X,Item1Y
				Send +{Click %Loots_1%,%Loots_2%, right}  
				Send +{Click %Loots_3%,%Loots_4%, right}
				Send +{Click %Loots_5%,%Loots_6%, right}
				Send +{Click %Loots_7%,%Loots_8%, right}
				Send +{Click %Loots_9%,%Loots_10%, right}
				Send +{Click %Loots_11%,%Loots_12%, right}
				Send +{Click %Loots_13%,%Loots_14%, right}
				Send +{Click %Loots_15%,%Loots_16%, right}
				Send +{Click %Loots_17%,%Loots_18%, right}
				MouseMove, %Item1X%, %Item1Y%
				return
			}
		}
		return
		#if
	}
	loot1o:
	Gui Submit, NoHide
	if (loot1on)
	{
		SetTimer, Submit4, 100	
	}
	else
	{
		SetTimer, Submit4, Off	
	}
	Return
	
}
;-----------------------------------------------
{
	Submit5:
	Gui, Submit, NoHide
	Hotkey, %variablel05%, action5, On
	return
	Loot05:
	{
		MsgBox ,48 , , Selecione a posição para arrastar o item, 10
		KeyWait, LButton, D
		MouseGetPos, Loots_19, Loots_20
		#if (looton)
		{
			action5:
			{
				;if WinActive("Tibia - Raminha Bloker")
				{
					MouseGetPos, xpos, ypos
					Send {Ctrl down}
					MouseClickDrag, L, %xpos%, %ypos%, %Loots_19%, %Loots_20%, 0
					MouseMove, %xpos%,%ypos%
					Send {Ctrl up}					
					return
					
				}
			}
			return
		}
		return
		#if
	}
	puxaro:
	Gui Submit, NoHide
	if (puxaron)
	{
		SetTimer, Submit5, 100	
	}
	else
	{
		SetTimer, Submit5, Off	
	}
	Return
	
}
;-----------------------------------------------	
#If (runaon)
{
	;if WinActive("Tibia - Raminha Bloker") 
	{
		Runa:
		{
			MsgBox ,48 , , Selecione a Primeira Runa, 10
			KeyWait, LButton, D
			MouseGetPos, Bp21X, Bp21Y
			WheelUp::
			{
				MouseGetPos, xpos21, ypos21
				MouseClick, right, %Bp21X%, %Bp21Y%, ,0
				MouseClick, left, %xpos21%, %ypos21%, ,0
				return
			} 
		}
		return
	}
}
#if
	
return

runao:
Gui Submit, NoHide
if(runaon) 
{
	
}
else
{
	SetTimer, Runa, Off
}
Return
;-----------------------------------------------
{
	#If (runa1on)
	{
		Submitruna:
		Gui, Submit, NoHide
		Hotkey, %variablelruna%, actionruna, On
		return
		
		;if WinActive("Tibia - Raminha Bloker") 
		{		
			SDruna:
			{
				MsgBox ,48 , , Selecione a Primeira Runa, 10
				KeyWait, LButton, D
				MouseGetPos, Bp113X, Bp113Y
				actionruna:
				{
					MouseGetPos, xpos, ypos
					MouseClick, right, %Bp113X%, %Bp113Y%, ,0
					MouseClick, left, %xpos%, %ypos%, ,0
					return
				} 
			}
			return
		}
	}
	#if
	
	return
	
	runa1o:
	Gui Submit, NoHide
	if(runa1on) 
	{
		
	}
	else
	{
		SetTimer, SDruna, Off
		SetTimer, Submitruna, Off	
	}
	Return
}

;-----------------------------------------------
SALVAR_Loots:
Gui, submit, nohide
FileDelete, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, %Loots_1%, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, %Loots_2%, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, %Loots_3%, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, %Loots_4%, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, %Loots_5%, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, %Loots_6%, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, %Loots_7%, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, %Loots_8%, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, %Loots_9%, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, %Loots_10%, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, %Loots_11%, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, %Loots_12%, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, %Loots_13%, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, %Loots_14%, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, %Loots_15%, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, %Loots_16%, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, %Loots_17%, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, %Loots_18%, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, %Loots_19%, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, %Loots_20%, %A_ScriptDir%/Posições_Loots_Raminha.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Raminha.txt

Return

;-----------------------------------------------
guiclose:
exit:
{
	exitapp
}
return

~^h::Pause
~^u::Suspend