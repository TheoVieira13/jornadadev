FUNCTION Main()

    LOCAL nNumero := 0, nTotal := 0, nQtd := 0

    INPUT "Digite um numero (0 para encerrar): " TO nNumero

    WHILE nNumero <> 0

        nTotal := nTotal + nNumero
        nQtd := nQtd + 1

        INPUT "Digite outro numero (0 para encerrar): " TO nNumero

    ENDDO

    QOut("")
    QOut("Soma total: " + AllTrim(Str(nTotal)))
    QOut("Quantidade de valores: " + AllTrim(Str(nQtd)))

RETURN NIL