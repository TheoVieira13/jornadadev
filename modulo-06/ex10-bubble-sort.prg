FUNCTION Main()

    LOCAL aNumeros := {}
    LOCAL cEntrada := ""
    LOCAL nNumero := 0, nI := 0

    FOR nI := 1 TO 10
        ACCEPT "Digite o " + LTrim(Str(nI)) + "º numero: " TO cEntrada
        nNumero := Val(cEntrada)
        AAdd(aNumeros, nNumero)
    NEXT

    QOut("")
    QOut("Vetor original:")
    ExibirVetor(aNumeros)

    BubbleSort(aNumeros)

    QOut("")
    QOut("Vetor ordenado:")
    ExibirVetor(aNumeros)

RETURN NIL


FUNCTION BubbleSort(aVetor)

    LOCAL nI := 0, nJ := 0, nTemp := 0

    FOR nI := 1 TO Len(aVetor) - 1

        FOR nJ := 1 TO Len(aVetor) - nI

            IF aVetor[nJ] > aVetor[nJ + 1]

                nTemp := aVetor[nJ]
                aVetor[nJ] := aVetor[nJ + 1]
                aVetor[nJ + 1] := nTemp

            ENDIF

        NEXT

    NEXT

RETURN NIL


FUNCTION ExibirVetor(aVetor)

    LOCAL nI := 0

    FOR nI := 1 TO Len(aVetor)
        QOut(aVetor[nI])
    NEXT

RETURN NIL