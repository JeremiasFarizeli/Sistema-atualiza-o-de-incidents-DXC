CREATE DATABASE DXC;

USE DXC;

CREATE TABLE tipificacao(
    ID int,
    CATEGORIA varchar(500),
    DESCRICAO varchar(800),
    TIER1 varchar(300),
    TIER2 varchar(300),
    TIER3 varchar(300)
);


CREATE TABLE HARDWARE_FALHA(
    ID int primary key auto_increment,
    TIER1 varchar(50),
    TIER2 varchar(50),
    TIER3 varchar(50),
    DESCRICAO varchar(500) not null
);

CREATE TABLE SOFTWARE_FALHA(
    ID int primary key auto_increment,
    TIER1 varchar(50),
    TIER2 varchar(50),
    TIER3 varchar(50),
    DESCRICAO varchar(500) not null
);

CREATE TABLE CONFIGURACOES(
    ID int primary key auto_increment,
    TIER1 varchar(50),
    TIER2 varchar(50),
    TIER3 varchar(50),
    DESCRICAO varchar(500) not null
);

CREATE TABLE IMPRESSORAS_SCANNERS(
    ID int primary key auto_increment,
    TIER1 varchar(50),
    TIER2 varchar(50),
    TIER3 varchar(50),
    DESCRICAO varchar(500) not null
);

CREATE TABLE REDE(
    ID int primary key auto_increment,
    TIER1 varchar(50),
    TIER2 varchar(50),
    TIER3 varchar(50),
    DESCRICAO varchar(500) not null
);

CREATE TABLE TROCA_PERIFERICOS(
    ID int primary key auto_increment,
    TIER1 varchar(50),
    TIER2 varchar(50),
    TIER3 varchar(50),
    DESCRICAO varchar(500) not null
);

CREATE TABLE OUTROS(
    ID int primary key auto_increment,
    TIER1 varchar(50),
    TIER2 varchar(50),
    TIER3 varchar(50),
    DESCRICAO varchar(500) not null
);

CREATE TABLE HANDS_EYES(
    ID int primary key auto_increment,
    TIER1 varchar(50),
    TIER2 varchar(50),
    TIER3 varchar(50),
    DESCRICAO varchar(500) not null
);

CREATE TABLE SVIP(
    ID int primary key auto_increment,
    TIER1 varchar(50),
    TIER2 varchar(50),
    TIER3 varchar(50),
    DESCRICAO varchar(500) not null
);

CREATE TABLE ATENDIMENTOS_FLEX(
    ID int primary key auto_increment,
    TIER1 varchar(50),
    TIER2 varchar(50),
    TIER3 varchar(50),
    DESCRICAO varchar(500) not null
);
CREATE TABLE CATEGORIAS(
    ID int primary key auto_increment,
    NOME varchar(500) not null
);


/*  INSERIR DADOS NA ATENDIMENTOS_FLEX  */

INSERT INTO ATENDIMENTOS_FLEX (TIER1, TIER2, TIER3, DESCRICAO)
VALUES ('Hardware', 'Telecommunication', 'Telephone', 'Atendimentos para Mobile: Configuração de email, AirWatch, Vmobile, Skype e aplicativos da Vale Store');

INSERT INTO ATENDIMENTOS_FLEX (TIER1, TIER2, TIER3, DESCRICAO)
VALUES ('Miscellaneous', 'Service', 'Business service', 'Suporte ITTV - RaspBerry');

INSERT INTO ATENDIMENTOS_FLEX (TIER1, TIER2, TIER3, DESCRICAO)
VALUES ('Miscellaneous', 'Service', 'Video conferencing', 'Hands & Eye Suporte para salas de Video Conferência (Flex)y');

/*  INSERIR DADOS NA SVIP  */

INSERT INTO SVIP (TIER1, TIER2, TIER3, DESCRICAO)
VALUES ('Business Application', 'VIP', 'N/a', 'Tipificação exclusiva para Incidents de SVIP - RJ');

/*  INSERIR DADOS NA HANDS_EYES  */

INSERT INTO HANDS_EYES (TIER1, TIER2, TIER3, DESCRICAO)
VALUES ('Business Application', 'BAC', 'sitescope', 'H&E de BUR - Troca de fitas Off Site e etc.');

INSERT INTO HANDS_EYES (TIER1, TIER2, TIER3, DESCRICAO)
VALUES ('Hardware', 'Hosting', 'Wintel', 'H&E de Wintel - Servidores e etc.');

INSERT INTO HANDS_EYES (TIER1, TIER2, TIER3, DESCRICAO)
VALUES ('Hardware', 'Peripheral', 'Printer', 'Printer Lexmark - Incident Ongoing (Falha de impressão, autenticação, Atolamento de folhas e etc.)');

INSERT INTO HANDS_EYES (TIER1, TIER2, TIER3, DESCRICAO)
VALUES ('Hardware', 'Peripheral', 'Production printer', 'Printer Lexmark - Problema Físico na Impressora (Manutenção)');

INSERT INTO HANDS_EYES (TIER1, TIER2, TIER3, DESCRICAO)
VALUES ('Hardware', 'Peripheral', 'Personal printer', 'Printer Lexmark - Outros Serivços');

