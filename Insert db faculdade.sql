USE faculdade;

INSERT INTO tipo_logradouro                                                      
    (cod_tipo_logradouro,tipo_logradouro)                 
VALUES                                                               
    ('1','rua'),
    ('2','chácara'),
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

INSERT INTO departamento                                                      
    (cod_departamento,nome_departamento)                 
VALUES                   
	('1','Ciencias Humanas'),     
    ('2','Matematica'),
    ('3','Ciencias'),
    ('4','Biologicas'),
    ('5','Estagio'),
    ('6','Tecnologia');

INSERT INTO curso                                                     
    (cod_curso,nome_curso,fk_cod_departamento)                 
VALUES                                                               
    
    ('1','Engenharia software','6'),
    ('2','analista de sistema','6'),
    ('3','Biologia','4'),
    ('4','historia','5'),
    ('5','matematica','2'),
    ('6','Pscicologia','5'),
    ('7','engenharia eletrica','6'),
    ('8','animação','5'),
    ('9','anatomia','3'),
    ('10','designer','5');

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
    (RA,nome_aluno,sobrenome_aluno,CPF,status,sexo,nome_mae,nome_pai,email,whatsapp,fk_cod_curso,fk_cod_turma,fk_cod_endereco)                 
VALUES                                                               
    ('1','Goku','Sayajin','956473875','1','M','Akira','Bardock','goku@gmail.com','7665534142','1','4','1'),
    ('2','Bruce','wayne','968658548','2','M','Marta','Bruce','batman@gmail.com','4646723234',NULL,NULL,'2'),
    ('3','Ben','Tenyson','1010101010','1','M','Ana','Juca','ben@gmail.com','5733874473','1','5','3'),
    ('4','Diogo','Defante','547564668','1','M','Tata','Cocielo','defaante@gmail.com','994827362','6','6','4'),
    ('5','Alan','zoka','756695867','2','M','joana','joao','alan@gmail.com','646354751',NULL,NULL,'5'),
    ('6','Murilo','couto','654638478','1','M','murila','carlos','muri@gmail.com','7463672352','10','8','10'),
    ('7','João','Pé de feijão','454563637','1','M','rafaela','pedro','jão@gmail.com','948572904','10','8','10'),
    ('8','Arthur','lanches','454563674','1','M','maria','julio','athurzin@gmail.com','5673465873','10','5','6'),
    ('9','Scooby','Doo','346565383','1','M','Salsicha',NULL,'salsicha@gmail.com','798378584','6','5','7'),
    ('10','Peter','Parker','46336347','1','M','May','Ben','miranha@gmail.com','7346565838','2','4','8'),
    ('11','Patrick','Estrela','64653637','1','M','Joana','Bob','estrelinha@gmail.com','456474574','10','8','9'),
    ('12','Roberto','Bolanos','65764363','1','M','Barbara','Bruno','robertin@gmail.com','121212121','6','2','10'),
    ('13','Rodrigo','Faro','67474567','1','M','elen','casemiro','namoro@gmail.com','6787656765','3','4','11'),
    ('14','Ricardo','Cruz','46464657','1','M','gabriela','joao','ricardo@gmail.com','778345345','3','4','12'),
    ('15','James','Bond','747574574','1','M','carol','mario','james@gmail.com','9898565675','3','8','13'),
    ('16','Chico','Buarque','53637375','2','M','lorena','Chico','buarque@gmail.com','789987897',NULL,NULL,'14'),
    ('17','Ramon','Madruga','46478383','1','M','valdirene','felipe','madruga@gmail.com','680086806','1','7','15'),
    ('18','Rick','Sanches','46525284','1','M','renata','joao','ricka@gmail.com','8677462181','1','7','16'),
    ('19','Zack','Snyder','63466376','1','M','diana','clarck','superman@gmail.com','343534534','6','6','17'),
    ('20','Adam','Sandler','36363673','1','M','Divina','Lucas','AMo@gmail.com','1574353453','8','8','18');


 

