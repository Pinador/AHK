FileDelete, %A_ScriptDir%/DVer.txt
URLDownloadToFile, http://worldclockapi.com/api/json/est/now, %A_ScriptDir%/DVer.txt
FileRead, ARQUIVO_BAIXADO, %A_ScriptDir%/DVer.txt
RegExMatch(ARQUIVO_BAIXADO, "\d\d\d\d-\d\d-\d\d", DATA_ATUAL)
DATA_ATUAL_FORMATADA := SubStr(DATA_ATUAL, 1, 4) . SubStr(DATA_ATUAL, 6, 2) . SubStr(DATA_ATUAL, 9, 2)


Gosub, VERIFICAR_A_DATA ; Verifica no início da execução
SetTimer, VERIFICAR_A_DATA, 3600000 ; Verifica a cada hora de execução

If DATA_ATUAL_FORMATADA is not time
{
	msgbox % "Não foi possível verificar a validade"
	Return
}
If (DATA_ATUAL_FORMATADA < DATA_VALIDADE) ; Use um dia a mais, do contrário a validade encerra às 00:00 do dia 30.
{
	msgbox % "Script válido!"
	;-----------------------------------------------
	;-----------------------------------------------
	;-----------------------------------------------
	
	
	;-----------------------------------------------
	;-----------------------------------------------
	;-----------------------------------------------
	Return
}
else
{
	msgbox % "Script já venceu !!"
	Return
}



VERIFICAR_A_DATA:

DATA_VALIDADE := "20191008"
If (DATA_ATUAL_FORMATADA > DATA_VALIDADE)
{
	ExitApp ; Encerra o script se estiver vencido.
}
Return