/*USANDO COMANDOS SELECT, UPDATE E DELETE.*/
USE controle_financeiro;

/* BUSCA POR REGISTROS*/

SELECT * FROM usuario;
SELECT * FROM categorias;
SELECT * FROM compartilhamento_usuarios;
SELECT * FROM saidas_financeiras;
SELECT * FROM entradas_financeiras;
SELECT * FROM metas;
SELECT * FROM usuario_metas;
SELECT * FROM categorias WHERE tipo = 'despesa fixa';
SELECT * FROM entradas_financeiras WHERE valor < 2000; 
SELECT u.nome, e.valor, e.data FROM entradas_financeiras AS e JOIN usuario AS u ON e.id_usuario = u.id;

/* EDIÇAO DE DADOS*/

SET SQL_SAFE_UPDATES = 0;

UPDATE usuario SET email = 'joaozinho123@gmail.com' WHERE id = 1;
UPDATE categorias SET nome = 'Vendas' WHERE id = 8;
UPDATE compartilhamento_usuarios SET id_usuario_autorizado = 3 WHERE id_usuario_dono = 5;
UPDATE saidas_financeiras SET observacao = 'conta em atraso' WHERE descricao LIKE '%luz'; 
UPDATE entradas_financeiras SET data = '2026-03-18' WHERE id = 4;
UPDATE metas SET valor_alvo = 5000 WHERE id = 2;
UPDATE usuario_metas SET id_meta = 3 WHERE id_usuario = 4;

/*EXCLUSAO DE DADOS*/

DELETE FROM compartilhamento_usuarios WHERE id_usuario_dono = 5;
DELETE FROM saidas_financeiras WHERE descricao = 'plano de saude';
DELETE FROM entradas_financeiras WHERE id_usuario = 5;
DELETE FROM categorias WHERE nome = 'plano de saude';
DELETE FROM usuario_metas WHERE id_usuario = 5;
DELETE FROM metas WHERE descricao = 'viagem';
DELETE FROM usuario WHERE id = 5;