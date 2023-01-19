/* where-> como extrarir apenas algumas informa��es da nossa tabela

SELECT  coluna1, coluna 2
FROM tabela
WHERE condi��o

OPERADORES
= igual
> maior que
< menor que
>= maior igual
<= menor igual
<> diferente de
AND e
OR ou

*/

SELECT * 
FROM person.person
WHERE LAstname = 'duffy' and NameStyle = 0; /* pegamos so quem tem ultimo nome duffy e namestyle 0 */


/* selecionando produtos com cores vermelha ou azul */
SELECT *
FROM production.Product
WHERE color = 'red' or color = 'blue';

/* como selecionar uma faixa de pre�o */

SELECT *
FROM production.Product
WHERE listprice < 1000 and listprice > 300;


/* EX03 -> a quipe de produ��o de produtos preisa do nome de todas as pe�as que pesam mais de 500kg mas n�o pesam mais de 700kg para inspe��o */

SELECT Name
FROM Production.Product
WHERE weight > 500 and Weight < 700;

/* EX04 -> foi pedido pelo marketing em relac�ao a todos os empregados que s�o casados e s�o assalariados */
SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' and SalariedFlag = 1;

/* EX05 -> um usuario chamado Peter krebs esta devendo um pagamento, consiga o email dele para que possamos enviar a cobran�a */

/* primeiramente pegamos o business entity pois � uma chave compartilhada entre a tabela de person.person e person.emailaddress */

SELECT *
FROM person.person
WHERE FirstName = 'peter' and LastName = 'krebs'; /* vimos que o ID dele � 26 */

SELECT EmailADdress
FROM person.EmailAddress
WHERE BusinessEntityID = 26;

