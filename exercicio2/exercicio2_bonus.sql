/* CRIANDO DATABASE E TABLES */
CREATE DATABASE Butia;

USE Butia;

CREATE TABLE AssetPrice (
	asset varchar(6),
	date date,
	open float,
	low float, 
	high float,
	close float, 
	volume float
);

CREATE TABLE BenchmarkPrice (
	benchmark varchar(3),
	date date,
	open float,
	low float,
	high float,
	close float
);


/* CRIANDO CONSTRAINT DAS PRIMARY KEY's */
ALTER TABLE AssetPrice
ADD CONSTRAINT PK_AssetPrice PRIMARY KEY (asset, date);

ALTER TABLE BenchmarkPrice
ADD CONSTRAINT PK_AssetPrice PRIMARY KEY (benchmark, date);


/* CRIANDO CONSTRAINT DAS FOREIGN KEY's */
/*
ALTER TABLE AssetPrice
ADD CONSTRAINT FK_AssetPrice FOREIGN KEY asset REFERENCES x;

ALTER TABLE BenchmarkPrice
ADD CONSTRAINT FK_BenchmarkPrice FOREIGN KEY benchmark REFERENCES x;
*/


/* INSERINDO OS DADOS */
INSERT INTO AssetPrice (asset, date, close) VALUES (1, STR_TO_DATE("02/08/2021","%d/%m/%Y"), 21.45);
INSERT INTO AssetPrice (asset, date, close) VALUES (2, STR_TO_DATE("03/08/2021","%d/%m/%Y"), 21.48);
INSERT INTO AssetPrice (asset, date, close) VALUES (3, STR_TO_DATE("04/08/2021","%d/%m/%Y"), 21.75);
INSERT INTO AssetPrice (asset, date, close) VALUES (4, STR_TO_DATE("05/08/2021","%d/%m/%Y"), 22.01);
INSERT INTO AssetPrice (asset, date, close) VALUES (5, STR_TO_DATE("09/08/2021","%d/%m/%Y"), 21.97);
INSERT INTO AssetPrice (asset, date, close) VALUES (6, STR_TO_DATE("11/08/2021","%d/%m/%Y"), 21.71);
INSERT INTO AssetPrice (asset, date, close) VALUES (7, STR_TO_DATE("12/08/2021","%d/%m/%Y"), 21.84);
INSERT INTO AssetPrice (asset, date, close) VALUES (8, STR_TO_DATE("13/08/2021","%d/%m/%Y"), 21.77);
INSERT INTO AssetPrice (asset, date, close) VALUES (9, STR_TO_DATE("16/08/2021","%d/%m/%Y"), 21.95);

INSERT INTO BenchmarkPrice (benchmark, date, close) VALUES (1, STR_TO_DATE("02/08/2021","%d/%m/%Y"), 10.23);
INSERT INTO BenchmarkPrice (benchmark, date, close) VALUES (3, STR_TO_DATE("05/08/2021","%d/%m/%Y"), 10.09);
INSERT INTO BenchmarkPrice (benchmark, date, close) VALUES (2, STR_TO_DATE("03/08/2021","%d/%m/%Y"), 10.35);
INSERT INTO BenchmarkPrice (benchmark, date, close) VALUES (4, STR_TO_DATE("06/08/2021","%d/%m/%Y"), 10.58);
INSERT INTO BenchmarkPrice (benchmark, date, close) VALUES (5, STR_TO_DATE("09/08/2021","%d/%m/%Y"), 10.61);
INSERT INTO BenchmarkPrice (benchmark, date, close) VALUES (6, STR_TO_DATE("10/08/2021","%d/%m/%Y"), 10.54);
INSERT INTO BenchmarkPrice (benchmark, date, close) VALUES (7, STR_TO_DATE("11/08/2021","%d/%m/%Y"), 10.43);
INSERT INTO BenchmarkPrice (benchmark, date, close) VALUES (8, STR_TO_DATE("12/08/2021","%d/%m/%Y"), 10.50);
INSERT INTO BenchmarkPrice (benchmark, date, close) VALUES (9, STR_TO_DATE("13/08/2021","%d/%m/%Y"), 10.61);
INSERT INTO BenchmarkPrice (benchmark, date, close) VALUES (10, STR_TO_DATE("16/08/2021","%d/%m/%Y"), 10.64);


/* REALIZANDO A QUERY */
SELECT B.date, A.close
FROM BenchmarkPrice B 
	LEFT JOIN  AssetPrice A
	ON B.date = A.date
ORDER BY B.date;
