FUNCTION Main()
    LOCAL nA := 0, nB := 0, nResultado := 0
    LOCAL cOperacao := ""
    INPUT "Digite o primeiro numero: " TO nA
    ACCEPT "Digite a operacao (+, -, *, /, ^, R ): " TO cOperacao
    cOperacao := Upper(cOperacao)

    IF cOperacao == "+" .OR. cOperacao == "-" .OR. cOperacao == "*" .OR. cOperacao == "/";
         .OR. cOperacao == "^"
        INPUT "Digite o segundo numero: " TO nB
    ENDIF

    DO CASE
        CASE cOperacao == "+"
            nResultado := nA + nB
            QOut("O resultado da soma e: " + AllTrim(Str(nResultado)))
        CASE cOperacao == "-"
            nResultado := nA - nB
            QOut("O resultado da subtracao e: " + AllTrim(Str(nResultado)))
        CASE cOperacao == "*"
            nResultado := nA * nB
            QOut("O resultado da multiplicacao e: " + AllTrim(Str(nResultado)))
        CASE cOperacao == "/"
            IF nB == 0
            QOut("Erro: Divisao por zero nao e permitida.")
            ELSE
                nResultado := nA / nB
                QOut("O resultado da divisao e: " + AllTrim(Str(nResultado)))
            ENDIF
        CASE cOperacao == "^"
            nResultado := nA ^ nB
            QOut("O resultado da potencia e: " + AllTrim(Str(nResultado)))
        CASE cOperacao == "R"
            IF nA < 0
                QOut("Erro: Raiz quadrada de numero negativo nao e permitida.")
            ELSE
                nResultado := Sqrt(nA)
                QOut("O resultado da raiz quadrada e: " + AllTrim(Str(nResultado)))
            ENDIF
        OTHERWISE
            QOut("Operacao invalida. Por favor, tente novamente.")
    ENDCASE
RETURN NIL