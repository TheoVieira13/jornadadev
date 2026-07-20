FUNCTION Main()

    LOCAL nNumeroSecreto := HB_RandomInt(1, 100)
    LOCAL nPalpite := 0, nTentativa := 0

    QOut("=== JOGO: ADIVINHE O NUMERO ===")
    QOut("Voce tem 7 tentativas para acertar um numero entre 1 e 100.")
    QOut("")

    FOR nTentativa := 1 TO 7

        INPUT "Tentativa " + LTrim(Str(nTentativa)) + ": " TO nPalpite

        IF nPalpite == nNumeroSecreto
            QOut("Parabens! Voce acertou o numero!")
            EXIT

        ELSEIF nPalpite < nNumeroSecreto
            QOut("O numero secreto e maior.")

        ELSE
            QOut("O numero secreto e menor.")
        ENDIF

    NEXT

    QOut("")
    QOut("O numero secreto era: " + LTrim(Str(nNumeroSecreto)))

RETURN NIL