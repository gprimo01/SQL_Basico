CREATE TABLE usuarios (ID INT NOT NULL AUTO_INCREMENT,Nome VARCHAR(50), Login VARCHAR(50),Senha VARCHAR(50), Perfil INT, Ativo BOOL,PRIMARY KEY(ID));

CREATE TABLE email_usuario (ID INT NOT NULL AUTO_INCREMENT,IDUsuario INT, Email VARCHAR (50),PRIMARY KEY(ID), FOREIGN KEY(IDUsuario) REFERENCES usuarios(ID));

CREATE TABLE usuarios_perfil (ID INT NOT NULL AUTO_INCREMENT, IDUsuario INT, IDPerfil INT,PRIMARY KEY(ID), FOREIGN KEY(IDUsuario) REFERENCES usuarios(ID), FOREIGN KEY(IDPerfil) REFERENCES perfil(ID));

CREATE TABLE perfil (ID INT NOT NULL AUTO_INCREMENT, perfil VARCHAR (50), PRIMARY KEY(ID));



INSERT INTO usuarios (Nome, Login, Senha, Ativo) VALUES 

('blabla', 'dsdd','1234',TRUE), ('bleble', 'jrkd','2365',TRUE), ('blibli', 'lsjs','48725',FALSE), ('bloblo', 'wety','5452',FALSE);



INSERT INTO email_usuario (IDUsuario, Email) VALUES 

(1,'bbb@ddd'),(1,'vvv@ccc'),(2,'ddd@ddf'),(3,'fff@fff');



INSERT INTO usuarios_perfil (IDUsuario, IDPerfil) VALUES 

(2,1),(2,2),(3,2),(1,3);



INSERT INTO perfil (perfil) VALUES 

('admin'),('usu'),('hook');



/* SELECT u.Nome, u.Login, eu.Email FROM usuarios u, email_usuario eu WHERE u.ID = eu.IDUsuario; */



SELECT u.Nome, p.perfil FROM usuarios u, perfil p, usuarios_perfil up WHERE u.ID = up.IDUsuario AND p.ID = up.IDPerfil AND u.Nome = "bleble";