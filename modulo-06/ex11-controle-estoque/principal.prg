FUNCTION Main()

    LOCAL aProdutos := {}
    LOCAL cOpcao := ""

    SET PROCEDURE TO estoque_lib.prg

    DO WHILE .T.

        cOpcao := Menu()

        DO CASE

        CASE cOpcao == "1"
            CadastrarProduto(@aProdutos)

        CASE cOpcao == "2"
            ListarProdutos(aProdutos)

        CASE cOpcao == "3"
            EntradaEstoque(@aProdutos)

        CASE cOpcao == "4"
            SaidaEstoque(@aProdutos)

        CASE cOpcao == "5"
            BuscarProduto(aProdutos)

        CASE cOpcao == "6"
            Relatorio(aProdutos)

        CASE cOpcao == "0"
            EXIT

        OTHERWISE
            QOut("Opcao invalida!")

        ENDCASE

    ENDDO

RETURN NIL