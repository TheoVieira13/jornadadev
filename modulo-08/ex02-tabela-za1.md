Exercício 2 — Completando a tabela ZA1 (o pet ganha um dono) ⭐
️

A ZA1 que criamos em aula ficou solta: o pet não pertencia a ninguém. Agora ela ganha
o dono.

No Configurador, complete a tabela ZA1 (Pets) com os campos apresentados no módulo.
Configure:
Os campos com tipos e tamanhos corretos (veja a tabela na apostila).
O campo ZA1_NOMCLI como Virtual, com relação:
POSICIONE("SA1",1,xFilial("SA1")+M->ZA1_CLIENT+M->ZA1_LOJA,"A1_NOME")
Índices (SIX): 1 = ZA1_FILIAL + ZA1_COD ; 2 = ZA1_FILIAL + ZA1_CLIENT + ZA1_LOJA .
📸 Entrega: prints do SX2, do SX3 (campos) e do SIX (índices).


A ZA1 foi criada no SX2 com prefixo ZA1, nome Pets, modo Compartilhado.
![alt text](<imagens/Screenshot 2026-07-30 193615.png>)

Campos no SX3: ZA1_FILIAL (C,2), ZA1_COD (C,6), ZA1_CLIENT (C,6),
ZA1_LOJA (C,2), ZA1_NOMCLI (C,40, Virtual, com POSICIONE na SA1),
ZA1_NOME (C,30), ZA1_RACA (C,20), ZA1_DTNASC (D).
![alt text](<imagens/Screenshot 2026-07-30 194538.png>)

Índices no SIX: 1 = ZA1_FILIAL+ZA1_COD · 2 = ZA1_FILIAL+ZA1_CLIENT+ZA1_LOJA
![alt text](<imagens/Screenshot 2026-07-30 194509.png>)




 