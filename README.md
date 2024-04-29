# Desafio-DIO-Construir umProjeto Lógico deBanco de Dados do Zero

Para este cenário você irá utilizar seu esquema conceitual, criado no desafio do módulo de modelagem de BD com modelo ER, para criar o esquema lógico para o contexto de uma oficina. Neste desafio, você definirá todas as etapas. Desde o esquema até a implementação do banco de dados. Sendo assim, neste projeto você será o protagonista. Tenha os mesmos cuidados, apontados no desafio anterior, ao modelar o esquema utilizando o modelo relacional.  Após a criação do esquema lógico, realize a criação do Script SQL para criação do esquema do banco de dados. Posteriormente, realize a persistência de dados para realização de testes. Especifique ainda queries mais complexas do que apresentadas durante a explicação do desafio. Sendo assim, crie queries SQL com as cláusulas abaixo:

Recuperações simples com SELECT Statement;
Filtros com WHERE Statement;
Crie expressões para gerar atributos derivados;
Defina ordenações dos dados com ORDER BY;
Condições de filtros aos grupos – HAVING Statement;
Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados;
Diretrizes
Não há um mínimo de queries a serem realizadas;
Os tópicos supracitados devem estar presentes nas queries;
Elabore perguntas que podem ser respondidas pelas consultas
As cláusulas podem estar presentes em mais de uma query



### **Objetivo:* 

#### Projetar e implementar um banco de dados para um cenário de oficina, incluindo consultas SQL complexas.

**Diretrizes:**

- Use seu esquema conceitual do desafio de modelagem ER como base.

- Crie um diagrama de modelo lógico usando notação relacional.

- Crie um script SQL para criar o esquema do banco de dados.

- Insira dados de teste nas tabelas.

- Elabore consultas SQL complexas usando as cláusulas SELECT, WHERE, expressões derivadas, ORDER BY, HAVING e junções de tabelas.

- Adicione um arquivo README ao seu repositório do GitHub descrevendo o projeto lógico e as consultas SQL.

  

**Consultas SQL Complexas:**

**Consulta 1: Encontre o número de veículos atendidos por cada mecânico.**

sql

```sql
SELECT
  Mecanico.Nome,
  COUNT(*) AS NumeroDeVeiculosAtendidos
FROM Mecanico
JOIN Atendimento ON Mecanico.Id = Atendimento.IdMecanico
GROUP BY
  Mecanico.Nome
ORDER BY
  NumeroDeVeiculosAtendidos DESC;
```

**Consulta 2: Liste os clientes que tiveram mais de um veículo atendido na oficina.**

sql

```sql
SELECT
  Cliente.Nome
FROM Cliente
JOIN Veiculo ON Cliente.Id = Veiculo.IdCliente
JOIN Atendimento ON Veiculo.Id = Atendimento.IdVeiculo
GROUP BY
  Cliente.Nome
HAVING
  COUNT(*) > 1;
```

**Consulta 3: Encontre o valor total dos serviços prestados para cada cliente.**

sql

```sql
SELECT
  Cliente.Nome,
  SUM(Servico.Valor) AS ValorTotalDosServicos
FROM Cliente
JOIN Veiculo ON Cliente.Id = Veiculo.IdCliente
JOIN Atendimento ON Veiculo.Id = Atendimento.IdVeiculo
JOIN Servico ON Atendimento.Id = Servico.IdAtendimento
GROUP BY
  Cliente.Nome;
```

**Consulta 4: Liste os serviços mais populares prestados pela oficina.**

sql

```sql
SELECT
  Servico.Nome,
  COUNT(*) AS NumeroDeVezesPrestado
FROM Servico
JOIN Atendimento ON Servico.Id = Atendimento.IdServico
GROUP BY
  Servico.Nome
ORDER BY
  NumeroDeVezesPrestado DESC;
```

**Consulta 5: Encontre os clientes que tiveram um desconto maior que 10% em algum serviço.**

sql

