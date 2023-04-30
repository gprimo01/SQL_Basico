CREATE TABLE usuarios (ID INT NOT NULL AUTO_INCREMENT,Nome VARCHAR(50),Contato INT,Email VARCHAR(50),



DataNas DATE,Login VARCHAR(100),Senha VARCHAR(100),Adm INT,PRIMARY KEY(ID));





INSERT INTO usuarios (Nome,Contato,Email,CPF,DataNas,Login,Senha,Adm) VALUES



('Giovanni Primo', 40028922, 'giovanni@gmail.com', '1993/01/26', ‘89895656’, 'giovanni123', 123456, 1 ),

('Erik Neves', 40028922, 'erik@gmail.com', '1993/01/26', ‘2356896’, 'erik123', 123456, 0 ),

('Caio Henrique', 40028922, 'caio@gmail.com', '1979/01/26', ‘14253625’, 'caio123', 123456, 0 ),

('Leonardo Bastos', 40028922, 'leonardo@gmail.com', '1993/01/26', ‘475856986’, 'leo123', 123456, 1 ),

('Nayara Primo', 40028922, 'nayara@gmail.com', '1993/01/26', ‘45879626’, 'nayara123', 123456, 1 ),

('Manoel Lima', 40028922, 'manoel@gmail.com', '1994/01/26', ‘4587965’, 'manoel123', 123456, 1 ),

('Solimar Lima', 40028922, 'solimar@gmail.com', '1999/01/26', ‘22562445’, 'solimar123', 123456, 0 ),

('Paloma Duarte', 40028922, 'paloma@gmail.com', '2002/01/26', ‘58745985’, 'paloma123', 123456, 1 );





SELECT Nome,



   CASE

   

    WHEN DataNas < '1981/01/01' THEN DataNas

    

    WHEN DataNas >= '1981/01/01' THEN ‘Usuario sem idade necessária'

    

    ELSE 'Ok'

    

    END as DataDeNascimento

    

    

FROM usuarios;



SELECT Nome,



   CASE

    WHEN Adm = 1 THEN ' Usuario é um Administrador'

    

    WHEN Adm = 0 THEN 'Usuario não é um administrador'

    

    ELSE 'Ok'

    

        END AS StatusDeAdm

    

FROM usuarios;