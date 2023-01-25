/* Manipula��o de string 
https://learn.microsoft.com/pt-br/sql/t-sql/functions/string-functions-transact-sql?view=sql-server-ver16
*/

/* fun��o concat() -> concatena duas colunas */
SELECT CONCAT(firstname, ' ', MiddleName, ' ', lastname) as FullName
FROM person.person


/* upper and lower -> deixa tudo minusculo ou tudo maiusculo) */
SELECT UPPER(firstname)
FROM person.person


/* len -> retorna a quantidade de letras da palavra */
SELECT LEN(firstname)
FROM person.person


/* SUBSTRING -> igual manipula��o de array, corta a palavra substring(coluna, come�o, final) */
SELECT firstname, SUBSTRING(firstname, 2, 4)
FROM person.person


/* REPLACE -> substitui��o de caracteres REPLACE(coluna, oq vai entrar, oq vai sair) */
SELECT firstname, REPLACE(firstname, 'A', 'XXX')
FROM person.person