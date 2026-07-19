FUNCTION Main()

    LOCAL nA := 0
    LOCAL nB := 0

    INPUT "Digite o primeiro numero: " TO nA
    INPUT "Digite o segundo numero: " TO nB

    IF nA == nB
        QOut("Os numeros sao iguais")
    ELSEIF nA > nB
        QOut("O maior numero e: " + LTrim(Str(nA)))
        QOut("O menor numero e: " + LTrim(Str(nB)))
    ELSE
        QOut("O maior numero e: " + LTrim(Str(nB)))
        QOut("O menor numero e: " + LTrim(Str(nA)))
    ENDIF

RETURN NIL