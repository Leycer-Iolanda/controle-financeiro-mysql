/*CRIANDO BANCO DE DADOS E TABELAS.*/

CREATE DATABASE IF NOT EXISTS controle_financeiro; 

USE controle_financeiro; 

CREATE TABLE usuario ( 
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    tipo_usuario VARCHAR(255) NOT NULL,
    senha VARCHAR(45)
);

CREATE TABLE categorias(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    tipo VARCHAR(45)
);

CREATE TABLE compartilhamento_usuarios(
	id_usuario_dono INT,
    id_usuario_autorizado INT,
    PRIMARY KEY (id_usuario_dono, id_usuario_autorizado),
    FOREIGN KEY (id_usuario_dono) REFERENCES usuario(id),
    FOREIGN KEY (id_usuario_autorizado) REFERENCES usuario(id)    
);

CREATE TABLE saidas_financeiras(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(9,2) NOT NULL ,
    data DATE NOT NULL,
    descricao VARCHAR(45),
    observacao TEXT,
    id_usuario INT,
    id_categoria INT,
    FOREIGN KEY (id_usuario) REFERENCES usuario (id),
    FOREIGN KEY (id_categoria) REFERENCES categorias(id)    
);

CREATE TABLE entradas_financeiras(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(9,2) NOT NULL ,
    data DATE NOT NULL,
    descricao VARCHAR(45),
    observacao TEXT,
    id_usuario INT,
    id_categoria INT,
    FOREIGN KEY (id_usuario) REFERENCES usuario (id),
    FOREIGN KEY (id_categoria) REFERENCES categorias(id)    
);

CREATE TABLE metas(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    valor_alvo DECIMAL(9,2),
    prazo DATE,
    descricao VARCHAR(45)
);

CREATE TABLE usuario_metas(
	id_usuario INT,
    id_meta INT,
    PRIMARY KEY (id_usuario, id_meta),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id),
    FOREIGN KEY (id_meta) REFERENCES metas(id)
);


