-- Criação de Tabelas
CREATE DATABASE IF NOT EXISTS db_faculdade DEFAULT CHARSET utf8mb4 DEFAULT COLLATE utf8mb4_0900_ai_ci;

USE db_faculdade;

CREATE TABLE IF NOT EXISTS tipo_logradouro (
    cod_tipo_logradouro INTEGER(4) AUTO_INCREMENT,
    tipo_logradouro CHAR(11),
    PRIMARY KEY (cod_tipo_logradouro)
);

CREATE TABLE IF NOT EXISTS tipo_telefone (
    cod_tipo_telefone INT(4) AUTO_INCREMENT,
    tipo_telefone CHAR(8),
    PRIMARY KEY (cod_tipo_telefone)
);

CREATE TABLE IF NOT EXISTS departamento (
    cod_departamento INT(15) AUTO_INCREMENT,
    nome_departamento CHAR(20) NOT NULL,
    PRIMARY KEY (cod_departamento)
);

CREATE TABLE IF NOT EXISTS professor (
    cod_professor INT(15) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    fk_cod_departamento INT(15),
    nome_professor CHAR(20) NOT NULL,
    sobrenome_professor CHAR(50) NOT NULL,
    status BOOLEAN,
    FOREIGN KEY (fk_cod_departamento) REFERENCES departamento (cod_departamento)
);

CREATE TABLE IF NOT EXISTS disciplina (
    cod_disciplina INTEGER(4) PRIMARY KEY AUTO_INCREMENT,
    nome_disciplina CHAR(20),
    carga_horaria INTEGER(4) NOT NULL,
    descricao CHAR(50),
    num_alunos INTEGER(4) NOT NULL,
    fk_cod_departamento INTEGER(4) NOT NULL,
    FOREIGN KEY (fk_cod_departamento) REFERENCES departamento (cod_departamento)
);

CREATE TABLE IF NOT EXISTS professor_disciplina (
    fk_cod_professor INT(4),
    fk_cod_disciplina INT(4),
    PRIMARY KEY (fk_cod_professor, fk_cod_disciplina),
    FOREIGN KEY (fk_cod_professor) REFERENCES professor (cod_professor),
    FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina)
);

CREATE TABLE IF NOT EXISTS curso (
    cod_curso INT(4) PRIMARY KEY AUTO_INCREMENT,
    fk_cod_departamento INT(4),
    nome_curso CHAR(20),
    FOREIGN KEY (fk_cod_departamento) REFERENCES departamento (cod_departamento)
);

CREATE TABLE IF NOT EXISTS curso_disciplina (
    fk_cod_curso INT(4),
    fk_cod_disciplina INT(4),
    PRIMARY KEY (fk_cod_curso, fk_cod_disciplina),
    FOREIGN KEY (fk_cod_curso) REFERENCES curso (cod_curso),
    FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina)
);

CREATE TABLE IF NOT EXISTS turma (
    cod_turma INT(4) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    periodo CHAR(8),
    numero_aluno CHAR(4),
    dt_inicio DATE,
    dt_fim DATE,
    fk_cod_curso INT(4),
    FOREIGN KEY (fk_cod_curso) REFERENCES curso (cod_curso)
);

CREATE TABLE IF NOT EXISTS endereco (
    cod_endereco INT(4) PRIMARY KEY AUTO_INCREMENT,
    nome_rua char(50) NOT NULL,
    numero_rua INT(4) NOT NULL,
    CEP CHAR(8) NOT NULL,
    complemento CHAR(20),
    fk_cod_tipo_logradouro INT(4) NOT NULL,
    FOREIGN KEY (fk_cod_tipo_logradouro) REFERENCES tipo_logradouro (cod_tipo_logradouro)
);

CREATE TABLE IF NOT EXISTS aluno (
    RA INT(4) PRIMARY KEY AUTO_INCREMENT,
    nome_aluno CHAR(20),
    sobrenome_aluno CHAR(20),
    CPF INT(11),
    whatsapp CHAR(20),
    status BOOLEAN,
    sexo CHAR(1),
    nome_pai CHAR(50),
    nome_mae CHAR(50),
    email CHAR(50),
    fk_cod_curso INT(4),
    fk_cod_turma INT(4),
    fk_cod_endereco INT(4),
    FOREIGN KEY (fk_cod_turma) REFERENCES turma (cod_turma),
    FOREIGN KEY (fk_cod_curso) REFERENCES curso (cod_curso),
    FOREIGN KEY (fk_cod_endereco) REFERENCES endereco (cod_endereco)
);

CREATE TABLE IF NOT EXISTS aluno_disciplina (
    fk_RA INT(4),
    fk_cod_disciplina INT(4),
    PRIMARY KEY (fk_RA, fk_cod_disciplina),
    FOREIGN KEY (fk_RA) REFERENCES aluno (RA),
    FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina)
);

CREATE TABLE IF NOT EXISTS telefone (
    cod_telefone INTEGER(4) NOT NULL AUTO_INCREMENT,
    numero_telefone CHAR(20) NOT NULL,
    fk_cod_tipo_telefone INTEGER(4),
    PRIMARY KEY (cod_telefone),
    FOREIGN KEY (fk_cod_tipo_telefone) REFERENCES tipo_telefone (cod_tipo_telefone)
);

CREATE TABLE IF NOT EXISTS telefone_aluno (
    fk_RA INT(4),
    fk_cod_telefone INT(4),
    PRIMARY KEY (fk_RA, fk_cod_telefone),
    FOREIGN KEY (fk_RA) REFERENCES aluno (RA),
    FOREIGN KEY (fk_cod_telefone) REFERENCES telefone (cod_telefone)
);

CREATE TABLE IF NOT EXISTS historico (
    cod_historico INT(4) PRIMARY KEY AUTO_INCREMENT,
    dt_inicio DATE,
    dt_fim DATE,
    fk_RA INT(4) NOT NULL,
    FOREIGN KEY (fk_RA) REFERENCES aluno (RA)
);

CREATE TABLE IF NOT EXISTS disciplina_historico (
    fk_cod_disciplina INT(4),
    fk_cod_historico INT(4),
    nota DECIMAL(5, 2),
    frequencia INT(3),
    PRIMARY KEY (fk_cod_disciplina, fk_cod_historico),
    FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina),
    FOREIGN KEY (fk_cod_historico) REFERENCES historico (cod_historico)
);
