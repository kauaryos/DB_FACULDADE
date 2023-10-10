USE db_faculdade;

INSERT INTO tipo_logradouro                                                      
    (cod_tipo_logradouro,tipo_logradouro)                 
VALUES                                                               
    ('1','rua'),
    ('2','chacara'),
    ('3','lote'),
    ('4','avenida'), 
    ('5','quadra'); 

INSERT INTO endereco                                                     
    (cod_endereco,nome_rua, numero_rua, complemento, CEP, fk_cod_tipo_logradouro)                 
VALUES                                                               
    ('1','QNR 12','14', 'Ceilandia','788765','1'),
    ('2','QNQ','3','quadra','7665756','3'),
    ('3','QNR','1','mercadinho','6445465','3'),
    ('4','QNP','17','padarias','453455','4'),
    ('5','QNR 1','1', 'Ceilandia','354366','1'),
    ('6','QNR 8','56', 'Ceilandia','7767867','1'),
    ('7','joinvile','6','boniteza','908998','5'),
    ('8','QNR 12','14', 'Ceilandia','788765','1'),
    ('9','QNL 10', '12', 'Taguatinga', '72020080', '1'),
    ('10','sao sebastiao','87','mato','46456481','5'),
    ('11','vicent pires','35','vicentinho','67854313','5'),
    ('12','taguatinga','6','praca','78654327','2'),
    ('13','pinheiros','32','','23465498','1'),
    ('14','tira dentes','384','dentes','4654667','3'),
    ('15','limoeiro','036','dona da rua','5665756','5'),
    ('16','Quadra 2', '15', 'futebol', '676776', '5'),
    ('17','vila chaves','8','barril','576698','5'),
    ('18','Quadra 5', '25', 'futvolei', '43534', '5'),
    ('19','sol nascente','09','lote 3','56677','4');

INSERT INTO tipo_telefone                                                      
    (cod_tipo_telefone,tipo_telefone)                 
VALUES                                                               
    ('1','telefone'),
    ('2','celular'),
    ('3','comercio');

INSERT INTO telefone                                                      
    (cod_telefone,numero_telefone,fk_cod_tipo_telefone)                 
VALUES                                                               
    ('1','564456542','1'),
    ('2','992746262','2'),
    ('3','546483744','3'),
    ('4','335323441','1'),
    ('5','535345324','1'),
    ('6','536856853','2'),
    ('7','456743634','3'),
    ('8','346768374','1'),
    ('9','765213456','1'),
    ('10','145344528','2'),
    ('11','523442334','3'),
    ('12','345535212','3'),
    ('13','857625484','1'),
    ('14','351352435','2'),
    ('15','535353525','3'),
    ('16','456634343','2'),
    ('17','789987434','3'),
    ('18','342334126','1'),
    ('19','423556569','1'),
    ('20','357753573','1'),
    ('21','246343434','3'),
    ('22','743434343','2'),
    ('23','735532323','3'),
    ('24','634634757','1'),
    ('25','634636373','1'),
    ('26','654364636','2'),
    ('27','783474378','3'),
    ('28','638738734','1');

-- Inserir dados na tabela "departamento" com nomes relacionados à programação
INSERT INTO departamento
    (cod_departamento, nome_departamento)
VALUES
    ('1', 'Desenvolvimento de Software'),
    ('2', 'Ciência da Computação'),
    ('3', 'Engenharia de Computação'),
    ('4', 'Tecnologia da Informação'),
    ('5', 'Programação Web'),
    ('6', 'Inteligência Artificial');

-- Inserir dados na tabela "curso" com nomes relacionados à programação
INSERT INTO curso
    (cod_curso, nome_curso, fk_cod_departamento)
VALUES
    ('1', 'Engenharia de Software', '1'),
    ('2', 'Analista de Sistemas', '1'),
    ('3', 'Ciência da Computação', '2'),
    ('4', 'Desenvolvimento Web', '5'),
    ('5', 'Programação em Java', '2'),
    ('6', 'Inteligência Artificial', '6'),
    ('7', 'Engenharia de Computação', '3'),
    ('8', 'Tecnologia da Informação', '4'),
    ('9', 'Programação Mobile', '5'),
    ('10', 'Segurança da Informação', '4');

