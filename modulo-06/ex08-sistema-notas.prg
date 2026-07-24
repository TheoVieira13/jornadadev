FUNCTION Main()

    LOCAL aAlunos := {}
    LOCAL nQtd := 0, nI := 0, nMedia := 0
    LOCAL cNome := "", cEntrada := ""
    LOCAL n1 := 0, n2 := 0, n3 := 0, n4 := 0

    ACCEPT "Quantidade de alunos: " TO cEntrada
    nQtd := Val(cEntrada)

    FOR nI := 1 TO nQtd

        QOut("")
        QOut("Aluno ", nI)

        ACCEPT "Nome: " TO cNome

        ACCEPT "Nota 1: " TO cEntrada
        n1 := Val(cEntrada)

        ACCEPT "Nota 2: " TO cEntrada
        n2 := Val(cEntrada)

        ACCEPT "Nota 3: " TO cEntrada
        n3 := Val(cEntrada)

        ACCEPT "Nota 4: " TO cEntrada
        n4 := Val(cEntrada)

        AAdd(aAlunos, {cNome, n1, n2, n3, n4})

    NEXT

    QOut("")
    QOut("===== APROVADOS =====")

    FOR nI := 1 TO Len(aAlunos)

        nMedia := (aAlunos[nI][2] + ;
                   aAlunos[nI][3] + ;
                   aAlunos[nI][4] + ;
                   aAlunos[nI][5]) / 4

        IF nMedia >= 7
            QOut(aAlunos[nI][1], " - Media:", nMedia)
        ENDIF

    NEXT

    QOut("")
    QOut("===== REPROVADOS =====")

    FOR nI := 1 TO Len(aAlunos)

        nMedia := (aAlunos[nI][2] + ;
                   aAlunos[nI][3] + ;
                   aAlunos[nI][4] + ;
                   aAlunos[nI][5]) / 4

        IF nMedia < 7
            QOut(aAlunos[nI][1], " - Media:", nMedia)
        ENDIF

    NEXT

RETURN NIL