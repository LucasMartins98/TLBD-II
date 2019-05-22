CREATE TABLE alunos
(RM INT NOT NULL,
NOME VARCHAR(40) NOT NULL,
CURSO TINYINT NOT NULL,
MODULO TINYINT NOT NULL,
STATUS CHAR(1) NOT NULL)
GO
ALTER TABLE alunos ADD CONSTRAINT alunos_pk PRIMARY KEY (RM)
GO
CREATE TABLE cursos
(
CODIGO TINYINT NOT NULL,
DESCRICAO VARCHAR(15) NOT NULL
)
GO
ALTER TABLE cursos ADD CONSTRAINT cursos_pk PRIMARY KEY (CODIGO)
GO
CREATE TABLE materias
(
CODIGO INT NOT NULL,
DESCRICAO VARCHAR(25) NOT NULL,
SIGLA VARCHAR(10) NOT NULL,
CURSO TINYINT NOT NULL
)
GO
ALTER TABLE materias ADD CONSTRAINT materias_pk PRIMARY KEY (CODIGO)
GO
CREATE TABLE notas
(DATA SMALLDATETIME NOT NULL,
MATERIA INT NOT NULL,
RM INT NOT NULL,
MENCAO INT NOT NULL
)
GO
ALTER TABLE notas ADD CONSTRAINT notas_pk PRIMARY KEY (DATA,MATERIA,RM)
GO
INSERT alunos VALUES ( 1,'ALUNO 1' ,1,1,'A')
INSERT alunos VALUES ( 2,'ALUNO 2' ,1,1,'A')
INSERT alunos VALUES ( 3,'ALUNO 3' ,1,1,'A')
INSERT alunos VALUES ( 4,'ALUNO 4' ,1,1,'A')
INSERT alunos VALUES ( 5,'ALUNO 5' ,1,1,'I')
INSERT alunos VALUES ( 6,'ALUNO 6' ,2,1,'I')
INSERT alunos VALUES ( 7,'ALUNO 7' ,2,1,'I')
INSERT alunos VALUES ( 8,'ALUNO 8' ,2,1,'I')
INSERT alunos VALUES ( 9,'ALUNO 9' ,2,1,'I')
INSERT alunos VALUES (10,'ALUNO 10',2,1,'I')
GO
INSERT cursos VALUES (1,'INFORMATICA')
INSERT cursos VALUES (2,'ADMINISTRACAO')
INSERT cursos VALUES (3,'MECANICA')
INSERT cursos VALUES (5,'ELETRONICA')
GO
INSERT materias VALUES (11,'BANCO DE DADOS','TLBDI',1)
INSERT materias VALUES (12,'ANALISE DE SISTEMAS','AS',1)
INSERT materias VALUES (13,'LOGICA DE PROGRAMACAO','LP',1)
INSERT materias VALUES (14,'LINGUAGEM TÉCNICA','LTT',1)
INSERT materias VALUES (15,'TLBD','TLBDI',1)
INSERT materias VALUES (21,'LINGUAGEM TÉCNICA','LTT',2)
INSERT materias VALUES (22,'MATEMATICA FINANCEIRA','MF',2)
INSERT materias VALUES (23,'CONTABILIDADE','CONTABIL',2)
INSERT materias VALUES (24,'TEORIA DA ADMINSTRACAO','TGA',2)
INSERT materias VALUES (25,'NOCOES DE DIREITO','NDIR',2)
GO
insert notas VALUES ('2018-04-02',11,1,99)
insert notas VALUES ('2018-04-02',11,2,65)
insert notas VALUES ('2018-04-02',11,3,54)
insert notas VALUES ('2018-04-02',11,4,90)
insert notas VALUES ('2018-04-02',11,5,00)
insert notas VALUES ('2018-05-06',11,1,90)
insert notas VALUES ('2018-05-06',11,2,50)
insert notas VALUES ('2018-05-06',11,3,49)
insert notas VALUES ('2018-05-06',11,4,78)
insert notas VALUES ('2018-05-06',11,5,10)
insert notas VALUES ('2018-06-07',11,1,99)
insert notas VALUES ('2018-06-07',11,2,65)
insert notas VALUES ('2018-06-07',11,3,54)
insert notas VALUES ('2018-06-07',11,4,90)
insert notas VALUES ('2018-06-07',11,5,00)
insert notas VALUES ('2018-07-22',11,1,99)
insert notas VALUES ('2018-07-22',11,2,65)
insert notas VALUES ('2018-07-22',11,3,54)
insert notas VALUES ('2018-07-22',11,4,90)
insert notas VALUES ('2018-07-22',11,5,00)
insert notas VALUES ('2018-04-02',12,1,99)
insert notas VALUES ('2018-04-02',12,2,65)
insert notas VALUES ('2018-04-02',12,3,54)
insert notas VALUES ('2018-04-02',12,4,90)
insert notas VALUES ('2018-04-02',12,5,00)
insert notas VALUES ('2018-05-06',12,1,90)
insert notas VALUES ('2018-05-06',12,2,50)
insert notas VALUES ('2018-05-06',12,3,49)
insert notas VALUES ('2018-05-06',12,4,78)
insert notas VALUES ('2018-05-06',12,5,10)
insert notas VALUES ('2018-06-07',12,1,99)
insert notas VALUES ('2018-06-07',12,2,65)
insert notas VALUES ('2018-06-07',12,3,54)
insert notas VALUES ('2018-06-07',12,4,90)
insert notas VALUES ('2018-06-07',12,5,00)
insert notas VALUES ('2018-07-22',12,1,99)
insert notas VALUES ('2018-07-22',12,2,65)
insert notas VALUES ('2018-07-22',12,3,54)
insert notas VALUES ('2018-07-22',12,4,90)
insert notas VALUES ('2018-07-22',12,5,00)
insert notas VALUES ('2018-04-02',13,1,99)
insert notas VALUES ('2018-04-02',13,2,65)
insert notas VALUES ('2018-04-02',13,3,54)
insert notas VALUES ('2018-04-02',13,4,90)
insert notas VALUES ('2018-04-02',13,5,00)
insert notas VALUES ('2018-05-06',13,1,90)
insert notas VALUES ('2018-05-06',13,2,50)
insert notas VALUES ('2018-05-06',13,3,49)
insert notas VALUES ('2018-05-06',13,4,78)
insert notas VALUES ('2018-05-06',13,5,10)
insert notas VALUES ('2018-06-07',13,1,99)
insert notas VALUES ('2018-06-07',13,2,65)
insert notas VALUES ('2018-06-07',13,3,54)
insert notas VALUES ('2018-06-07',13,4,90)
insert notas VALUES ('2018-06-07',13,5,00)
insert notas VALUES ('2018-07-22',13,1,99)
insert notas VALUES ('2018-07-22',13,2,65)
insert notas VALUES ('2018-07-22',13,3,54)
insert notas VALUES ('2018-07-22',13,4,90)
insert notas VALUES ('2018-07-22',13,5,00)
insert notas VALUES ('2018-04-02',14,1,99)
insert notas VALUES ('2018-04-02',14,2,65)
insert notas VALUES ('2018-04-02',14,3,54)
insert notas VALUES ('2018-04-02',14,4,90)
insert notas VALUES ('2018-04-02',14,5,00)
insert notas VALUES ('2018-05-06',14,1,90)
insert notas VALUES ('2018-05-06',14,2,50)
insert notas VALUES ('2018-05-06',14,3,49)
insert notas VALUES ('2018-05-06',14,4,78)
insert notas VALUES ('2018-05-06',14,5,10)
insert notas VALUES ('2018-06-07',14,1,99)
insert notas VALUES ('2018-06-07',14,2,65)
insert notas VALUES ('2018-06-07',14,3,54)
insert notas VALUES ('2018-06-07',14,4,90)
insert notas VALUES ('2018-06-07',14,5,00)
insert notas VALUES ('2018-07-22',14,1,99)
insert notas VALUES ('2018-07-22',14,2,65)
insert notas VALUES ('2018-07-22',14,3,54)
insert notas VALUES ('2018-07-22',14,4,90)
insert notas VALUES ('2018-07-22',14,5,00)
insert notas VALUES ('2018-04-02',15,1,95)
insert notas VALUES ('2018-04-02',15,2,64)
insert notas VALUES ('2018-04-02',15,3,58)
insert notas VALUES ('2018-04-02',15,4,78)
insert notas VALUES ('2018-04-02',15,5,10)
insert notas VALUES ('2018-05-06',15,1,98)
insert notas VALUES ('2018-05-06',15,2,62)
insert notas VALUES ('2018-05-06',15,3,54)
insert notas VALUES ('2018-05-06',15,4,47)
insert notas VALUES ('2018-05-06',15,5,79)
insert notas VALUES ('2018-06-07',15,1,96)
insert notas VALUES ('2018-06-07',15,2,95)
insert notas VALUES ('2018-06-07',15,3,93)
insert notas VALUES ('2018-06-07',15,4,91)
insert notas VALUES ('2018-06-07',15,5,30)
insert notas VALUES ('2018-07-22',15,1,25)
insert notas VALUES ('2018-07-22',15,2,75)
insert notas VALUES ('2018-07-22',15,3,65)
insert notas VALUES ('2018-07-22',15,4,90)
insert notas VALUES ('2018-07-22',15,5,30)
GO
CREATE TABLE progressao
(RM INT NOT NULL,
DATA SMALLDATETIME NOT NULL,
MATERIA INT NOT NULL,
MEDIA FLOAT NOT NULL,
SITUACAO VARCHAR(25) NOT NULL
)
ALTER TABLE progressao ADD CONSTRAINT progressao_pk PRIMARY KEY (RM,DATA,MATERIA)
GO