INSERT INTO HANDS_EYES (TIER1, TIER2, TIER3, DESCRICAO)
VALUES ('Hardware', 'Peripheral', 'Local printer', 'Printer Lexmark - Troca de Toner (Suprimentos)');

INSERT INTO HANDS_EYES (TIER1, TIER2, TIER3, DESCRICAO)
VALUES ('Business Application', 'All Line of Business', 'Administrative', 'Printer Lexmark - Ticket aberto incorretamente com informação errada ou insuficiente. (FS não teve ação)');

INSERT INTO HANDS_EYES (TIER1, TIER2, TIER3, DESCRICAO)
VALUES ('Business Application', 'All Line of Business', 'Enterprise Resource Planing', 'Printer Lexmark - Específico para casos que ao contatar o user o FS é informado de que não há mais problemas relacionados ao Ticket. (Improdutivo)');

INSERT INTO HANDS_EYES (TIER1, TIER2, TIER3, DESCRICAO)
VALUES ('Software', 'Software Application/System', 'Change and Configuration Management Software', 'H&E de Migração WinXP para Win7');

INSERT INTO HANDS_EYES (TIER1, TIER2, TIER3, DESCRICAO)
VALUES ('Miscellaneous', 'Service', 'Activity', 'H&E para acompanhamento de ação de Vendors');


/*  INSERIR DADOS NA OUTROS  */

INSERT INTO OUTROS (TIER1, TIER2, TIER3, DESCRICAO)
VALUES ('TIER1', 'TIER2', 'TIER3', 'DESCRICAO');

INSERT INTO OUTROS (TIER1, TIER2, TIER3, DESCRICAO)
VALUES ('TIER1', 'TIER2', 'TIER3', 'DESCRICAO');

INSERT INTO OUTROS (TIER1, TIER2, TIER3, DESCRICAO)
VALUES ('TIER1', 'TIER2', 'TIER3', 'DESCRICAO');

INSERT INTO OUTROS (TIER1, TIER2, TIER3, DESCRICAO)
VALUES ('TIER1', 'TIER2', 'TIER3', 'DESCRICAO');

INSERT INTO OUTROS (TIER1, TIER2, TIER3, DESCRICAO)
VALUES ('TIER1', 'TIER2', 'TIER3', 'DESCRICAO');

INSERT INTO OUTROS (TIER1, TIER2, TIER3, DESCRICAO)
VALUES ('TIER1', 'TIER2', 'TIER3', 'DESCRICAO');



INSERT INTO CATEGORIAS (CODIGO, NOME)
VALUES ('1','Software com Falha');

INSERT INTO CATEGORIAS (CODIGO, NOME)
VALUES ('2','Hardware com Falha');

INSERT INTO CATEGORIAS (CODIGO, NOME)
VALUES ('3','outros');

INSERT INTO CATEGORIAS (CODIGO, NOME)
VALUES ('4','Troca de Periférico');

INSERT INTO CATEGORIAS (CODIGO, NOME)
VALUES ('5','Impressoras e Scanners');

INSERT INTO CATEGORIAS (CODIGO, NOME)
VALUES ('6','Rede');

INSERT INTO CATEGORIAS (CODIGO, NOME)
VALUES ('7','HANDS & EYES e Lexmark Printer');

INSERT INTO CATEGORIAS (CODIGO, NOME)
VALUES ('8','Atendimentos Flex');

INSERT INTO CATEGORIAS (CODIGO, NOME)
VALUES ('9','SVIP');





##########################################################################
                EM USO    http://localhost:8086/phpmyadmin/      FSVT-DXC    Tubarao5500
##########################################################################

CREATE DATABASE DXC;
USE DXC;

CREATE TABLE CATEGORIAS(
  ID int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  CODIGO INT,
  NOME varchar(100) NOT NULL
)


CREATE TABLE tipificacao(
  ID int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  ID_CATEGORIAS INT,
  CATEGORIA varchar(300),
  DESCRICAO varchar(300),
  TIER1 varchar(150),
  TIER2 varchar(150),
  TIER3 varchar(150)
)

ALTER TABLE tipificacao ADD CONSTRAINT FOREIGN KEY (ID_CATEGORIAS) REFERENCES CATEGORIAS(ID)

INSERT INTO tipificacao (ID_CATEGORIA, CATEGORIA, DESCRICAO, TIER1, TIER2, TIER3) VALUES
(2,	'Falha de Software', 'Verificação/Remoção de vírus', 'Software', 'Software application/system', 'Security software');

INSERT INTO tipificacao (ID_CATEGORIA, CATEGORIA, DESCRICAO, TIER1, TIER2, TIER3) VALUES
(2,	'Falha de Software', 'Atualização ou qualquer ação referente a Pluguins de Banco', 'Business Application', 'Bank Deposit', 'Security N/a');

# INNER JOIN - RELACIONA AS TABELAS E EXIBE POR MEIO DAS CHAVES PRIMARIAS E ESTRANGEIRAS  PESSOAS x CARGO

SELECT tipificacao.TIER1, tipificacao.TIER2, tipificacao.TIER3 FROM tipificacao INNER JOIN CATEGORIAS ON CATEGORIAS.ID = tipificacao.ID_CATEGORIAS WHERE CATEGORIAS.ID = 1;




