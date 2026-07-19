FUNCTION Main()

    LOCAL aMeses := { "Janeiro", "Fevereiro", "Marco", "Abril", "Maio", "Junho", "Julho", ;
         "Agosto","Setembro", "Outubro", "Novembro", "Dezembro" }
    LOCAL nMes := 0

    INPUT "Digite o numero do mes: " TO nMes

    IF nMes >= 1 .AND. nMes <= 12
        QOut(aMeses[nMes])
    ELSE
        QOut("Mes invalido.")
    ENDIF

RETURN NIL