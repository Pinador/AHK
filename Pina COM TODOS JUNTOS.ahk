
#SingleInstance Force
#MaxThreads  255
#MaxHotkeysPerInterval  200



If (FileExist(A_ScriptDir . "/Posições_Heal_Pala.txt"))
{
	FileRead, save12, %A_ScriptDir%/Posições_Heal_Pala.txt
	StringSplit, Heal_, save12, |
}
If (FileExist(A_ScriptDir . "/Posições_Potions_Pala.txt"))
{
	FileRead, save13, %A_ScriptDir%/Posições_Potions_Pala.txt
	StringSplit, Potions_, save13, |
}
If (FileExist(A_ScriptDir . "/Posições_Loots_Pala.txt"))
{
		FileRead, save14, %A_ScriptDir%/Posições_Loots_Pala.txt
		StringSplit, Loots_, save14, |
	}
If (FileExist(A_ScriptDir . "/Posições_Training_Pala.txt"))
{
		FileRead, save15, %A_ScriptDir%/Posições_Training_Pala.txt
		StringSplit, Training_, save15, |
}




Gui, Color, White, White

Gui, Margin, 20, 10

tabs:=3

gui, Add,Tab2,vTab TCS_BUTTONS	0x100,Heal|Potions|Loots|Moveset|Runes|Training

gui, Tab,Heal
;----------------------------------------------------
Gui, show, , Full Gordão - Brakinu Gay
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
;RING
Gui, Add, Hotkey, x20 y170 h20 w50 vvariablelring
gui, add, button, x120 y165 h30 w70 gPR,  Puxar Ring
Gui Add, Checkbox, x200 y162 w100 h40 vPRon gPRo, % "On/Off"
;----------------------------------------------------
;salvar as posições
Gui, add, button, x280 y215 gSALVAR_Heal, Salvar
;----------------------------------------------------
;Exit
gui Add,Text,x20 y220,Para Pausar Aperte Ctrl + H.
gui Add,Text,x20 y255,Para Suspender Aperte Ctrl + U.
gui, add, button, x240 y250 h30 w80 gexit, Exit Script
;----------------------------------------------------

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
gui Add,Text,x20 y220,Para Pausar Aperte Ctrl + H.
gui Add,Text,x20 y255,Para Suspender Aperte Ctrl + U.
gui, add, button, x240 y250 h30 w80 gexit, Exit Script
;----------------------------------------------------

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
gui Add,Text,x20 y220,Para Pausar Aperte Ctrl + H.
gui Add,Text,x20 y255,Para Suspender Aperte Ctrl + U.
gui, add, button, x240 y250 h30 w80 gexit, Exit Script
;----------------------------------------------------


gui, Tab,Moveset
;----------------------------------------------------
Gui, Add, Button, x120 y50 h30 w70, W A S D
Gui, Add, Checkbox, x200 y45 h40 w100 vwalking gwalkin, % "On/Off"
;----------------------------------------------------
;Ant Push
Gui, Add, Hotkey, x30 y90 h20 w50 vvariablel14
Gui, Add, Button, x80 y85 h30 w55 gSubmit14, Confirme a Key
gui, add, button, x135 y85 h30 w50 gAntPush, Ant Push
;----------------------------------------------------
gui Add,Text,x20 y220,Para Pausar Aperte Ctrl + H.
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
gui Add,Text,x20 y220,Para Pausar Aperte Ctrl + H.
gui Add,Text,x20 y255,Para Suspender Aperte Ctrl + U.
gui, add, button, x240 y250 h30 w80 gexit, Exit Script
;----------------------------------------------------

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
;-----------------------------------------------
;aparecer e sumir com o macro
;Insert::
;IfWinExist, PinaSpell
;	WinHide
;Else
;	WinShow, PinaSpell
;return
;-----------------------------------------------
;-----------------------------------------------
PR:
Gui Submit, NoHide
{
	MsgBox ,48 , , Selecione a Posição da vida que vai puxar o ring, 10
	KeyWait, LButton, D
	MouseGetPos, Heal_11, Heal_12
	PixelGetColor, Heal_10,   %Heal_11%, %Heal_12% 
	MsgBox Posição %Heal_11%, %Heal_12%.
	MsgBox ,48 , , Selecione a Posição da mana necessaria para puxar o ring, 10
	KeyWait, LButton, D
	MouseGetPos, Heal_14, Heal_15
	PixelGetColor, Heal_13,   %Heal_14%, %Heal_15% 
	MsgBox Posição %Heal_14%, %Heal_15%
	MsgBox ,48 , , Coloque o ring e selecone em cima dele para pegar a cor, 10
	KeyWait, LButton, D
	MouseGetPos, Heal_17, Heal_18
	PixelGetColor, Heal_16,   %Heal_17%, %Heal_18% 
	MsgBox Posição %Heal_17%, %Heal_18%
}
return

