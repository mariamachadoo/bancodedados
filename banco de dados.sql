create database ativolei;

create table pessoa(
id_pessoa int primary key auto_increment,
nome varchar(100) not null
);


create table jogador(
id_jogador int primary key auto_increment,
id_pessoa int not null,
foreign key (id_pessoa) references pessoa (id_pessoa) 
);

create table equipe(
id_equipe int primary key auto_increment ,
descricao varchar(100) not null
);

create table composicaoTime(
id_composicaoTime int primary key auto_increment,
id_equipe int not null,
id_jogador int not null,
foreign key (id_jogador) references jogador (id_jogador),
foreign key (id_equipe) references equipe (id_equipe)
);

create table jogo(
id_jogo int auto_increment primary key,
descrição varchar(100) not null
);

create table composicaoJogo(
id_composicaoJogo int auto_increment primary key,
id_jogo int not null,
idEquipe1 int not null,
idEquipe2 int not null,
idEquipe3 int ,
foreign key (id_jogo) references jogo (id_jogo),
foreign key (idEquipe1) references equipe (id_equipe),
foreign key (idEquipe2) references equipe (id_equipe),
foreign key (idEquipe3) references equipe (id_equipe)
);

create table pontuaçao(
id_pontuacao int primary key auto_increment,
id_composicaoJogo int not null,
id_jogador int not null,
foreign key (id_composicaoJogo) references composicaoJogo (id_composicaoJogo),
foreign key (id_jogador) references jogador (id_jogador)
);

insert into pessoa (nome)
values
("ANDRÉ"),
("WELLINGTON"),
("BEATRIZ"),
("DANIEL"),
("DHARANA"),
("EDUARDA"),
("EDUARDO"),
("GABRIEL"),
("GABRIELLA"),
("GUILHERME"),
("GUSTAVO FREITAS"),
("GUSTAVO NAVES"),
("ISABELLA"),
("JOABE"),
("JOÃO CARLOS"),
("JOÃO HELIO"),
("JOÃO VICTOR"),
("KAIQUE"),
("LORENA"),
("LUCAS"),
("LUIZA"),
("MARIA CLARA CORRÊA"),
("MARIA CLARA MACHADO"),
("MARIA EDUARDA DE BARROS"),
("MARIA EDUARDA SANTONI"),
("MARIA JULIA"),
("MARYANA"),
("NEWTON"),
("OTAVIO"),
("PAULO"),
("PEDRO"),
("SOPHIA"),
("THARYNE"),
("YAGO");

insert into jogador(id_pessoa)
values
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34);

insert into equipe (descricao)
value
("Timão do Freitas"),
("Equipe do JV"),
("Naves Volei");

insert into composicaoTime (id_equipe, id_jogador)
values
(1,11),
(1,20),
(1,34),
(1,21),
(1,15),
(1,27),
(1,26),
(1,18),
(1,9),
(1,24),
(1,1);
       
insert into composicaoTime (id_equipe, id_jogador)
values
(2,17),
(2,14),
(2,8),
(2,5),
(2,6),
(2,28),
(2,7),
(2,23),
(2,31),
(2,13),
(2,33);

insert into composicaoTime (id_equipe, id_jogador) 
values 
(3,12),
(3,25),
(3,30), 
(3,32),
(3,10),
(3,29),
(3,16),
(3,4), 
(3,3),
(3,22),
(3,2);

insert into jogo (descrição)
values 
("1o Jogo"),
("2o Jogo"),
("3o Jogo"),
("4o Jogo");

insert into composicaoJogo
	(id_jogo,idEquipe1,idEquipe2,idEquipe3)
values
	(1,1,2,null),
    (2,2,3,null),
    (3,1,3,null),
    (4,1,2,3);
    
insert into
	pontuaçao
    (id_composicaoJogo, id_jogador)
values 
-- lançamento jogo 1
    -- pontos time 1
	(1,21),
    (1,26),
    (1,15),
    (1,26),
    (1,26),
	(1,21),
	(1,15),
	(1,21),
	(1,26),
	(1,24),
	(1,26),
	(1,11),
	(1,27),
	(1,26),
	(1,9),
	(1,21),
	(1,15),
	(1,20),
	(1,9),
	(1,11),
