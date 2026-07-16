FUNCTION Main()

    LOCAL nA, nB

    ACCEPT "Digite o valor de A: " TO nA
    ACCEPT "Digite o valor de B: " TO nB

    nA := Val(nA)
    nB := Val(nB)

    QOut("Soma: " + LTrim(Str(nA + nB, 10, 2)))
    QOut("Subtração: " + LTrim(Str(nA - nB, 10, 2)))
    QOut("Multiplicação: " + LTrim(Str(nA * nB, 10, 2)))

    IF nB <> 0
        QOut("Divisão: " + LTrim(Str(nA / nB, 10, 2)))
    ELSE
        QOut("Divisão: impossível dividir por zero.")
    ENDIF

RETURN NIL