FUNCTION Main()

    LOCAL cJogador := "", cCPU := "", cResultado := "", cContinuar := "S"

    DO WHILE Upper(AllTrim(cContinuar)) == "S"

        CLS 
        ACCEPT "Escolha Pedra, Papel ou Tesoura: " TO cJogador
        cJogador := Upper(AllTrim(cJogador))

        IF !ValidarJogada(cJogador)
            QOut("Jogada Invalida!")
            RETURN NIL
        ELSE

            cCPU := SortearJogadaCPU()

            QOut("")
            QOut("Sua jogada: ", cJogador)
            QOut("CPU: ", cCPU)

            cResultado := DefinirVencedor(cJogador, cCPU)

            QOut("")
            QOut(cResultado)
        ENDIF
        QOut("")
        ACCEPT "Deseja jogar novamente? (S/N):" TO cContinuar
    ENDDO
    QOut("")
    QOut("Obrigado por jogar!")

RETURN NIL

FUNCTION SortearJogadaCPU()

    LOCAL nSorteio := HB_RandomInt(1,3)

    DO CASE
        CASE nSorteio == 1
            RETURN "PEDRA"
        CASE nSorteio == 2
            RETURN "PAPEL"
        OTHERWISE
            RETURN "TESOURA"
        ENDCASE

RETURN ""

FUNCTION ValidarJogada(cJogada)

    RETURN cJogada == "PEDRA" .OR. ;
           cJogada == "PAPEL" .OR. ;
           cJogada == "TESOURA"

FUNCTION DefinirVencedor(cJogador, cCPU)

    IF cJogador == cCPU
        RETURN "Empate!"
    ENDIF

    DO CASE
        CASE cJogador == "PEDRA" .AND. cCPU == "TESOURA"
            RETURN "Voce venceu!"

        CASE cJogador == "PAPEL" .AND. cCPU == "PEDRA"
            RETURN "Voce venceu!"

        CASE cJogador == "TESOURA" .AND. cCPU == "PAPEL"
            RETURN "Voce venceu!"

        OTHERWISE
            RETURN "Computador venceu!"
        ENDCASE

RETURN ""