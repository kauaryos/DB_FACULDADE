USE db_faculdade;

SELECT
    a.RA,
    CONCAT(a.nome_aluno, ' ', a.sobrenome_aluno) AS nome,
    c.nome_curso,
    t.periodo
FROM
    aluno a
    JOIN curso c ON a.fk_cod_curso = c.cod_curso
    JOIN turma t ON a.fk_cod_turma = t.cod_turma
ORDER BY
    nome_aluno;

SELECT
    a.ra,
    a.nome_aluno,
    a.sobrenome_aluno,
    d.nome_disciplina,
    dh.nota
FROM
    aluno a
    JOIN aluno_disciplina ad ON ad.fk_RA = a.RA
    JOIN disciplina d ON d.cod_disciplina = ad.fk_cod_disciplina
    JOIN historico h ON a.RA = h.fk_RA
    JOIN disciplina_historico dh ON dh.fk_cod_disciplina = d.cod_disciplina
WHERE
    a.RA = '1'
ORDER BY
    dh.nota DESC;

SELECT
    CONCAT(p.nome_professor, ' ', p.sobrenome_professor) AS nome,
    d.nome_disciplina,
    d.carga_horaria
FROM
    professor p
    JOIN professor_disciplina pd ON pd.fk_cod_professor = p.cod_professor
    JOIN disciplina d ON pd.fk_cod_disciplina = d.cod_disciplina;

SELECT
    a.RA,
    a.nome_aluno,
    a.sobrenome_aluno,
    a.CPF,
    a.status,
    a.sexo,
    a.nome_pai,
    a.nome_mae,
    a.email,
    a.whatsapp,
    e.nome_rua,
    e.numero_rua,
    e.complemento,
    e.CEP,
    tt.tipo_telefone,
    t.numero_telefone
FROM
    aluno a
    JOIN endereco e ON a.fk_cod_endereco = e.cod_endereco
    JOIN tipo_logradouro tl ON e.fk_cod_tipo_logradouro = tl.cod_tipo_logradouro
    JOIN telefone_aluno ta ON ta.fk_RA = a.RA
    JOIN telefone t ON ta.fk_cod_telefone = t.cod_telefone
    JOIN tipo_telefone tt ON t.fk_cod_tipo_telefone = tt.cod_tipo_telefone
ORDER BY
    a.nome_aluno;

SELECT
    d.nome_disciplina,
    dep.nome_departamento
FROM
    disciplina d
    JOIN departamento dep ON d.fk_cod_departamento = dep.cod_departamento
    JOIN curso_disciplina cd ON cd.fk_cod_disciplina = d.cod_disciplina
    JOIN curso c ON cd.fk_cod_curso = c.cod_curso
    JOIN professor_disciplina pd ON pd.fk_cod_disciplina = d.cod_disciplina
    JOIN professor p ON pd.fk_cod_professor = p.cod_professor
ORDER BY
    d.nome_disciplina;