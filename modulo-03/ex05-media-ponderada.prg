FUNCTION Main()

    LOCAL nNota1 := 0
    LOCAL nNota2 := 0
    LOCAL nNota3 := 0
    LOCAL nNota4 := 0
    LOCAL nMedia := 0

    INPUT "Digite a Primeira nota: " TO nNota1
    INPUT "Digite a Segunda nota: " TO nNota2
    INPUT "Digite a Terceira nota: " TO nNota3
    INPUT "Digite a Quarta nota: " TO nNota4

    nMedia := (nNota1 * 1 + nNota2 * 2 + nNota3 * 3 + nNota4 * 4) / 10

    QOut("Media ponderada: " + LTrim(Str(nMedia, 10, 2)))

RETURN NIL