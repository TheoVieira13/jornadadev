FUNCTION Main()

    LOCAL cTexto1 := "Harbour"
    LOCAL cTexto2 := "Harb"

    QOut("Comparando com =", cTexto1, "com", cTexto2)
    QOut(cTexto1 = cTexto2)

    QOut("Comparando com ==", cTexto1, "com", cTexto2)
    QOut(cTexto1 == cTexto2)

RETURN NIL