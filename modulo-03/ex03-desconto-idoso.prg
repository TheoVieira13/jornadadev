FUNCTION Main()

    LOCAL cNome := ""
    LOCAL dNascimento
    LOCAL nPreco := 0
    LOCAL nIdade := 0
    LOCAL nDesconto := 0
    LOCAL nTotal := 0

    SET DATE BRITISH

    ACCEPT "Digite o nome do cliente: " TO cNome

    ACCEPT "Digite a data de nascimento (DD/MM/AAAA): " TO dNascimento
    dNascimento := CToD(dNascimento)

    ACCEPT "Digite o preco do produto: " TO nPreco
    nPreco := Val(nPreco)

    nIdade := CalculaIdade(dNascimento)

    IF nIdade > 60
        nDesconto := nPreco * 0.125
    ENDIF

    nTotal := nPreco - nDesconto

    QOut("")
    QOut("===== RESUMO =====")
    QOut("Cliente   : " + cNome)
    QOut("Idade     : " + LTrim(Str(nIdade)))
    QOut("Preco     : R$ " + LTrim(Str(nPreco, 10, 2)))
    QOut("Desconto  : R$ " + LTrim(Str(nDesconto, 10, 2)))
    QOut("Total     : R$ " + LTrim(Str(nTotal, 10, 2)))

RETURN NIL

FUNCTION CalculaIdade(dNascimento)

    RETURN Int((Date() - dNascimento) / 365)