```sql
SELECT DISTINCT
  Cliente.Nome
FROM Cliente
JOIN Veiculo ON Cliente.Id = Veiculo.IdCliente
JOIN Atendimento ON Veiculo.Id = Atendimento.IdVeiculo
JOIN Servico ON Atendimento.Id = Servico.IdAtendimento
WHERE
  Servico.Desconto > 0.1;
```



### **Explorações Adicionais:**

- **Normalização de Banco de Dados:** Aprenda sobre as diferentes formas normais (1NF, 2NF, 3NF, BCNF) e como aplicá-las para otimizar a estrutura do banco de dados.
- **Modelagem de Dados NoSQL:** Explore abordagens alternativas à modelagem de dados relacional, como bancos de dados NoSQL, como MongoDB e Cassandra.
- **Otimização de Desempenho de Banco de Dados:** Investigue técnicas para melhorar o desempenho do banco de dados, como indexação, particionamento e ajuste de consulta.

**Montagem do Desafio:**

**Etapa 1: Modelagem Lógica**

- Revise seu esquema conceitual do desafio de modelagem ER.
- Identifique entidades, atributos, relacionamentos e restrições.
- Crie um diagrama de modelo lógico usando notação relacional.

**Etapa 2: Script SQL**

- Crie um script SQL para criar o esquema do banco de dados com base no modelo lógico.
- Inclua instruções para criar tabelas, definir chaves primárias e estrangeiras e especificar restrições.

**Etapa 3: Persistência de Dados**

- Insira dados de teste nas tabelas do banco de dados.
- Use instruções INSERT, UPDATE e DELETE para manipular dados.

**Etapa 4: Consultas SQL Complexas**

- Elabore consultas SQL usando as cláusulas SELECT, WHERE, expressões derivadas, ORDER BY, HAVING e junções de tabelas.
- Crie perguntas específicas que possam ser respondidas pelas consultas.

**Etapa 5: Documentação**

- Adicione um arquivo README ao seu repositório do GitHub descrevendo o projeto lógico e as consultas SQL.
- Explique o propósito e a funcionalidade do banco de dados.

**Dicas:**

- Divida o desafio em etapas menores e gerenciáveis.
- Use ferramentas como diagramas ER e editores de SQL para facilitar o processo.
- Teste suas consultas completamente para garantir que estão retornando os resultados corretos.
- Procure feedback de colegas ou mentores para melhorar seu design e código.



### **Resumo Educacional do Desafio de Modelagem de Banco de Dados de Oficina**

**Objetivo:**

- Aprimorar habilidades de modelagem lógica de banco de dados.
- Projetar e implementar um banco de dados para um cenário de oficina.
- Criar consultas SQL complexas para extrair informações valiosas.

**Desenvolvimento:**

- Criação de um esquema lógico de banco de dados a partir de um esquema conceitual existente.
- Definição de todas as etapas envolvidas, desde a modelagem até a implementação.
- Criação de script SQL para criar o esquema do banco de dados.
- Persistência de dados para testes.
- Elaboração de consultas SQL usando cláusulas como SELECT, WHERE, expressões derivadas, ORDER BY, HAVING e junções de tabelas.

**Aprendizado:**

- Processo passo a passo de modelagem lógica de banco de dados.
- Técnicas para projetar bancos de dados eficientes e eficazes.
- Uso de consultas SQL complexas para obter insights valiosos dos dados.

**Benefícios:**

- Compreensão abrangente do ciclo de vida do desenvolvimento de banco de dados.
- Capacidade aprimorada de projetar, implementar e analisar bancos de dados para cenários específicos.
- Habilidade de extrair informações valiosas de grandes conjuntos de dados usando SQL.

**Conclusão:**

Este desafio forneceu uma experiência prática completa no desenvolvimento de banco de dados. Ao projetar o esquema lógico, criar o banco de dados, persistir dados e criar consultas SQL complexas, os alunos desenvolveram habilidades essenciais para gerenciar e analisar dados em cenários do mundo real.
