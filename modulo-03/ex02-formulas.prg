#define PI 3.14159

FUNCTION Main()

    LOCAL nRaio := 0
    LOCAL nAreaCirculo := 0

    LOCAL nA := 0
    LOCAL nB := 0
    LOCAL nHipotenusa := 0

    LOCAL nPeso := 0
    LOCAL nAltura := 0
    LOCAL nIMC := 0

    // Calculo da area do circulo
    ACCEPT "Digite o valor do raio: " TO nRaio
    nRaio := Val(nRaio)

    nAreaCirculo := PI * (nRaio ^ 2)
    QOut("A area do circulo e: " + LTrim(Str(nAreaCirculo, 10, 2)))

    // Calculo da hipotenusa
    ACCEPT "Digite o primeiro cateto: " TO nA
    ACCEPT "Digite o segundo cateto: " TO nB
    
    nA := Val(nA)
    nB := Val(nB)

    nHipotenusa := Sqrt((nA ^ 2) + (nB ^ 2))
    QOut("O valor da hipotenusa e: " + LTrim(Str(nHipotenusa, 10, 2)))

    // Calculo do IMC
    ACCEPT "Digite o peso (em kg): " TO nPeso
    ACCEPT "Digite a altura (em metros): " TO nAltura

    nPeso := Val(nPeso)
    nAltura := Val(nAltura)

    nIMC := nPeso / (nAltura ^ 2)
    QOut("O valor do IMC e: " + LTrim(Str(nIMC, 10, 2)))

RETURN NIL    
