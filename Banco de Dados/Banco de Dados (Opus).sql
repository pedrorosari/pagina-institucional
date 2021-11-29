use Opus;

select * from Usuario;


CREATE TABLE usuario (
	id INT PRIMARY KEY auto_increment,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
	cidade VARCHAR(50),
    idade int
);

select * from usuario;

CREATE TABLE Curso (
idCurso int primary key auto_increment,
NomeCurso varchar (30),
Diploma char(1),
check (Diploma = "S" or Diploma = "N")
);

insert into Curso values
(null,"Finanças","S"),
(null,"Independência","S"),
(null,"Organização","N");

CREATE TABLE Matrícula (
idMatricula int primary key  auto_increment,
Fk_Curso int,
foreign key (Fk_Curso) references Curso (idCurso),
Fk_usuario int,
foreign key (Fk_usuario) references Usuario (id),
DataMatricula date
);

DESC USUARIO;
insert into Usuario values
(null,'Leo','Leo@gmail.com','123','RJ',70); 