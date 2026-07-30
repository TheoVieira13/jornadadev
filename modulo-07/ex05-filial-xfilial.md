a. Por que existe o campo A1_FILIAL na tabela SA1 (e por que toda tabela do Protheus,
incluindo a ZA1 que criamos, precisa de um campo de filial)?
O campo A1_FILIAL identifica a filial à qual o registro pertence, permitindo que o Protheus trabalhe em ambientes com várias empresas e filiais. Por isso, toda tabela, inclusive a ZA1, precisa desse campo para seguir o padrão do sistema.

b. O que a função xFilial() tem a ver com isso? O que aconteceria se um programa
“escrevesse a filial na mão” em vez de usar xFilial() ?
A função xFilial() retorna automaticamente a filial correta para a tabela utilizada. Se o programa escrevesse a filial manualmente, poderia gravar dados na filial errada, causando erros e problemas em ambientes com múltiplas empresas ou filiais.