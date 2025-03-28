
#SingleInstance Force
#MaxThreads  255
#MaxHotkeysPerInterval  200
If (FileExist(A_ScriptDir . "/Posições_Moveset_Pina.txt"))
{
	FileRead, save14, %A_ScriptDir%/Posições_Moveset_Pina.txt
	StringSplit, Loots_, save14, |
}
Gui, Color, White, White
Gui, Margin, 20, 10
gui, Add,Tab2,vTab TCS_BUTTONS	0x100,Moveset
Gui, show, , Full Gordão - Moveset


gui, Tab,Moveset
;----------------------------------------------------
;RING
Gui, Add, Hotkey, x20 y50 h20 w50 vvariablelring
gui, add, button, x120 y45 h30 w70 gPR,  Puxar Ring
Gui Add, Checkbox, x200 y42 w100 h40 vPRon gPRo, % "On/Off"
;----------------------------------------------------
;AMULET
Gui, Add, Hotkey, x20 y90 h20 w50 vvariablelamul
gui, add, button, x120 y85 h30 w70 gPA,  Puxar Amuleto
Gui Add, Checkbox, x200 y82 w100 h40 vPAon gPAo, % "On/Off"
;----------------------------------------------------
Gui, Add, Button, x120 y130 h30 w70, W A S D
Gui, Add, Checkbox, x200 y125 h40 w100 vwalking gwalkin, % "On/Off"
;----------------------------------------------------
;Ant Push
Gui, Add, Hotkey, x20 y170 h20 w50 vvariablel14
Gui, Add, Button, x70 y165 h30 w50 gSubmit14, Confirme a Key
gui, add, button, x120 y165 h30 w70 gAntPush, Ant Push
;----------------------------------------------------
;salvar as posições
Gui, add, button, x280 y215 gSALVAR_moveset, Salvar
;----------------------------------------------------
gui Add,Text,x20 y255,Para Suspender Aperte Ctrl + U.
gui, add, button, x240 y250 h30 w80 gexit, Exit Script
;----------------------------------------------------	


Random, rand1, 1100, 1300
Random, rand2, 1200, 1500
Random, rand3, 1000, 1150
Random, rand4, 2100, 2500

gui, show
return

;-----------------------------------------------
PR:
Gui Submit, NoHide
{
	MsgBox ,48 , , Selecione a Posição da vida que vai puxar o ring, 10
	KeyWait, LButton, D
	MouseGetPos, Moveset_2, Moveset_3
	PixelGetColor, Moveset_1,   %Moveset_2%, %Moveset_3% 
	MsgBox Posição %Moveset_2%, %Moveset_3%.
	MsgBox ,48 , , Selecione a Posição da mana necessaria para puxar o ring, 10
	KeyWait, LButton, D
	MouseGetPos, Moveset_5, Moveset_6
	PixelGetColor, Moveset_4,   %Moveset_5%, %Moveset_6% 
	MsgBox Posição %Moveset_5%, %Moveset_6%
	MsgBox ,48 , , Coloque o ring e selecone em cima dele para pegar a cor, 10
	KeyWait, LButton, D
	MouseGetPos, Moveset_8, Moveset_9
	PixelGetColor, Moveset_7,   %Moveset_8%, %Moveset_9% 
	MsgBox Posição %Moveset_8%, %Moveset_9%
}
return

PuxarRing:
#if (PRon)
{
	
	PixelGetColor, colorhp0201,   %Moveset_2%, %Moveset_3% 
	PixelGetColor, colormp0201,   %Moveset_5%, %Moveset_6% 
	PixelGetColor, colorrg0201,   %Moveset_8%, %Moveset_9% 
	;if WinActive("Tibia - Paladinoza")
	{
		if (Moveset_1 != colorhp0201) && (Moveset_4 == colormp0201)
		{
			#MaxThreadsPerHotkey 5
			Send {%variablelring%}
			Sleep, rand4
			Send {%variablelring%}
			return
		}
		if (Moveset_1 == colorhp0201) && (Moveset_7 == colorrg0201)
		{
			#MaxThreadsPerHotkey 5
			Send {%variablelring%}
		}
	}
	
}
#if
Return

PRo:
Gui Submit, NoHide
if (PRon)
{
	SetTimer, PuxarRing, 150
}
else
{
	SetTimer, PuxarRing, Off
	
}
Return
;-----------------------------------------------

