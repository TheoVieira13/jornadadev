FUNCTION Main()

    LOCAL aProdutos := { ;
        {"Arroz", 25.50}, ;
        {"Feijao", 9.90}, ;
        {"Macarrao", 6.50}, ;
        {"Leite", 5.80}, ;
        {"Cafe", 18.90} }

    LOCAL aCarrinho := {}
    LOCAL cEntrada := ""
    LOCAL nOpcao := 0, nI := 0, nTotal := 0

    DO WHILE .T.

        CLS
        QOut("===== PRODUTOS =====")

        FOR nI := 1 TO Len(aProdutos)
            QOut(nI, "-", aProdutos[nI][1], "- R$", aProdutos[nI][2])
        NEXT

        QOut("0 - Finalizar compra")

        ACCEPT "Escolha um produto: " TO cEntrada
        nOpcao := Val(cEntrada)

        IF nOpcao == 0
            EXIT
        ENDIF

        IF nOpcao >= 1 .AND. nOpcao <= Len(aProdutos)
            AAdd(aCarrinho, aProdutos[nOpcao])
            QOut("Produto adicionado! Pressione ENTER...")
        ELSE
            QOut("Opcao invalida!")
        ENDIF

        Inkey(0)

    ENDDO

    CLS
    QOut("===== CARRINHO =====")

    FOR nI := 1 TO Len(aCarrinho)

        QOut(aCarrinho[nI][1], "- R$", aCarrinho[nI][2])
        nTotal := nTotal + aCarrinho[nI][2]

    NEXT

    QOut("")
    QOut("Total da compra: R$", nTotal)

RETURN NIL