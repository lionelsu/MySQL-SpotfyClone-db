<!-- Este é um comentário: omitir os tópidos redundantes -->
<!--  **| [Brazil](README.md) | [asdf](README_en.md) |** -->

# SpotfyClone DB

O "SpotfyClone DB" é um esquema de banco de dados usado para fins educacionais. Neste projeto além da criação de um banco de dados baseado no Spotfy foram praticadas consultas SQL para recuperar e manipular informações das tabelas.

O desafio do SpotfyClone foi criar um Diagrama Entidade-Relacionamento (DER), o objetivo foi atingir a 3º Forma Normal do Banco de Dados Relacional.

## Ferramentas utilizadas

O esquema de banco de dados pode ser executado com base nos arquivos `.sql` localizados na raíz do projeto. Estas ferramentas abaixo forma utilizadas durante o desenvolvimento.

O esquema de banco de dados precisa de uma ferramenta de gerenciamento de sua preferencia, este dev usou o `MySQL Workbench` e um ambiente `Docker` ou o `MySQL Server`.

- [Docker](https://docs.docker.com/compose/)
- [MySQL Workbench](https://dev.mysql.com/downloads/workbench/)
- [MySQL Server](https://dev.mysql.com/downloads/mysql/)

## Uso

- Os scripts criados durante o projeto se encontram na raiz e precisam ser executados na ferramenta de gerenciamento de usa preferencia.

- Faça o download ou clone este repositório:

```bash
git clone git@github.com:lionelsu/MySQL-SpotfyClone-db.git && cd MySQL-SpotfyClone-db
```

- Caso esteja usando um ambiente `Docker compose` inicialize o `mysql server` e as demais dependencias no ambiente virtual:

```bash
docker compose up -d
```

Lembrando que o docker é usado apenas para iniciar uma instância do `MySQL Server`.

- Sem o docker:
  - execute o script MySQL localizado na pasta `raiz` do projeto.

## Mais informações

Variáveis de ambiente dentro do container

```sql
MYSQL_USER: root
MYSQL_PASSWORD: password
HOSTNAME: db
MYSQL_PORT: 3306
```

## Habilidades desenvolvidas

1. **Consultas Condicionais:**
   - `IF`: Utilizado para avaliar uma condição e retornar valores diferentes com base nessa condição.
   - `CASE/WHEN/THEN`: Oferece uma estrutura flexível para expressar condições complexas em consultas SQL.

2. **Operações Matemáticas:**
   - `DIV`: Divide dois números inteiros, retornando o resultado da divisão.
   - `MOD`: Calcula o resto da divisão entre dois números.
   - `ROUND`: Arredonda um número para o inteiro mais próximo.
   - `CEIL`: Arredonda um número para cima, retornando o próximo inteiro maior ou igual.
   - `FLOOR`: Arredonda um número para baixo, retornando o próximo inteiro menor ou igual.
   - `RAND`: Gera um número decimal aleatório entre 0 e 1.
   - `POW`: Eleva um número a uma potência especificada.
   - `SQRT`: Calcula a raiz quadrada de um número.

3. **Manipulação de Strings:**
   - `UCASE`: Converte uma string em letras maiúsculas.
   - `LCASE`: Converte uma string em letras minúsculas.
   - `REPLACE`: Substitui uma substring por outra em uma string.
   - `LEFT` e `RIGHT`: Extrai partes da esquerda e da direita de uma string.
   - `CHAR_LENGTH`: Retorna o comprimento (número de caracteres) de uma string.
   - `SUBSTRING`: Extrai uma parte de uma string com base em posições especificadas.

4. **Trabalho com Datas:**
   - `CURRENT_DATE` e `NOW`: Obtêm a data e hora atuais.
   - `DATEDIFF` e `TIMEDIFF`: Calculam a diferença entre datas e horas.
   - `YEAR`, `MONTH` e `DAY`: Extraem partes de data, como ano, mês e dia.
   - `DATE_FORMAT`, `DATE_ADD` e `DATE_SUB`: Formatação e manipulação avançada de datas.

5. **Funções de Agregação:**
   - `AVG`, `MIN`, `MAX`, `SUM` e `COUNT`: Realizam operações de agregação em conjuntos de dados.
   - `GROUP_CONCAT`: Concatena valores de uma coluna em uma única string.

6. **Agrupamento SQL:**
   - `GROUP BY`: Agrupa dados com base em colunas específicas.
   - `HAVING`: Filtra grupos resultantes com base em condições.

7. **Joins e Relações:**
   - `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN` e `FULL JOIN`: Unem dados de várias tabelas com diferentes tipos de joins.
   - `SELF JOIN`: Liga uma tabela a ela mesma para relacionamentos complexos.

8. **Modelagem de Dados:**
   - Diagrama Entidade-Relacionamento: Representa visualmente as entidades e seus relacionamentos em um banco de dados.

9. **Normalização de Bancos de Dados:**
   - Primeira, Segunda e Terceira Formas Normais: Princípios de design para manter a integridade e eficiência dos bancos de dados.