-- Pontos do time 2
	(1,33),
	(1,7),
	(1,6),
	(1,14),
	(1,31),
	(1,6),
	(1,8),
	(1,7),
	(1,31),
	(1,33),
	(1,33),
	(1,33),
	(1,7),
	(1,14),
	(1,31),
	(1,17),
	(1,31),
	(1,17),
	(1,14),
	(1,31),
	(1,8),
	(1,8),
	(1,17),
	(1,7),
-- lançamento do segundo jogo 
	-- lançamento do time 2 
	(2,6),
	(2,7),
    (2,17),
    (2,7),
    (2,23),
    (2,17),
    (2,28),
    (2,17),
    (2,7),
    (2,14),
    (2,8),
    (2,8),
    (2,28),
    (2,13),
    (2,7),
    (2,7),
    (2,8),
    (2,23),
    (2,7),
    (2,14),
    -- pontos time 3 
    (2,32),
    (2,32),
    (2,10),
    (2,4),
    (2,25),
    (2,2),
    (2,2),
    (2,3),
    (2,22),
    (2,29),
    (2,25),
    (2,16),
    (2,22),
    (2,29),
    (2,25),
    (2,22),
    (2,22),
    (2,2),
    (2,4),
    (2,10),
    (2,22),
    (2,3),
    (2,25),
    (2,3),
    (2,29),
    (2,16),
    (2,25),
    (2,4),
    (2,3),
    (2,12),
-- lancamento jogo 3
    -- time 1
    (3,20),
    (3,1),
    (3,11),
    (3,27),
    (3,24),
    (3,1),
    (3,18),
    (3,34),
    (3,27),
    (3,20),
    (3,1),
    (3,27),
    (3,1),
    (3,34),
    (3,20),
    (3,9),
    (3,9),
    (3,20),
    (3,1),
    (3,20),
    (3,27),
    (3,1),
    (3,34),
    (3,27),
    (3,20),
    (3,1),
    (3,20),
    (3,34),
    (3,27),
    -- time 3 
    (3,2),
    (3,16),
    (3,16),
    (3,2),
    (3,22),
    (3,30),
    (3,29),
    (3,2),
    (3,22),
    (3,30),
    (3,4),
    (3,25),
    (3,29),
    (3,12),
    (3,16),
    (3,4),
    (3,29),
    (3,30),
    (3,22),
    (3,10),
-- lancamento jogo 4 
	-- time 1 
    (4,11),
    (4,11),
    (4,11),
    (4,11),
    (4,22),
    (4,22),
    (4,22),
    (4,22),
    (4,4),
    (4,4),
    (4,4),
    (4,4),
    (4,4),
    (4,17),
    (4,17),
    (4,17),
    (4,17),
    (4,16),
    (4,16),
    (4,16),
    (4,16),
    (4,18),
    (4,15),
    (4,15),
    (4,15),
    (4,14),
	(4,23),
    (4,21),
    (4,21),
    (4,21),
    (4,21),
    (4,27),
    (4,26),
    (4,26),
    (4,30),
    (4,30),    
    (4,30),
    (4,30),
    (4,25),
    (4,25),
    (4,25),
    (4,25),
    (4,20),
    (4,20),
    (4,34),
    (4,34),
    (4,34),
    (4,34),
    (4,6),
    (4,6),
    (4,8),
    (4,29),
    (4,3),
    (4,12),
    (4,7);
    
SELECT 
      e.idequipe AS Equipe,
    e.Descricao AS nomeEquipe,
    p.nome AS nomeJogador
FROM 
    equipe e
INNER JOIN 
    ComposicaoTime ct ON e.idEquipe = ct.idEquipe
INNER JOIN 
    Jogador j ON ct.idjogador = j.idjogador
INNER JOIN 
    pessoa p ON j.idpessoa = p.idPessoa
where 
	e.idEquipe = 1;

select e1.descricao as Equipe1, e2.descricao as Equipe2, e3.descricao as Equipe3 
from composicaoJogo CJ
inner join equipe E
on CJ.id_equipe1 = E.id_equipe
left join equipe e1 on e1.id_aquipe = CJ.id_equipe1
left join equipe e1 on e2.id_aquipe = CJ.id_equipe2
left join equipe e1 on e3.id_aquipe = CJ.id_equipe3
    

    
