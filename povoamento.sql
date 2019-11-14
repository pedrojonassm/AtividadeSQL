use semnome;

insert into Empregado (matricula, nome, salario, supervisor, depto) values (1, "1", 500, 1, null);
insert into Departamento (coddep, nome, gerente, dataini) values(1,"dep1", 1, "14/11/2019"),(2,"dep2", null, "14/11/2019"),(3,"dep3", null, "14/11/2019"),(4,"dep4", null, "14/11/2019"),(5,"dep5", null, "14/11/2019");
insert into Empregado (nome, salario, supervisor, depto) values ("2", 2000, 1, 2), ("3", 2001, 1, 3), ("4", 2001, 1, 4), ("5", 2001, 1, 5);
update semnome.departamento set gerente = 18 where nome = "dep2";
update semnome.departamento set gerente = 19 where nome = "dep3";
update semnome.departamento set gerente = 20 where nome = "dep4";
update semnome.departamento set gerente = 21 where nome = "dep5";
insert into projeto(nome, local, depart) values ("1", "casa", 1), ("2", "home", 2), ("3", "minha casa", 3), ("4", "my home", 4), ("5", "qualquer lugar", 5);
insert into alocacao (matric, codigop, horas) values (6, 7, 8), (9, 10, 11), (12, 13, 14), (15, 16, 17), (18, 19, 20);
insert into Dependente(matricula, nome, sexo) values (22, "João", "M"), (23, "Jão", "M"), (24, "Maria", "F"), (25, "Jonny", "M"), (26, "Elisabeth", "F");

