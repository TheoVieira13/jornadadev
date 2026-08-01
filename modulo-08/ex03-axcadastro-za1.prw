Exercício 3 — CRUD com AxCadastro
1. Programa STTIP001.PRW

Foi criado um programa em ADVPL utilizando a função AxCadastro, responsável por abrir a rotina de cadastro da tabela ZA1 (Pets).

#include "protheus.ch"

USER FUNCTION STTIP001()

    PRIVATE cCadastro := "Pets"

    dbSelectArea("ZA1")
    dbSetOrder(1)

    AxCadastro("ZA1", "Pets", , "1", , , , .F.)

RETURN NIL


2. Configuração dos campos no SX3
Campo ZA1_COD
Tipo: Caracter (C)
Tamanho: 6
Contexto: Real
Browse: Sim

Esse campo armazena o código sequencial do pet.

Campo ZA1_CLIENT
Tipo: Caracter (C)
Tamanho: 6
F3: SA1
Validação:
ExistCpo("SA1", xFilial("SA1") + M->ZA1_CLIENT + M->ZA1_LOJA, 1)

Esse campo identifica o dono do pet e valida se o cliente existe na tabela SA1.

Campo ZA1_NOMCLI
Contexto: Virtual
Relação:
POSICIONE("SA1",1,xFilial("SA1")+M->ZA1_CLIENT+M->ZA1_LOJA,"A1_NOME")

Esse campo exibe automaticamente o nome do cliente correspondente ao código informado, sem gravar essa informação no banco de dados.

3. Criação dos índices (SIX)

Foram definidos os seguintes índices:

Índice 1

ZA1_FILIAL + ZA1_COD

Utilizado como chave primária da tabela ZA1.

Índice 2

ZA1_FILIAL + ZA1_CLIENT + ZA1_LOJA

Utilizado para facilitar a pesquisa dos pets cadastrados para um determinado cliente.

4. Consulta padrão (SXB)

Foi criada uma consulta padrão para a tabela ZA1, permitindo que ela seja utilizada como pesquisa (F3) em outras rotinas do sistema. Essa consulta possibilita localizar e selecionar registros da tabela ZA1 quando necessário.

5. Compilação e execução

Após criar a tabela, configurar os campos, índices e a consulta padrão, o programa deve ser compilado (F9) e executado pelo SmartClient. A rotina STTIP001 abrirá o cadastro Pets, permitindo realizar as operações de inclusão, alteração, exclusão e consulta dos registros da tabela ZA1.