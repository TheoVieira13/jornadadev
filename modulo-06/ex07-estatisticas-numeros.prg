FUNCTION Main()

    LOCAL aV := {}
    LOCAL nNumero := 0, nSoma := 0, nMedia := 0, nI := 0
    LOCAL cEntrada := ""

    FOR nI := 1 TO 10

        ACCEPT "Digite o " + LTrim(Str(nI)) + "º numero: " TO cEntrada
        nNumero := Val(cEntrada)

        AAdd(aV, nNumero)
        nSoma := nSoma + nNumero

    NEXT

    ASort(aV)

    nMedia := nSoma / Len(aV)

    QOut("")
    QOut("Numeros em ordem crescente:")

    FOR nI := 1 TO Len(aV)
        QOut(aV[nI])
    NEXT

    QOut("")
    QOut("Soma: ", nSoma)
    QOut("Media: ", nMedia)
    QOut("Menor numero: ", aV[1])
    QOut("Maior numero: ", aV[Len(aV)])

RETURN NIL