create database resiliadata;
use resiliadata;

create table resilia(
codresilia int not null primary key auto_increment);

create table empresaparceira(
codempresa int not null primary key auto_increment,
razaosocial varchar(40) not null,
cnpj varchar(20) not null,
telefone varchar(20) not null,
email varchar(40) not null,
endereco varchar(60) not null);

create table departamento(
coddep int not null auto_increment primary key, 
area varchar(20) not null,
tecnologia1 varchar(20) not null,
tecnologia2 varchar(20) not null,
tecnologia3 varchar(20) not null,
email varchar(40) not null,
codempresa int not null);

create table colaborador(
codcolaborador int not null auto_increment primary key,
nome varchar(30) not null,
cpf varchar(20) not null,
datanascimento date not null,
email varchar(20) not null,
telefone varchar(20) not null,
coddep int not null);

ALTER TABLE departamento ADD CONSTRAINT depemp FOREIGN KEY (codempresa) REFERENCES empresaparceira (codempresa);
ALTER TABLE colaborador ADD CONSTRAINT dep FOREIGN KEY (coddep) REFERENCES departamento (coddep);

INSERT INTO empresaparceira (razaosocial,cnpj,telefone,email,endereco) values ('INTEGRA LTDA','00.394.460/0058-87','(21)9889-2000','integraprojetos@itg.com.br','Av. Presidente Vargas, 560'),('Grupo Apollo','80.987.890/5346-02','(21)99213-0776','ga_cedoc@grupollo.com','Rua Machado de Assis, 12');
INSERT INTO departamento (area,tecnologia1,tecnologia2,tecnologia3,email,codempresa) values ('ADM REDES','Cloud Services','IoT','Java','ti@integra.com',1),('Marketing','IA','CRM','','marketing@integra.com',1),('Data Analystics','Python','SQL','Power BI','sistemas@grupollo.com',2);
INSERT INTO colaborador (nome,cpf,datanascimento,email,telefone,coddep,funcao) VALUES ('Amanda Beatriz Souza','198.765.090-55',1995/05/30,'amandarjbia@gmail.com','(21)99876-4544',2,'Consultora de Marketing'),('Marcos Henrique Oliveira','187.663.900-41',2002/07/10,'marcossamp@gmail.com','(21)99786-1313',1,'Desenvolvedor Full Stack JR'),('Ana Beatriz Fernandes','887.029.847-00',1981/02/10,'beatrizmengao@hotmail.com','(22)99089-1099',1,'Desenvolvedor Senior'),('Maria Luiza Santos','766.900.087-11',1991/12/30,'malusa91@hotmail.com','(21)99989-0020',3,'ADM Banco de Dados'),('Sergio Luiz Amaro','112.223.445-60',1972/05/16,'sergioluiz@grupollo.com','(21)99878-1000',3,'Gestor de TI'),('Sabrina Menezes Silva','776.897.990-00',1996/09/20,'sabrina_menezes@gmail.com','(24)99899-7123',1,'Estágio de administração de redes');


