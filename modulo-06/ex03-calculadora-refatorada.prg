FUNCTION Main()

    LOCAL nA := 0, nB := 0, nResultado := 0
    LOCAL cOperacao := ""
    LOCAL lSucesso := .T.

    nA := LerNumero("Digite o primeiro numero: ")
    ACCEPT "Digite a operacao (+, -, *, /, ^, R ): " TO cOperacao
    cOperacao := Upper(AllTrim(cOperacao))

    IF cOperacao == "+" .OR.;
       cOperacao == "-" .OR.;
       cOperacao == "*" .OR.;
       cOperacao == "/" .OR.;
       cOperacao == "^"
        
         nB := LerNumero("Digite o segundo numero: ")

    ENDIF

    lSucesso := Calcular(nA, nB, cOperacao, @nResultado)
    MostrarResultado(lSucesso, nResultado, cOperacao)

RETURN NIL

FUNCTION LerNumero(cMensagem)

    LOCAL nValor := 0
    INPUT cMensagem TO nValor

RETURN nValor

FUNCTION Calcular(nA, nB, cOperacao, nResultado)

    DO CASE

    CASE cOperacao == "+"
        nResultado := nA + nB

    CASE cOperacao == "-"
        nResultado := nA - nB

    CASE cOperacao == "*"
        nResultado := nA * nB

    CASE cOperacao == "/"

        IF nB == 0
            RETURN .F.
        ENDIF

        nResultado := nA / nB

    CASE cOperacao == "^"
        nResultado := nA ^ nB

    CASE cOperacao == "R"
        IF nA < 0
            RETURN .F.
        ENDIF

        nResultado := Sqrt(nA)

    OTHERWISE
        RETURN .F.

    ENDCASE

RETURN .T.

FUNCTION MostrarResultado(lSucesso, nResultado, cOperacao)

    IF lSucesso

        DO CASE
        CASE cOperacao == "+"
            QOut("O resultado da soma e: " + AllTrim(Str(nResultado)))

        CASE cOperacao == "-"
            QOut("O resultado da subtracao e: " + AllTrim(Str(nResultado)))

        CASE cOperacao == "*"
            QOut("O resultado da multiplicacao e: " + AllTrim(Str(nResultado)))

        CASE cOperacao == "/"
            QOut("O resultado da divisao e: " + AllTrim(Str(nResultado)))

        CASE cOperacao == "^"
            QOut("O resultado da potencia e: " + AllTrim(Str(nResultado)))

        CASE cOperacao == "R"
            QOut("O resultado da raiz quadrada e: " + AllTrim(Str(nResultado)))
        ENDCASE

    ELSE

        IF cOperacao == "/"
            QOut("Erro: Divisao por zero nao e permitida.")
        ELSEIF cOperacao == "R"
            QOut("Erro: Raiz quadrada de numero negativo nao e permitida.")
        ELSE
            QOut("Operacao invalida.")
        ENDIF

    ENDIF

RETURN NIL

