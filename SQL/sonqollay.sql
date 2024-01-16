DROP DATABASE IF EXISTS sonqollay;
CREATE DATABASE IF NOT EXISTS sonqollay;
USE sonqollay;
CREATE TABLE liderazgo(
    id MEDIUMINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    pregunta varchar(300) not null,
    respuesta_correcta varchar(300) not null,
    respuesta1 varchar(300) not null,
    respuesta2 varchar(300) not null,
    respuesta3 varchar(300) not null,
    respuesta4 varchar(300) not null
);