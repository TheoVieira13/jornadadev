FUNCTION Main()

    LOCAL cHora := ""
    LOCAL nContador := 1

    FOR nContador := 1 TO 30
        cHora := ObterHora()
        cHora := FormatarHora(cHora)
        ExibirHora(cHora)
        
        Inkey(1)
    NEXT

RETURN NIL

FUNCTION ObterHora()

    LOCAL cHora := ""
    cHora := StrTran(Time(), ":", "")

RETURN cHora

FUNCTION FormatarHora(cHora)
    RETURN SubStr(cHora, 1, 2) + ":" + ;
           SubStr(cHora, 3, 2) + ":" + ;
           SubStr(cHora, 5, 2)


FUNCTION ExibirHora(cHora)

    CLS
    QOut("===================================")
    QOut("        RELOGIO DIGITAL")
    QOut("===================================")
    QOut("")
    QOut("Hora atual: " + cHora)

RETURN NIL