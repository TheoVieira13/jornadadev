FUNCTION FatorialN(nN)

    LOCAL nFat := 1
    LOCAL nI := 0
    
    IF nN < 0
        RETURN NIL
    ENDIF

    FOR nI := 1 TO nN
        nFat *= nI
    NEXT

RETURN nFat

FUNCTION EhPrimo(nN)

    LOCAL nI := 0

    IF nN < 2
        RETURN .F.
    ENDIF

    FOR nI := 2 TO Int(Sqrt(nN))
        IF nN % nI == 0
            RETURN .F.
        ENDIF
    NEXT

RETURN .T.

FUNCTION MDC( nA, nB )

    LOCAL nResto := 0

    nA := Abs(nA)
    nB := Abs(nB)

    DO WHILE nB <> 0
        nResto := nA % nB
        nA := nB
        nB := nResto
    ENDDO

RETURN nA

FUNCTION MMC( nA, nB )

    IF nA == 0 .OR. nB == 0
        RETURN 0
    ENDIF

RETURN Abs(nA * nB) / MDC(nA, nB)