INSERT INTO turma                                                     
(cod_turma,periodo,numero_aluno,dt_inicio,dt_fim,fk_cod_curso)                 
VALUES                                                               
    ('1','Vesperti','30','2021-10-09','2022-12-01','1'),
    ('2','Vesperti','25','2021-10-01','2022-01-30','2'),
    ('3','Vesperti','35','2021-10-10','2023-10-30','3'),
    ('4','Noturno','40','2021-11-12','2022-06-01','4'),
    ('5','Noturno','30','2021-11-05','2022-12-01','5'),
    ('6','Matutino','35','2021-12-03','2022-06-01','6'),
    ('7','Matutino','37','2021-12-02','2022-06-01','7'),
    ('8','Matutino','25','2021-12-09','2022-06-01','8');

INSERT INTO aluno
    (RA, nome_aluno, sobrenome_aluno, CPF, status, sexo, nome_mae, nome_pai, email, whatsapp, fk_cod_curso, fk_cod_turma, fk_cod_endereco)
VALUES
    ('1', 'João', 'Silva', '12345678901', '1', 'M', 'Maria', 'José', 'joao@gmail.com', '1234567890', '1', '4', '1'),
    ('2', 'Ana', 'Pereira', '23456789012', '2', 'F', 'Sônia', 'Carlos', 'ana@gmail.com', '2345678901', NULL, NULL, '2'),
    ('3', 'Lucas', 'Santos', '34567890123', '1', 'M', 'Laura', 'Pedro', 'lucas@gmail.com', '3456789012', '1', '5', '3'),
    ('4', 'Carla', 'Ferreira', '45678901234', '1', 'F', 'Sandra', 'Roberto', 'carla@gmail.com', '4567890123', '6', '6', '4'),
    ('5', 'Mariana', 'Oliveira', '56789012345', '2', 'F', 'Juliana', 'Gustavo', 'mariana@gmail.com', '5678901234', NULL, NULL, '5'),
    ('6', 'Rafael', 'Mendes', '67890123456', '1', 'M', 'Cristina', 'André', 'rafael@gmail.com', '6789012345', '10', '8', '10'),
    ('7', 'Juliana', 'Rodrigues', '78901234567', '1', 'F', 'Lúcia', 'Renato', 'juliana@gmail.com', '7890123456', '10', '8', '10'),
    ('8', 'Marcelo', 'Alves', '89012345678', '1', 'M', 'Clara', 'Eduardo', 'marcelo@gmail.com', '8901234567', '10', '5', '6'),
    ('9', 'Fernanda', 'Gomes', '90123456789', '1', 'F', 'Isabela', 'Ricardo', 'fernanda@gmail.com', '9012345678', '6', '5', '7'),
    ('10', 'Pedro', 'Pereira', '01234567890', '1', 'M', 'Sônia', 'Carlos', 'pedro@gmail.com', '0123456789', '2', '4', '8'),
    ('11', 'Isabela', 'Moraes', '11223344556', '1', 'F', 'Ana', 'José', 'isabela@gmail.com', '1122334455', '10', '8', '9'),
    ('12', 'Gustavo', 'Fernandes', '22334455667', '1', 'M', 'Renata', 'Antônio', 'gustavo@gmail.com', '2233445566', '6', '2', '10'),
    ('13', 'Aline', 'Lima', '33445566778', '1', 'F', 'Carla', 'Felipe', 'aline@gmail.com', '3344556677', '3', '4', '11'),
    ('14', 'Raul', 'Ribeiro', '44556677889', '1', 'M', 'Larissa', 'Fernando', 'raul@gmail.com', '4455667788', '3', '4', '12'),
    ('15', 'Paulo', 'Gonçalves', '55667788900', '1', 'M', 'Márcia', 'Luiz', 'paulo@gmail.com', '5566778890', '3', '8', '13'),
    ('16', 'Mariana', 'Mendes', '66778890011', '2', 'F', 'Andrea', 'Carlos', 'mariana@gmail.com', '6677889001', NULL, NULL, '14'),
    ('17', 'Lucas', 'Oliveira', '77889900122', '1', 'M', 'Fernanda', 'Felipe', 'lucas@gmail.com', '7788990012', '1', '7', '15'),
    ('18', 'Carla', 'Ramos', '88990011233', '1', 'F', 'Larissa', 'Antônio', 'carla@gmail.com', '8899001123', '1', '7', '16'),
    ('19', 'Fernando', 'Ferreira', '99001122334', '1', 'M', 'Clara', 'Eduardo', 'fernando@gmail.com', '9900112233', '6', '6', '17'),
    ('20', 'Amanda', 'Andrade', '00112233445', '1', 'F', 'Luciana', 'Gustavo', 'amanda@gmail.com', '0011223344', '8', '8', '18');



 

