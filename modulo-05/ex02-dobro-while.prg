FUNCTION Main()

    LOCAL nNumero := 0

    INPUT "Digite um numero (0 ou negativo para sair): " TO nNumero

    WHILE nNumero > 0
        QOut("O dobro e: " + LTrim(Str(nNumero * 2)))
        INPUT "Digite outro numero (0 ou negativo para sair): " TO nNumero
    ENDDO

    QOut("Programa encerrado.")

RETURN NIL