CREATE DATABASE formulario;

USE formulario;

CREATE TABLE cartao(

	id INT AUTO_INCREMENT PRIMARY KEY,
    gasto_do_dia VARCHAR(100) NOT NULL,
    valor_do_gasto DECIMAL(6,2) NOT NULL,
    impulso VARCHAR(50) NOT NULL,
    cartao_usado VARCHAR(50) NOT NULL,
    parcelado VARCHAR(50) NOT NULL
    
    );
    
SELECT * FROM cartao;

SELECT COUNT(*) FROM cartao;

-- Só o gasto e o valor do dia

SELECT gasto_do_dia, valor_do_gasto
FROM cartao;

-- Qual gasto deu o valor de 300 ou mais?

SELECT gasto_do_dia, valor_do_gasto
FROM cartao
WHERE valor_do_gasto >= 300;

-- Quais os gastos que foram parcelado ?

SELECT gasto_do_dia, parcelado
FROM cartao
WHERE parcelado = 'SIM';

-- Quais os gastos que foram comprado por impulso?

SELECT gasto_do_dia, impulso
FROM cartao
WHERE impulso = 'SIM' OR impulso = 'NAO';

-- Quais os gastos que foram parcelados maior que 400?

SELECT gasto_do_dia,valor_do_gasto
FROM cartao
WHERE gasto_do_dia = 'parcelado' OR  valor_do_gasto > 400;

-- Os 5 maiores gastos

SELECT gasto_do_dia,valor_do_gasto
FROM cartao
ORDER BY gasto_do_dia LIMIT 5;

-- Gastos, valores e em qual cartão foi usado

SELECT gasto_do_dia, valor_do_gasto, cartao_usado 
FROM cartao
WHERE cartao_usado IN ('SANTANDER', 'RICO VISA', 'NUBANK');


    
    
