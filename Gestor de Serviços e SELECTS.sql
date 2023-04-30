CREATE TABLE usuarios (id INT PRIMARY KEY AUTO_INCREMENT, nome VARCHAR(50), email VARCHAR(50), ramal VARCHAR(50));



CREATE TABLE servicos (id INT PRIMARY KEY AUTO_INCREMENT, servico VARCHAR(50), descricao TEXT, data_cadastro DATE, data_execucao DATE, concluido BOOL, usuario_id INT,

FOREIGN KEY (usuario_id) REFERENCES usuarios(id));



CREATE TABLE responsaveis_servicos (id INT PRIMARY KEY AUTO_INCREMENT, servico_id INT, usuario_id INT, FOREIGN KEY (servico_id) REFERENCES servicos(id), FOREIGN KEY (usuario_id) REFERENCES usuarios(id));



CREATE TABLE datas_execucao (id INT PRIMARY KEY AUTO_INCREMENT, servico_id INT, data_execucao DATE, data_baixa DATE, FOREIGN KEY (servico_id) REFERENCES servicos(id));



INSERT INTO usuarios (nome, email, ramal) VALUES ('Leonardo', 'leo.bastos@gmail', '2233'), ('Giovanni', 'gio.primo@gmail', '5566'), ('Caio', 'caiohenrique@gmail', '1122'), ('Erick', 'erick.neves@gmail', '7788');

INSERT INTO servicos (servico, descricao, data_cadastro, data_execucao, concluido) VALUES ('manuntenção', 'Manutenção do computador local','2023-01-15', '2023-03-20', TRUE), ('Melhoria', 'melhoria do banco de dados', '2023-02-14', '2023-02-20', FALSE), 

('Compra', 'Compra de licença', '2022-11-22', '2023-01-01', TRUE), ('Atualização', 'Atualizar banco de dados', '2023-03-10', '2023-01-31', FALSE); 



SELECT servico FROM servicos JOIN responsaveis_servicos ON responsaveis_servicos.servico_id = servicos.id WHERE responsaveis_servicos.usuario_id = "usuario_id";



SELECT usuarios.* FROM usuarios JOIN responsaveis_servicos ON responsaveis_servicos.usuario_id = usuarios.id WHERE responsaveis_servicos.servico_id = "servico_id";



SELECT DISTINCT usuarios.* FROM usuarios JOIN servicos ON servicos.usuario_id = usuarios.id WHERE servicos.data_execucao < CURDATE() AND servicos.concluido = false;



SELECT 'Leonardo', COUNT(servicos.id) AS qtd_servicos_executados FROM usuarios LEFT JOIN servicos ON servicos.usuario_id = usuarios.id AND servicos.concluido = true GROUP BY usuarios.id;



SELECT * FROM servicos WHERE usuario_id = "Leonardo" AND (data_execucao = "2023-01-01" OR (data_execucao < "2023-03-20" AND concluido = false));