INSERT INTO disciplina                                                     
    (cod_disciplina,nome_disciplina,carga_horaria,descricao,num_alunos,fk_cod_departamento)                 
VALUES                                                               
    ('1','Raciocinio logico','200','coisas logicas','56','2'),
    ('2','Pscicologia','200','Cognitiva','30','4'),
    ('3','Eletronica digital','180','Eletrizante','30','4'),
    ('4','Programação em C','200','Estudar codigo C','21','5'),
    ('5','rico','210','fique rico','2','2'),
    ('6','Sociologia','120','adorar umas plantas ai','60','3'),
    ('7','preguiça','400','não fazer insert','5','5'),
    ('8','fuchico','200','fuchiqueiro de plantão','18','5'),
    ('9','jogos','150','criar jogos','23','5'),
    ('10','pexeiro','150','mentir historias','30','5'),
    ('11','Contabilidade','140','Estudar matematica','17','2'),
    ('12','minion','20','banana','10','5'),
    ('13','desistente','100','desistir','56','5'),
    ('14','Biologia','225','virar professor aos 20','15','4'),
    ('15','construtor','50','contruir','50','5'),
    ('16','turista','200','faltador de aula','30','5'),
    ('17','jogador caro','135','pegar muie','100','5'),
    ('18','twitero','170','falar besteirol','50','6'),
    ('19','lolzeiro','220','saia do prata','12','6'),
    ('20','Roubo','99','precisa ser presidente','9','3'),
    ('21','minecraft','100','jogar','100','6'),
    ('22','editor','90','editar coisas','20','6'),
    ('23','Java','175','fazer javas','32','6'),
    ('24','PHP','500','topzeira','25','6'),
    ('25','Presidente','111','Estudar as pedras','35','1'),
    ('26','cantor','100','voz boa','13','5'),
    ('27','DBA','293','Não fazer insert','200','6'),
    ('28','html','200','fazer sites','25','6'),
    ('29','Portugues','200','ler hqs','29','6'),
    ('30','final','90','terminar as coisas','37','6');


INSERT INTO professor                                                     
    (cod_professor,nome_professor, sobrenome_professor, status, fk_cod_departamento)                 
VALUES                                                               
    ('1','Mestre','kame','1','2'),
    ('2','mestre','ancião','1','1'),
    ('3','Raimundo','nonato','1','5'),
    ('4','professor','girafales','1','4'),
    ('5','luciano','lopes','1','1'),
    ('6','professor','carvalho','1','2'),
    ('7','Kakashi','Hatake','1','5'),
    ('8','gojo','satoru','0','3'),
    ('9','cleiton','rasta','0','4'),
    ('10','ribamar','vasco','0','5');


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
    ('10','10');
    

    
NSERT INTO professor_disciplina                                               
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
    ('2','2021-05-02','2022-02-11','2'),
    ('3','2021-07-03','2022-03-12','3'),
    ('4','2021-08-04','2022-04-13','4'),
    ('5','2021-09-05','2022-05-14','5'),
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
    ('16','2021-07-16','2022-07-23','16'),
    ('17','2021-12-17','2022-09-22','17'),
    ('18','2021-11-18','2022-01-17','18'),
    ('19','2021-11-19','2022-02-24','19'),
    ('20','2021-12-20','2022-07-29','20');
    
INSERT INTO disciplina_historico                                                     
    (fk_cod_disciplina, fk_cod_historico, nota, frequencia)                 
VALUES                                                               
    ('1','1','10','20'),
    ('2','2','5.0','19'),
    ('3','3','5.0','18'),
    ('4','4','1.0','17'),
    ('5','5','6.0','16'),
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
    ('16','16','9.9','5'),
    ('17','17','10','4'),
    ('18','18','5.4','3'),
    ('19','19','6.8','2'),
    ('20','20','7.9','1');