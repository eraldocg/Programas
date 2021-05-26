CREATE TABLE CELULARES(
CELULAR_ID    INTOBRIG,
SIT           INTOBRIG,
CELULAR_1     STRING16,
OPER_CEL_ID   INTOBRIG,
NOME_ABREV    STRING20,
FUNCCAO       STRING40,
US_CAD        INTEGER,
DT_CAD        DATAHORA,
US_ALT        INTEGER,
DT_ALT        DATAHORA,
PRIMARY KEY (CELULAR_ID)
);
CREATE GENERATOR GEN_CELULARCOD;

CREATE GENERATOR GEN_CELCOD;


CREATE TABLE OPER_CEL (
    OPER_CEL_ID  INTOBRIG,
    DESCRICAO    STRING40,
    COD_OPER     INTEGER,
PRIMARY KEY (OPER_CEL_ID)
);
CREATE GENERATOR GEN_OPER_CELCOD;


INSERT INTO OPER_CEL (OPER_CEL_ID, DESCRICAO, COD_OPER) VALUES (1, 'VIVO', 15);
INSERT INTO OPER_CEL (OPER_CEL_ID, DESCRICAO, COD_OPER) VALUES (2, 'TIM', 41);
INSERT INTO OPER_CEL (OPER_CEL_ID, DESCRICAO, COD_OPER) VALUES (3, 'CLARO', 21);
INSERT INTO OPER_CEL (OPER_CEL_ID, DESCRICAO, COD_OPER) VALUES (4, 'OI', 31);
INSERT INTO OPER_CEL (OPER_CEL_ID, DESCRICAO, COD_OPER) VALUES (-1, '', 0);
INSERT INTO OPER_CEL (OPER_CEL_ID, DESCRICAO, COD_OPER) VALUES (5, 'TELEFONICA', 0);
INSERT INTO OPER_CEL (OPER_CEL_ID, DESCRICAO, COD_OPER) VALUES (6, 'EMBRATEL', 0);
INSERT INTO OPER_CEL (OPER_CEL_ID, DESCRICAO, COD_OPER) VALUES (7, 'GVT', 25);
INSERT INTO OPER_CEL (OPER_CEL_ID, DESCRICAO, COD_OPER) VALUES (8, 'SERCOMTEL', 0);
INSERT INTO OPER_CEL (OPER_CEL_ID, DESCRICAO, COD_OPER) VALUES (9, 'CTBC', 12);