PuxarRing:
#if (PRon)
{
	
	PixelGetColor, colorhp0201,   %Heal_11%, %Heal_12% 
	PixelGetColor, colormp0201,   %Heal_14%, %Heal_15% 
	PixelGetColor, colorrg0201,   %Heal_17%, %Heal_18% 
	if WinActive("Tibia - Paladinoza")
	{
		if (Heal_10 != colorhp0201) && (Heal_13 == colormp0201)
		{
			#MaxThreadsPerHotkey 5
			Send {%variablelring%}
			Send {%variablel01%}
			Sleep, rand4
			Send {%variablelring%}
			return
		}
		if (heal_10 == colorhp0201) && (Heal_16 == colorrg0201)
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
		if WinActive("Tibia - Paladinoza")
		{
			if (Heal_3 != colorhp01)  &&  (Heal_6 == colormp01)
			{
				#MaxThreadsPerHotkey 5
				Send {%variablel01%}
				Sleep, %rand1%			
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
		if WinActive("Tibia - Paladinoza")
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
					if WinActive("Tibia - Paladinoza")
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
				if WinActive("Tibia - Paladinoza")
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
					if WinActive("Tibia - Paladinoza")
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
	}
;-----------------------------------------------
	#If (Walking)
	{	 
		if WinActive("Tibia - Paladinoza")
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
					if WinActive("Tibia - Paladinoza")
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
	#If (runaon)
	{
		if WinActive("Tibia - Paladinoza") 
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
	#If (runa1on)
	{
		Submitruna:
		Gui, Submit, NoHide
		Hotkey, %variablelruna%, actionruna, On
		return
		
		if WinActive("Tibia - Paladinoza") 
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
;-----------------------------------------------
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
		if WinActive("Tibia - Paladinoza")
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
;-----------------------------------------------
	Comerfood:
	#if (Foodon)
	{
		if WinActive("Tibia - Paladinoza")
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
;-----------------------------------------------
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
		if WinActive("Tibia - Paladinoza")
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
;-----------------------------------------------
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
			if WinActive("Tibia - Paladinoza")
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
;-----------------------------------------------
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
		if WinActive("Tibia - Paladinoza")
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
;-----------------------------------------------
SALVAR_Heal:
Gui, submit, nohide
FileDelete, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, %Heal_1%, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, %Heal_2%, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, %Heal_3%, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, %Heal_4%, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, %Heal_5%, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, %Heal_6%, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, %Heal_7%, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, %Heal_8%, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, %Heal_9%, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, %Heal_10%, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, %Heal_11%, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, %Heal_12%, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, %Heal_13%, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, %Heal_14%, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, %Heal_15%, %A_ScriptDir%/Posições_Heal_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Heal_Pala.txt

Return
;-----------------------------------------------
SALVAR_Potions:
Gui, submit, nohide
FileDelete, %A_ScriptDir%/Posições_Potions_Pala.txt
FileAppend, %Potions_1%, %A_ScriptDir%/Posições_Potions_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Potions_Pala.txt
FileAppend, %Potions_2%, %A_ScriptDir%/Posições_Potions_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Potions_Pala.txt
FileAppend, %Potions_3%, %A_ScriptDir%/Posições_Potions_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Potions_Pala.txt
FileAppend, %Potions_4%, %A_ScriptDir%/Posições_Potions_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Potions_Pala.txt
FileAppend, %Potions_5%, %A_ScriptDir%/Posições_Potions_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Potions_Pala.txt
FileAppend, %Potions_6%, %A_ScriptDir%/Posições_Potions_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Potions_Pala.txt
FileAppend, %Potions_7%, %A_ScriptDir%/Posições_Potions_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Potions_Pala.txt
FileAppend, %Potions_8%, %A_ScriptDir%/Posições_Potions_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Potions_Pala.txt
FileAppend, %Potions_9%, %A_ScriptDir%/Posições_Potions_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Potions_Pala.txt

Return
;-----------------------------------------------
SALVAR_Loots:
Gui, submit, nohide
FileDelete, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, %Loots_1%, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, %Loots_2%, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, %Loots_3%, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, %Loots_4%, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, %Loots_5%, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, %Loots_6%, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, %Loots_7%, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, %Loots_8%, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, %Loots_9%, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, %Loots_10%, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, %Loots_11%, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, %Loots_12%, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, %Loots_13%, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, %Loots_14%, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, %Loots_15%, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, %Loots_16%, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, %Loots_17%, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, %Loots_18%, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, %Loots_19%, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, %Loots_20%, %A_ScriptDir%/Posições_Loots_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Loots_Pala.txt

Return

;-----------------------------------------------
SALVAR_Training:
Gui, submit, nohide
FileDelete, %A_ScriptDir%/Posições_Training_Pala.txt
FileAppend, %Training_1%, %A_ScriptDir%/Posições_Training_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Training_Pala.txt
FileAppend, %Training_2%, %A_ScriptDir%/Posições_Training_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Training_Pala.txt
FileAppend, %Training_3%, %A_ScriptDir%/Posições_Training_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Training_Pala.txt
FileAppend, %Training_4%, %A_ScriptDir%/Posições_Training_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Training_Pala.txt
FileAppend, %Training_5%, %A_ScriptDir%/Posições_Training_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Training_Pala.txt
FileAppend, %Training_6%, %A_ScriptDir%/Posições_Training_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Training_Pala.txt
FileAppend, %Training_7%, %A_ScriptDir%/Posições_Training_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Training_Pala.txt
FileAppend, %Training_8%, %A_ScriptDir%/Posições_Training_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Training_Pala.txt
FileAppend, %Training_9%, %A_ScriptDir%/Posições_Training_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Training_Pala.txt
FileAppend, %Training_10%, %A_ScriptDir%/Posições_Training_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Training_Pala.txt
FileAppend, %Training_11%, %A_ScriptDir%/Posições_Training_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Training_Pala.txt
FileAppend, %Training_12%, %A_ScriptDir%/Posições_Training_Pala.txt
FileAppend, |, %A_ScriptDir%/Posições_Training_Pala.txt


Return
;-----------------------------------------------




;-----------------------------------------------
guiclose:
exit:
{
			exitapp
		}
		return
		
		^h::Pause
		^u::Suspend
