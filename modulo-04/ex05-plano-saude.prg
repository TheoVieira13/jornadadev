FUNCTION Main()

    LOCAL nIdade := 0, nDependentes := 0, nValorPlano := 0, nValorTotal := 0

    INPUT "Digite a idade: " TO nIdade
    INPUT "Digite a quantidade de dependentes: " TO nDependentes

    IF nIdade <= 25
        nValorPlano := 180
    ELSEIF nIdade <= 40
        nValorPlano := 260
    ELSEIF nIdade <= 60
        nValorPlano := 380
    ELSE
        nValorPlano := 520
    ENDIF

    nValorTotal := nValorPlano + (nDependentes * 90)

    QOut("O valor total do plano de saude e: " + LTrim(Str(nValorTotal)))


RETURN NIL  