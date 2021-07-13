# Projeto Engenharia de Software

## Equipe

#### Paulo Uchôa 

#### Luana Albuquerque

#### Leonardo Campelo

#### Lucas Menescal 

### 1) Elaborar o documento de especificação de requisitos com base no modelo disponibilizado pelo professor.

#### Para esse projeto os requisitos foram levantados.

#### Requisitos funcionais: 

>##### 1. Criar contato 
>##### 2. Editar contato
>##### 3. Deletar contato 
>##### 4. Buscar contato
>##### 5. Criar Grupo
>##### 6. Editar Grupo
>##### 7. Deletar Grupo 
>##### 8. Buscar Grupo
>##### 9. Login

#### Requisitos não funcionais: 

>##### 1. Banco de dados. 
>##### 2. Sistema de verificação de usuário.

### 2) Desenvolva as telas do sistema.

#### WireFrame
<img src="https://github.com/Prouj/EngSoft/blob/86bca42750e7373737556a1c71a306c5c5234174/Respostas/wireframe.png" width="600">     

### 3) UML:

#### a) Desenvolver os casos de uso do sistema.  

<img src="https://github.com/Prouj/EngSoft/blob/db1bdca14b8b92273ff98e3ba03c60424e74798d/Respostas/Casos%20de%20uso.png" width="800"> 

#### Adição de Contatos

##### Requisitos: Ter a conta do iCloud.
##### Pré-condições: Estar logado no iCloud.
##### Pós-condições: Login com sucesso na conta do iCloud.
##### Cenário de Sucesso:
>#####   1. Abra o aplicativo.
>#####   2. Clica no botão de mais no canto superior esquerdo para adicionar contato.
>#####   3. Preencha com nome(obrigatório), e-mail, cep e até dois números.
>#####   4. Clique em salvar no canto superior esquerdo.
##### Cenário de Erro:
>#####   1. Abra o aplicativo.
>#####   2. Preencha o número.
>#####   3. Clique em salvar.
>#####   4. Tela de erro.

#### Busca de Contato

##### Requisitos:
>#####   1. Ter a conta do iCloud.
>#####   2. Pré-condições: Estar logado no iCloud.

##### Cenário de Sucesso:
>#####   1. Abre o aplicativo.
>#####   2. Clica na lupa.
>#####   3. Busca o nome do contato.
>#####   4. Clica no contato.

##### Cenário de Erro:
>#####   1. Contato não está cadastrado.
>#####   2. Não vai ser encontrado.

#### Adição de Grupos

##### Requisitos: Ter a conta do iCloud.
##### Pré-condições: Estar logado no iCloud.
##### Pós-condições:

##### Cenário de Sucesso:
>#####  1. Abra o aplicativo.
>#####  2. Clica no botão de mais no canto superior esquerdo para adicionar grupo.
>#####  3. Preencha com nome e número de quem deve estar no grupo.
>#####  4. Clique em salvar no canto superior esquerdo.

##### Cenário de Erro:
>#####  1. Abra o aplicativo.
>#####  2. Preencha o número.
>#####  3. Clique em salvar.
>#####  4. Tela de erro.

#### Busca de Grupos

##### Requisitos: Ter a conta do iCloud.
##### Pré-condições: Estar logado no iCloud.

##### Cenário de Sucesso:
>#####  1. Abre o aplicativo.
>#####  2. Clica na lupa.
>#####  3. Busca o nome do grupo.
>#####  4. Clica no grupo.

##### Cenário de Erro:
>#####  1. O grupo não está cadastrado.
>#####  2. Não vai ser encontrado.



#### b) Elaborar diagramas de sequência para os casos de uso mais importantes. 

<img src="https://github.com/Prouj/EngSoft/blob/db1bdca14b8b92273ff98e3ba03c60424e74798d/Respostas/Diagrama%20de%20Sequ%C3%AAncia-Adi%C3%A7%C3%A3o%20de%20contatos.png" width="800"> 

<img src="https://github.com/Prouj/EngSoft/blob/db1bdca14b8b92273ff98e3ba03c60424e74798d/Respostas/Diagrama%20de%20Sequ%C3%AAncia-Busca%20de%20contatos.png" width="800"> 

<img src="https://github.com/Prouj/EngSoft/blob/db1bdca14b8b92273ff98e3ba03c60424e74798d/Respostas/Diagrama%20de%20Sequ%C3%AAncia-Adi%C3%A7%C3%A3o%20de%20Grupos.png" width="800"> 

<img src="https://github.com/Prouj/EngSoft/blob/db1bdca14b8b92273ff98e3ba03c60424e74798d/Respostas/Diagrama%20de%20Sequ%C3%AAncia-Busca%20de%20grupo.png" width="800"> 


#### c) Elaborar diagramas de atividade.

##### Diagrama de atividade Visualização de Contato:

<img src="https://github.com/Prouj/EngSoft/blob/db1bdca14b8b92273ff98e3ba03c60424e74798d/Respostas/Diagrama%20de%20Atividade-Visualiza%C3%A7%C3%A3o%20de%20um%20contato.jpg" width="800"> 

##### Diagrama de atividade mapa de telas:

<img src="https://github.com/Prouj/EngSoft/blob/db1bdca14b8b92273ff98e3ba03c60424e74798d/Respostas/Diagrama%20de%20atividade-Navega%C3%A7%C3%A3o%20pelo%20App.jpg" width="1000"> 


#### d) Elaborar os diagramas de classe do sistema.


#### e) Elaborar os diagramas de estado de um objeto Conta (Account).

<img src="https://github.com/Prouj/EngSoft/blob/db1bdca14b8b92273ff98e3ba03c60424e74798d/Respostas/Diagrama%20de%20estado-Account.jpg" width="600"> 


#### f) Diagramas de componentes. 


#### g) Elaborar os diagramas de implantação. 

<img src="https://github.com/Prouj/EngSoft/blob/db1bdca14b8b92273ff98e3ba03c60424e74798d/Respostas/Diagrama%20de%20Implementa%C3%A7%C3%A3o.png" width="700"> 

### 4) e 5) Implementação do projeto de acordo com os requisitos

#### Na implementação desse projeto foi utizada arquitetura MVVM, que é comumente utilizada junto ao framework SwiftUI que foi utilizado para o desenvolvimento das tela do projeto, esse framework, tem algumas vantagens por já ter formas de manter mais facilmente as telas sempre atualizadas de forma automática, utilizando-se m conjunto o padrão ObeservebleObject e os tipos @Biding @State, onde conseguimos fazer com que o sistema se mantenha "observando" mudanças que ocorram no objeto ObesercebleObject. Também foi feita a utilização dos frameworks CoreData que é utilizado para a persistência local dos dados, assim como foi utilizado o iCloud para se fazer o backup dos dados e fazer a sincronização com o Apple iD logado no aparelho. 