INSERT INTO disciplina
    (cod_disciplina, nome_disciplina, carga_horaria, descricao, num_alunos, fk_cod_departamento)
VALUES
    ('1', 'Programação em C', '200', 'Estudar a linguagem C', '56', '2'),
    ('2', 'Introdução à Computação', '200', 'Fundamentos da computação', '30', '4'),
    ('3', 'Eletrônica Digital', '180', 'Princípios de eletrônica', '30', '4'),
    ('4', 'Programação em C++', '200', 'Estudar a linguagem C++', '21', '5'),
    ('5', 'Algoritmos Avançados', '210', 'Desenvolvimento de algoritmos', '2', '2'),
    ('6', 'Sistemas Operacionais', '120', 'Estudo de sistemas operacionais', '60', '3'),
    ('7', 'Estruturas de Dados', '400', 'Manipulação de estruturas de dados', '5', '5'),
    ('8', 'Desenvolvimento Web', '200', 'Construção de sites', '18', '5'),
    ('9', 'Desenvolvimento de Jogos', '150', 'Criar jogos digitais', '23', '5'),
    ('10', 'Inteligência Artificial', '150', 'Estudo de IA', '30', '5'),
    ('11', 'Engenharia de Software', '140', 'Desenvolvimento de software', '17', '2'),
    ('12', 'Mineração de Dados', '20', 'Análise de dados', '10', '5'),
    ('13', 'Redes de Computadores', '100', 'Configuração de redes', '56', '5'),
    ('14', 'Banco de Dados', '225', 'Gerenciamento de bancos de dados', '15', '4'),
    ('15', 'Desenvolvimento Mobile', '50', 'Criar aplicativos móveis', '50', '5'),
    ('16', 'Sistemas Distribuídos', '200', 'Estudo de sistemas distribuídos', '30', '5'),
    ('17', 'Segurança da Informação', '135', 'Proteção de dados', '100', '5'),
    ('18', 'Desenvolvimento Front-end', '170', 'Construção de interfaces web', '50', '6'),
    ('19', 'Desenvolvimento Back-end', '220', 'Desenvolvimento de lógica de servidor', '12', '6'),
    ('20', 'Gestão de Projetos de TI', '99', 'Gerenciamento de projetos de TI', '9', '3'),
    ('21', 'Desenvolvimento de Jogos', '100', 'Criar jogos digitais', '100', '6'),
    ('22', 'Desenvolvimento de Software', '90', 'Programação de software', '20', '6'),
    ('23', 'Java', '175', 'Programação em Java', '32', '6'),
    ('24', 'PHP', '500', 'Desenvolvimento PHP', '25', '6'),
    ('25', 'Introdução à Ciência da Computação', '111', 'Fundamentos da computação', '35', '1'),
    ('26', 'Engenharia de Software', '100', 'Desenvolvimento de software', '13', '5'),
    ('27', 'Administração de Bancos de Dados', '293', 'Gerenciamento de bancos de dados', '200', '6'),
    ('28', 'Desenvolvimento Web', '200', 'Construção de sites', '25', '6'),
    ('29', 'Linguagens de Programação', '200', 'Estudo de linguagens de programação', '29', '6'),
    ('30', 'Projeto de Software', '90', 'Desenvolvimento de projetos de software', '37', '6');


INSERT INTO professor
    (cod_professor, nome_professor, sobrenome_professor, status, fk_cod_departamento)
VALUES
    ('1', 'João', 'Silva', '1', '2'),
    ('2', 'Maria', 'Santos', '1', '1'),
    ('3', 'Pedro', 'Oliveira', '1', '5'),
    ('4', 'Ana', 'Ferreira', '1', '4'),
    ('5', 'Luís', 'Carvalho', '1', '1'),
    ('6', 'Sandra', 'Gomes', '1', '2'),
    ('7', 'Ricardo', 'Pereira', '1', '5'),
    ('8', 'Isabel', 'Alves', '0', '3'),
    ('9', 'Carlos', 'Rodrigues', '0', '4'),
    ('10', 'Marta', 'Fernandes', '0', '5');


INSERT INTO telefone_aluno                                                    
    (fk_RA,fk_cod_telefone)                 
VALUES                                                               
    ('1','1'),
    ('2','4'),
    ('4','6'),
    ('5','5'),
    ('6','8'),
    ('7','12'),
    ('9','9'),
    ('10','13'),
    ('12','14'),
    ('13','15'),
    ('14','16'),
    ('16','17'),
    ('17','18'),
    ('18','19'),
    ('19','20'),
    ('20','21'),
    ('1','2'),
    ('5','6'),
    ('9','10'),
    ('1','3'),
    ('5','7'),
    ('9','11');
     

    
