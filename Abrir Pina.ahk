
#SingleInstance Force
#MaxThreads  255
#MaxHotkeysPerInterval  200
Gui, Color, White, White
Gui, Margin, 3, 3

gui, Add,Tab2,vTab TCS_BUTTONS	0x100,Full Gordão

gui, Tab,Full Gordão
;----------------------------------------------------
Gui, show, , Full Gordão
;----------------------------------------------------
gui, add, button, x50 y45 h30 w70 gHcM,  Heal Com Magias
;----------------------------------------------------
gui, add, button, x50 y85 h30 w70 gHcP,  Heal Com Potions
;----------------------------------------------------
gui, add, button, x130 y45 h30 w70 gTrA,  Trainings
;----------------------------------------------------
gui, add, button, x130 y85 h30 w70 gLoT,  Loots
;----------------------------------------------------
gui, add, button, x50 y125 h30 w70 gMvS,  Moveset
;----------------------------------------------------

gui, show
return


HcM:
{
	Run, Pina - Heal Com Magias.ahk
}
return

HcP:
{
	Run, Pina - Heal Com Potions.ahk
}
return

TrA:
{
	Run, Pina - Training.ahk
}
return

LoT:
{
	Run, Pina - Loots.ahk
}
return

MvS:
{
	Run, Pina - Moveset.ahk
}
return

guiclose:
exit:
{
	exitapp
}
return