FUNCTION Main()

    LOCAL nSalario := 0
    LOCAL nNovoSalario := 0

    INPUT "Digite o seu salario atual: " TO nSalario

    IF nSalario < 1000
        nNovoSalario := nSalario * 1.15
    
    ELSEIF nSalario <= 2000
        nNovoSalario := nSalario * 1.12
    
    ELSEIF nSalario <= 4000
        nNovoSalario := nSalario * 1.08
    
    ELSE
        nNovoSalario := nSalario * 1.05
    
    ENDIF

    QOut("O seu novo salario e: " + LTrim(Str(nNovoSalario)))


RETURN NIL