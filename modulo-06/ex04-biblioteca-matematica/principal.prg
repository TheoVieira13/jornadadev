FUNCTION Main()

    SET PROCEDURE TO matematica.prg 

    QOut("===== TESTE DA BIBLIOTECA MATEMÁTICA =====")
    QOut("")

    QOut("Fatorial de 5: ", FatorialN(5))
    QOut("Fatorial de 8: ", FatorialN(8))
    QOut("")

    QOut("7 e primo? ", EhPrimo(7))
    QOut("12 e primo? ", EhPrimo(12))
    QOut("")

    QOut("MDC(24,36): ", MDC(24,36))
    QOut("MDC(18,30): ", MDC(18,30))
    QOut("")

    QOut("MMC(24,36): ", MMC(24,36))
    QOut("MMC(18,30): ", MMC(18,30))

RETURN NIL