FUNCTION Main()

    LOCAL cNome := "", cDisciplina := "", cResposta := ""
    LOCAL nNota1 := 0, nNota2 := 0, nMedia := 0

    WHILE .T.
        cNome := ""
        cDisciplina := ""
        nNota1 := 0
        nNota2 := 0

        WHILE Len(AllTrim(cNome)) == 0
            ACCEPT "Digite o nome do aluno: " TO cNome
            IF Len(AllTrim(cNome)) == 0
                QOut("Nome invalido! Tente novamente.")
            ENDIF
        ENDDO

        WHILE .T.
            ACCEPT "Digite a disciplina (3 letras maiusculas): " TO cDisciplina
            cDisciplina := AllTrim(cDisciplina)
            IF Len(cDisciplina) == 3 .AND. cDisciplina == Upper(cDisciplina)
                EXIT
            ELSE
                QOut("Disciplina invalida! Ex.: MAT, POR, HIS.")
            ENDIF
        ENDDO

        WHILE .T.
            INPUT "Digite a primeira nota: " TO nNota1
            IF nNota1 >= 0 .AND. nNota1 <= 10
                EXIT
            ELSE
                QOut("Nota invalida! Digite um valor entre 0 e 10.")
            ENDIF
        ENDDO

        WHILE .T.
            INPUT "Digite a segunda nota: " TO nNota2
            IF nNota2 >= 0 .AND. nNota2 <= 10
                EXIT
            ELSE
                QOut("Nota invalida! Digite um valor entre 0 e 10.")
            ENDIF
        ENDDO

        nMedia := (nNota1 + nNota2) / 2

        QOut("")
        QOut("===== DADOS DO ALUNO =====")
        QOut("Nome: " + cNome)
        QOut("Disciplina: " + cDisciplina)
        QOut("Nota 1: " + LTrim(Str(nNota1, 5, 2)))
        QOut("Nota 2: " + LTrim(Str(nNota2, 5, 2)))
        QOut("Media: " + LTrim(Str(nMedia, 5, 2)))

        ACCEPT "Deseja calcular outro? (S/N): " TO cResposta
        cResposta := Upper(AllTrim(cResposta))
        IF cResposta <> "S"
            EXIT
        ENDIF

        QOut("")
    ENDDO

    QOut("Programa encerrado.")
RETURN NIL