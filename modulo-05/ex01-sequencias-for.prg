FUNCTION Mai()

    LOCAL nCont := 0

    FOR nCont := 1 TO 100
        QOut("O valor do contador e: " + AllTrim(Str(nCont)))
    NEXT

    FOR nCont := -50 TO 50
        QOut("O valor do contador e: " + AllTrim(Str(nCont)))
    NEXT

    FOR nCont := 80 TO 5 STEP -1
        QOut("O valor do contador e: " + AllTrim(Str(nCont)))
    NEXT

RETURN NIL