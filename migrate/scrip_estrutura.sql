CREATE DATABASE bd_controlleite;

USE bd_controlleite;


CREATE TABLE turma (
 turma VARCHAR(30) NOT NULL,
 padrinho VARCHAR(50)
);

ALTER TABLE turma ADD CONSTRAINT PK_turma PRIMARY KEY (turma);


CREATE TABLE inventario (
 id_entrega CHAR(10) NOT NULL,
 quantidade INT,
 dt_entrega DATE,
 turma VARCHAR(30)
);

ALTER TABLE inventario ADD CONSTRAINT PK_inventario PRIMARY KEY (id_entrega);


ALTER TABLE inventario ADD CONSTRAINT FK_inventario_0 FOREIGN KEY (turma) REFERENCES turma (turma);


