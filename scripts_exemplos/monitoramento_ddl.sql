/*markdown
# Comandos DDL
*/

/*markdown
## Criando um Schema
*/

create schema dbo;

/*markdown
## Comandos CREATE TABLE
*/

create table if not exists dbo.cidade (
    id int generated always as identity,
    nome varchar(150) not null,
    estado char(2) not null,
    constraint cidade_pk primary key(id),
    constraint cidade_un unique(nome, estado)
);

create table if not exists dbo.localizacao (
    latitude real not null,
    longitude real not null,
    id_cidade int not null,
    constraint localizacao_pk primary key(latitude, longitude),
    constraint localizacao_cidade_un unique(id_cidade),
    constraint localizacao_cidade_fk foreign key (id_cidade) references dbo.cidade(id)
);

create table if not exists dbo.central (
    codigo char(5) not null,
    constraint central_pk primary key(codigo)
);

create table if not exists dbo.tempo (
    id int generated always as identity,
    tempo_min int not null,
    tempo_max int not null,
    precip_pluviom real default(0) null,
    dh_coleta timestamp not null, 
    id_cidade int not null,
    constraint tempo_pk primary key(id),
    constraint tempo_un unique(dh_coleta, id_cidade),
    constraint tempo_cidade_fk foreign key (id_cidade) references dbo.cidade(id)
);

create table dbo.tempocentral (
    id_tempo int not null,
    codigo_central char(5) not null,
    constraint tempocentral_pk primary key(id_tempo, codigo_central)
);