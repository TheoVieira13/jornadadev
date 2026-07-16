a. Calcular a área de um retângulo (base × altura)

Inicio

    base, altura, area: Real

    Escreva("Digite a base: ")
    Leia(base)

    Escreva("Digite a altura: ")
    Leia(altura)

    area = base * altura

    Escreva("A área do retângulo é: ", area)

Fim

b. Verificar se um número é par ou ímpar

Inicio

    numero: Inteiro

    Escreva("Digite um número: ")
    Leia(numero)

    Se (numero % 2 = 0) Então
        Escreva("O número é par.")
    Senão
        Escreva("O número é ímpar.")
    FimSe

Fim

c. Encontrar o maior entre três números

Inicio

    num1, num2, num3: Real

    Escreva("Digite o primeiro número: ")
    Leia(num1)

    Escreva("Digite o segundo número: ")
    Leia(num2)

    Escreva("Digite o terceiro número: ")
    Leia(num3)

    Se (num1 >= num2) e (num1 >= num3) Então
        Escreva("O maior número é: ", num1)
    Senão
        Se (num2 >= num1) e (num2 >= num3) Então
            Escreva("O maior número é: ", num2)
        Senão
            Escreva("O maior número é: ", num3)
        FimSe
    FimSe

Fim