declare @RM_ALUNO int, @NOME_ALUNO varchar(40)
declare ALUNO_ID cursor for select RM, NOME from alunos
/* where <condiçao>*/

Open ALUNO_ID
fetch next from ALUNO_ID into @RM_ALUNO, @NOME_ALUNO
while @@fetch_status = 0
begin
	SELECT @RM_ALUNO  'RM DOS ALUNOS'
	fetch next from ALUNO_ID into @RM_ALUNO, @NOME_ALUNO
end
close ALUNO_ID
deallocate ALUNO_ID



/* rm aluno e a medias dos alunos de informatica */


declare @RM int, @NOME varchar(40),@MEDIA varchar(40), @CURSO TINYINT
declare CURSOR_EXE cursor for select A.RM, A.NOME, M.DESCRICAO, AVG(MENCAO)
from alunos A
inner join cursos C on C.CODIGO = A.CURSO
inner join notas N on N.RM = A.RM
inner join materias M on M.CODIGO = N.MATERIA AND M.CURSO = A.CURSO
WHERE C.DESCRICAO = 'INFORMATICA'
GROUP BY A.RM, A.NOME, M.DESCRICAO
ORDER BY A.RM, A.NOME, M.DESCRICAO

Open CURSOR_EXE
fetch next from CURSOR_EXE into @RM, @NOME, @MEDIA, @CURSO
while @@fetch_status = 0
begin
	SELECT @RM, @NOME, @MEDIA, @CURSO
	fetch next from CURSOR_EXE into @RM, @NOME, @MEDIA, @CURSO
end
close CURSOR_EXE
deallocate CURSOR_EXE

