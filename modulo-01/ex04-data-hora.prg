FUNCTION Main()
    LOCAL cEstilizacao := "==========================="
    LOCAL cNome := "Theo Vieira Cardozo"
    LOCAL cCidade := "Santo Andr‚ - SP"
    LOCAL cCurso := "Harbour/ADVPL"

    hb_cdpSelect("PT850")

    QOut(cEstilizacao)
    QOut("  FICHA DE APRESENTA€ÇO    ")
    qOut(cEstilizacao)
    QOut("Nome    : " + cNome)
    QOut("Cidade  : " + cCidade)
    QOut("Curso   : " + cCurso)
    QOut("Data    : " + DTOC(DATE()))
    QOut("Hora    : " + TIME()) 
    QOut(cEstilizacao)

RETURN NIL