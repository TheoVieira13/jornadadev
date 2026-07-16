Exercício 4 — Refinamento sucessivo
Aplique a técnica do refinamento sucessivo (visão geral → detalhamento) para o problema:

“Um sistema de caixa de supermercado deve registrar os itens de uma compra, calcular o
subtotal, aplicar desconto se o cliente tiver cartão fidelidade (5%) e mostrar o total a
pagar.”

Nível 1 (Visão Geral)
Início

1. Receber os dados da compra.
2. Calcular o valor da compra.
3. Verificar se o cliente tem cartão fidelidade e aplicar o desconto.
4. Informar o valor final da compra.

Fim

Nível 2 (Detalhamento)
Início

1. Receber os dados da compra.
   1.1 Solicitar a quantidade de itens.
   1.2 Informar o preço de cada item.
   1.3 Registrar os valores informados.

2. Calcular o valor da compra.
   2.1 Somar o preço de todos os itens.
   2.2 Guardar o resultado como subtotal.

3. Verificar o cartão fidelidade.
   3.1 Perguntar se o cliente participa do programa de fidelidade.
   3.2 Se a resposta for "Sim", calcular um desconto de 5%.
   3.3 Descontar esse valor do subtotal.
   3.4 Se a resposta for "Não", manter o subtotal como valor final.

4. Informar o valor final da compra.
   4.1 Exibir o subtotal.
   4.2 Exibir o desconto, caso tenha sido aplicado.
   4.3 Exibir o total que deverá ser pago.

Fim