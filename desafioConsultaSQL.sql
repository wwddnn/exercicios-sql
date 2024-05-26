-- desafio consultas SQL

-- questão 1: nome do curso, número e data de início de cada turma do curso.
SELECT tb_curso.nome AS curso, tb_turma.numero AS turma , tb_turma.inicio AS inicio
FROM tb_curso
INNER JOIN tb_turma ON tb_curso.id = tb_turma.curso_id

-- questão 2: nome do curso, número da turma, nome e CPF dos alunos de cada curso e de cada turma. 
-- obs. os nomes das colunas devem ser curso, turma, aluno e cpf. 
SELECT tb_curso.nome AS curso, tb_turma.numero AS turma, tb_aluno.nome AS aluno, tb_aluno.cpf AS cpf
FROM tb_matricula
INNER JOIN tb_aluno ON tb_aluno.cpf = tb_matricula.aluno_id
INNER JOIN tb_turma ON tb_turma.id = tb_matricula.turma_id
INNER JOIN tb_curso ON tb_turma.curso_id = tb_curso.id

-- questão 3: data e nota de todas as avaliações, e o nome e a nota obtida por cada aluno em cada avaliação, e qual a porcentagem de nota obtida
-- em relação a nota da avaliação. 
-- obs. ordenar os resultados na ordem da avaliação mais recente para a mais antiga. 
-- obs. para cada avaliação o nome dos alunos deve estar em ordem crescente.
-- obs. a porcentagem deve ter duas casas decimais.
SELECT tb_avaliacao.data AS data, tb_avaliacao.nota AS nota, tb_aluno.nome AS nome, tb_resultado.nota_obtida AS nota_obtida,
ROUND((nota_obtida / nota * 100 ), 2) AS porcentagem
FROM tb_avaliacao
INNER JOIN tb_resultado ON tb_resultado.avaliacao_id = tb_avaliacao.id
INNER JOIN tb_aluno ON tb_aluno.cpf = tb_resultado.aluno_id
ORDER BY tb_avaliacao.data DESC, tb_aluno.nome ASC


-- questão 4: nome e nota total dos alunos da turma 10. 
-- obs. restringir a turma pelo número 10 e não pelo id 2.

SELECT nome, SUM(tb_resultado.nota_obtida) AS total
FROM tb_avaliacao
INNER JOIN tb_turma ON tb_turma.id = tb_avaliacao.turma_id
INNER JOIN tb_resultado ON tb_resultado.avaliacao_id = tb_avaliacao.id
INNER JOIN tb_aluno ON tb_resultado.aluno_id = tb_aluno.cpf
WHERE tb_turma.numero = 10
GROUP BY tb_aluno.nome