PA:
Gui Submit, NoHide
{
	MsgBox ,48 , , Selecione a Posição da vida que vai puxar o Amuleto, 10
	KeyWait, LButton, D
	MouseGetPos, Moveset_11, Moveset_12
	PixelGetColor, Moveset_10,   %Moveset_11%, %Moveset_12% 
	MsgBox Posição %Moveset_11%, %Moveset_12%.
	MsgBox ,48 , , Coloque o amuleto e selecone em cima dele para pegar a cor, 10
	KeyWait, LButton, D
	MouseGetPos, Moveset_14, Moveset_15
	PixelGetColor, Moveset_13,   %Moveset_14%, %Moveset_15% 
	MsgBox Posição %Moveset_14%, %Moveset_15%
}
return

PuxarAmulet:
#if (PAon)
{
	
	PixelGetColor, coloram0201,   %Moveset_11%, %Moveset_12% 
	PixelGetColor, coloral0201,   %Moveset_14%, %Moveset_15% 
	;if WinActive("Tibia - Paladinoza")
	{
		if (Moveset_10 != coloram0201)
		{
			#MaxThreadsPerHotkey 5
			Send {%variablelamul%}
			Sleep, rand4
			Send {%variablelring%}
			return
		}
		if (Moveset_10 == coloram0201) && (Moveset_13 == coloral0201)
		{
			#MaxThreadsPerHotkey 5
			Send {%variablelring%}
		}
	}
	
}
#if
Return

PAo:
Gui Submit, NoHide
if (PAon)
{
	SetTimer, PuxarAmulet, 150
}
else
{
	SetTimer, PuxarAmulet, Off
	
}
Return
;-----------------------------------------------
#If (Walking)
{	 
	;if WinActive("Tibia - ")
	{
		w::Up
		q::send {VK24}
		a::Left
		e::send {VK21}
		s::Down
		z::send {VK23}
		d::Right
		c::send {VK22}
	}
}
#if
Return
	
walkin:
Gui Submit, NoHide
if(walking) 
{
	MsgBox ,48 , , W A S D foi ativado!, 10.	
}
else
{
	SetTimer, , Off
	MsgBox ,48 , , W A S D foi desativado!, 10.
}
Return
;-----------------------------------------------
{
	Submit14:
	Gui, Submit, NoHide
	Hotkey, %variablel14%, action14, On
	return
	AntPush:
	{
		MsgBox ,48 , , Selecione o Primeiro Item para Ant Push, 10
		KeyWait, LButton, D
		MouseGetPos, Antpush1X, Antpush1Y
		MsgBox ,48 , , Selecione o Segundo Item para Ant Push, 10
		KeyWait, LButton, D
		MouseGetPos, Antpush2X, Antpush2Y
		{
			action14:
			{
				;if WinActive("Tibia - ")
				{
					MouseGetPos, xpos, ypos
					Send {Shift down}
					MouseClickDrag, L, %Antpush1X%, %Antpush1Y%, %xpos%, %ypos%, 0
					MouseMove, %xpos%,%ypos%
					send {Shift Up}
					Sleep, 100
					MouseGetPos, xpos, ypos
					Send {Shift down}
					MouseClickDrag, L, %Antpush2X%, %Antpush2Y%,%xpos%, %ypos%, 0
					MouseMove, %xpos%,%ypos%
					send {Shift Up}
					return
				}
				
			}			
		}
		return
	}
}

;-----------------------------------------------	








;-----------------------------------------------
SALVAR_moveset:
Gui, submit, nohide
FileDelete, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, %Moveset_1%, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, %Moveset_2%, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, %Moveset_3%, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, %Moveset_4%, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, %Moveset_5%, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, %Moveset_6%, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, %Moveset_7%, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, %Moveset_8%, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, %Moveset_9%, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, %Moveset_10%, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, %Moveset_11%, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, %Moveset_12%, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, %Moveset_13%, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, %Moveset_14%, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, %Moveset_15%, %A_ScriptDir%/Posições_Moveset_Pina.txt
FileAppend, |, %A_ScriptDir%/Posições_Moveset_Pina.txt


Return

;-----------------------------------------------
guiclose:
exit:
{
	exitapp
}
return

