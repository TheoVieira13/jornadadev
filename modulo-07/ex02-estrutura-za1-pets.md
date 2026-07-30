a. Liste os campos da ZA1 (nome do campo, tipo, tamanho) — incluindo o campo de filial,
que é obrigatório em toda tabela do Protheus.
A tabela ZA1 possui os campos ZA1_FILIAL (C, 2), ZA1_NOME (C, 40), ZA1_RACA (C, 30) e ZA1_NASC (D, 8). O campo ZA1_FILIAL é obrigatório em todas as tabelas do Protheus.

b. Que índice faria sentido para a ZA1? Justifique (lembre da analogia da lista telefônica).
Um índice pelo nome do pet (ZA1_NOME) facilita localizar rapidamente um cadastro. Assim como uma lista telefônica organiza os nomes para acelerar a busca, o índice melhora a pesquisa dos registros.

c. Explique por que o prefixo da tabela é Z (o que esse prefixo significa em termos de
convenção do Protheus).
O prefixo Z indica que a tabela é uma customização, ou seja, foi criada pelo cliente ou desenvolvedor e não faz parte das tabelas padrão do Protheus. Isso evita conflitos com tabelas nativas do sistema.

d. Explique por que os campos começam com ZA1_ (ex: ZA1_NOME , ZA1_RACA ) e não
apenas com o nome do campo solto.
Os campos começam com ZA1_ para identificar a qual tabela pertencem. Essa é a convenção do Protheus, facilitando a organização do dicionário de dados e evitando nomes repetidos em tabelas diferentes.