
CREATE TABLE aerodromes (
    nome varchar(50) NOT NULL,
    city varchar(50) NOT NULL,
    area varchar(30) );

CREATE TABLE turma(
    cod serial PRIMARY KEY,
    periodo varchar(15) NOT NULL,
    cod_curso integer REFERENCES curso(cod) );
    
CREATE TABLE aluno (
    ra integer PRIMARY KEY,
    nome varchar(50) NOT NULL,
    endereco varchar(60) NOT NULL,
    cidade varchar(40) NOT NULL,
    uf char(2) NOT NULL,
    telefone varchar(15),
    celular varchar(15) NOT NULL,
    cod_turma integer REFERENCES turma(cod),
    data_nasc date );