INSERT INTO curso_disciplina                                                    
    (fk_cod_curso,fk_cod_disciplina)                 
VALUES                                                               
    ('1','1'),
    ('2','2'),
    ('3','3'),
    ('4','4'),
    ('5','5'),
    ('6','6'),
    ('7','7'),
    ('8','8'),
    ('9','9'),
    ('10','10'),
    ('1','11'),
    ('2','12'),
    ('3','13'),
    ('4','14'),
    ('5','15'),
    ('6','16'),
    ('7','17'),
    ('8','18'),
    ('9','19'),
    ('10','20'),
    ('1','21'),
    ('2','22'),
    ('3','23'),
    ('4','24'),
    ('5','25'),
    ('6','26'),
    ('7','27'),
    ('8','28'),
    ('9','29'),
    ('10','30');
    

    
INSERT INTO professor_disciplina                                               
    (fk_cod_professor,fk_cod_disciplina)                 
VALUES                                                               
    ('1','1'),
    ('2','2'),
    ('3','3'),
    ('6','4'),
    ('7','5'),
    ('9','6'),
    ('10','7'),
    ('1','8'),
    ('2','9'),
    ('3','10'),
    ('6','11'),
    ('7','12'),
    ('9','13'),
    ('10','14'),
    ('1','15'),
    ('2','16'),
    ('3','17'),
    ('6','18'),
    ('7','19'),
    ('9','20'),
    ('10','21'),
    ('1','22'),
    ('2','23'),
    ('3','24'),
    ('6','25'),
    ('7','26'),
    ('9','27'),
    ('10','28'),
    ('1','29'),
    ('2','30');
    
INSERT INTO aluno_disciplina                                                   
    (fk_RA,fk_cod_disciplina)                 
VALUES                                                               
    ('1','1'),
    ('3','2'),
    ('4','3'),
    ('6','4'),
    ('7','5'),
    ('8','6'),
    ('9','7'),
    ('10','8'),
    ('11','9'),
    ('12','10'),
    ('13','11'),
    ('14','12'),
    ('15','13'),
    ('17','14'),
    ('18','15'),
    ('19','16'),
    ('20','17'),
    ('1','18'),
    ('3','19'),
    ('4','20'),
    ('6','21'),
    ('7','22'),
    ('8','23'),
    ('9','24'),
    ('10','25'),
    ('11','26'),
    ('12','27'),
    ('13','28'),
    ('14','29'),
    ('15','30');

INSERT INTO historico                                                 
    (cod_historico,dt_inicio,dt_fim,fk_RA)                 
VALUES                                                               
    ('1','2021-06-01','2022-11-10','1'),
    ('3','2021-07-03','2022-03-12','3'),
    ('4','2021-08-04','2022-04-13','4'),
    ('6','2021-09-06','2022-06-15','6'),
    ('7','2021-09-07','2022-08-16','7'),
    ('8','2021-07-08','2022-05-17','8'),
    ('9','2021-06-09','2022-08-18','9'),
    ('10','2021-02-10','2022-12-19','10'),
    ('11','2021-05-11','2022-03-20','11'),
    ('12','2021-03-12','2022-12-30','12'),
    ('13','2021-07-13','2022-03-13','13'),
    ('14','2021-08-14','2022-09-18','14'),
    ('15','2021-02-15','2022-03-25','15'),
    ('17','2021-12-17','2022-09-22','17'),
    ('18','2021-11-18','2022-01-17','18'),
    ('19','2021-11-19','2022-02-24','19'),
    ('20','2021-12-20','2022-07-29','20');
    
INSERT INTO disciplina_historico                                                     
    (fk_cod_disciplina, fk_cod_historico, nota, frequencia)                 
VALUES                                                               
    ('1','1','10','20'),
    ('3','3','5.0','18'),
    ('4','4','1.0','17'),
    ('6','6','5.0','15'),
    ('7','7','5.0','14'),
    ('8','8','5.0','13'),
    ('9','9','5.0','12'),
    ('10','10','5.0','11'),
    ('11','11','5.0','10'),
    ('12','12','10','9'),
    ('13','13','8.4','8'),
    ('14','14','9.1','7'),
    ('15','15','8.9','6'),
    ('17','17','10','4'),
    ('18','18','5.4','3'),
    ('19','19','6.8','2'),
    ('20','20','7.9','1');