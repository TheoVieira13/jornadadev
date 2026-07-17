FUNCTION Main()

    LOCAL nNota1 := 0
    LOCAL nNota2 := 0
    LOCAL nNota3 := 0
    LOCAL nNota4 := 0
    LOCAL nMedia := 0

    INPUT "Digite a 1ª nota: " TO nNota1
    INPUT "Digite a 2ª nota: " TO nNota2
    INPUT "Digite a 3ª nota: " TO nNota3
    INPUT "Digite a 4ª nota: " TO nNota4

    nMedia := (nNota1 * 1 + nNota2 * 2 + nNota3 * 3 + nNota4 * 4) / 10

    QOut("Média ponderada: " + LTrim(Str(nMedia, 10, 2)))

RETURN NIL