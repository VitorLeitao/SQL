/* LEFT JOIN -> vai pegar todas as informa��es da tabela da esquerda e juntar ciom as da direita, se existirem, se nao vai botar NULL */

/* a primeira tabela(t1) � a tabela da esquerda */

/* quero descobrir quais pessoas n�o tem cartao de creditoregistrado */

SELECT *
FROM Person.person as t1
LEFT JOIN sales.PersonCreditCard as t2 
ON t1.BusinessEntityID = t2.BusinessEntityID
WHERE t2.BusinessEntityID IS NULL;