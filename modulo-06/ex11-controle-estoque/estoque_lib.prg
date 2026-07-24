FUNCTION Menu()

    LOCAL cOpcao := ""

    QOut("")
    QOut("===== CONTROLE DE ESTOQUE =====")
    QOut("1 - Cadastrar produto")
    QOut("2 - Listar produtos")
    QOut("3 - Entrada de estoque")
    QOut("4 - Saida de estoque")
    QOut("5 - Buscar produto")
    QOut("6 - Relatorio")
    QOut("0 - Sair")

    ACCEPT "Opcao: " TO cOpcao

RETURN cOpcao


FUNCTION CadastrarProduto(aProdutos)

    LOCAL cCodigo := ""
    LOCAL cNome := ""
    LOCAL cEntrada := ""
    LOCAL nQtd := 0
    LOCAL nPreco := 0

    ACCEPT "Codigo: " TO cCodigo
    ACCEPT "Nome: " TO cNome

    ACCEPT "Quantidade: " TO cEntrada
    nQtd := Val(cEntrada)

    ACCEPT "Preco: " TO cEntrada
    nPreco := Val(cEntrada)

    AAdd(aProdutos,{cCodigo,cNome,nQtd,nPreco})

    QOut("Produto cadastrado!")

RETURN NIL


FUNCTION ListarProdutos(aProdutos)

    LOCAL nI

    IF Len(aProdutos)==0
        QOut("Nenhum produto cadastrado.")
        RETURN NIL
    ENDIF

    FOR nI:=1 TO Len(aProdutos)

        QOut("---------------------------")
        QOut("Codigo: " + aProdutos[nI][1])
        QOut("Nome: " + aProdutos[nI][2])
        QOut("Quantidade: " + Str(aProdutos[nI][3]))
        QOut("Preco: " + Str(aProdutos[nI][4]))

    NEXT

RETURN NIL


FUNCTION BuscarCodigo(aProdutos,cCodigo)

    LOCAL nI

    FOR nI:=1 TO Len(aProdutos)

        IF aProdutos[nI][1]==cCodigo
            RETURN nI
        ENDIF

    NEXT

RETURN 0


FUNCTION EntradaEstoque(aProdutos)

    LOCAL cCodigo := ""
    LOCAL cEntrada := ""
    LOCAL nQtd := 0
    LOCAL nPos := 0

    ACCEPT "Codigo: " TO cCodigo

    nPos := BuscarCodigo(aProdutos,cCodigo)

    IF nPos==0
        QOut("Produto nao encontrado.")
        RETURN NIL
    ENDIF

    ACCEPT "Quantidade de entrada: " TO cEntrada
    nQtd := Val(cEntrada)

    aProdutos[nPos][3] += nQtd

    QOut("Estoque atualizado!")

RETURN NIL


FUNCTION SaidaEstoque(aProdutos)

    LOCAL cCodigo := ""
    LOCAL cEntrada := ""
    LOCAL nQtd := 0
    LOCAL nPos := 0

    ACCEPT "Codigo: " TO cCodigo

    nPos := BuscarCodigo(aProdutos,cCodigo)

    IF nPos==0
        QOut("Produto nao encontrado.")
        RETURN NIL
    ENDIF

    ACCEPT "Quantidade de saida: " TO cEntrada
    nQtd := Val(cEntrada)

    IF nQtd > aProdutos[nPos][3]
        QOut("Estoque insuficiente.")
    ELSE
        aProdutos[nPos][3] -= nQtd
        QOut("Saida realizada.")
    ENDIF

RETURN NIL


FUNCTION BuscarProduto(aProdutos)

    LOCAL cCodigo := ""
    LOCAL nPos := 0

    ACCEPT "Codigo: " TO cCodigo

    nPos := BuscarCodigo(aProdutos,cCodigo)

    IF nPos==0

        QOut("Produto nao encontrado.")

    ELSE

        QOut("Codigo: " + aProdutos[nPos][1])
        QOut("Nome: " + aProdutos[nPos][2])
        QOut("Quantidade: " + Str(aProdutos[nPos][3]))
        QOut("Preco: " + Str(aProdutos[nPos][4]))

    ENDIF

RETURN NIL


FUNCTION Relatorio(aProdutos)

    LOCAL nI
    LOCAL nValor
    LOCAL nTotal := 0

    QOut("===== RELATORIO =====")

    FOR nI:=1 TO Len(aProdutos)

        nValor := aProdutos[nI][3] * aProdutos[nI][4]

        QOut(aProdutos[nI][2] + ;
             "  Valor: " + ;
             Str(nValor))

        nTotal += nValor

    NEXT

    QOut("-----------------------")
    QOut("Total Geral: " + Str(nTotal))

RETURN NIL