﻿USE sitio_sepla
go
/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     07/11/2018 11:32:10 a. m.                    */
/*==============================================================
if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BALAZO') and o.name = 'FK_BALAZO_REFERENCE_NOTICIAS')
alter table BALAZO
   drop constraint FK_BALAZO_REFERENCE_NOTICIAS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FOTOS') and o.name = 'FK_FOTOS_REFERENCE_NOTICIAS')
alter table FOTOS
   drop constraint FK_FOTOS_REFERENCE_NOTICIAS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('INFORMES') and o.name = 'FK_INFORMES_REFERENCE_TIPO_INF')
alter table INFORMES
   drop constraint FK_INFORMES_REFERENCE_TIPO_INF
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('INFORMES') and o.name = 'FK_INFORMES_REFERENCE_USUARIO')
alter table INFORMES
   drop constraint FK_INFORMES_REFERENCE_USUARIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NOTICIAS') and o.name = 'FK_NOTICIAS_REFERENCE_USUARIO')
alter table NOTICIAS
   drop constraint FK_NOTICIAS_REFERENCE_USUARIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PLANTILLA') and o.name = 'FK_PLANTILL_REFERENCE_USUARIO')
alter table PLANTILLA
   drop constraint FK_PLANTILL_REFERENCE_USUARIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PLANTILLA') and o.name = 'FK_PLANTILL_REFERENCE_TIPO_PLA')
alter table PLANTILLA
   drop constraint FK_PLANTILL_REFERENCE_TIPO_PLA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SERVIDORESPUBLICOS') and o.name = 'FK_SERVIDOR_REFERENCE_USUARIO')
alter table SERVIDORESPUBLICOS
   drop constraint FK_SERVIDOR_REFERENCE_USUARIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SERVIDORESPUBLICOS') and o.name = 'FK_SERVIDORES_DEPTO')
alter table SERVIDORESPUBLICOS
   drop constraint FK_SERVIDORES_DEPTO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BALAZO')
            and   type = 'U')
   drop table BALAZO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DEPARTAMENTOS')
            and   type = 'U')
   drop table DEPARTAMENTOS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FOTOS')
            and   type = 'U')
   drop table FOTOS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('INFORMES')
            and   type = 'U')
   drop table INFORMES
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NOTICIAS')
            and   type = 'U')
   drop table NOTICIAS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PLANTILLA')
            and   type = 'U')
   drop table PLANTILLA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SERVIDORESPUBLICOS')
            and   type = 'U')
   drop table SERVIDORESPUBLICOS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TIPO_INFORME')
            and   type = 'U')
   drop table TIPO_INFORME
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TIPO_PLANTILLA')
            and   type = 'U')
   drop table TIPO_PLANTILLA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('USUARIO')
            and   type = 'U')
   drop table USUARIO
go

/*==============================================================*/
/* Table: ARCHIVOS                                              */
/*==============================================================*/
create table ARCHIVOS (
   IDARCHIVO            int                  identity,
   IDTIPO               int                  not null,
   NOMBREARCHIVO        nvarchar(300)        not null,
   ARCHIVO              varbinary(Max)       null,
   IMAGENARCHIVO        varbinary(Max)       null,
   constraint PK_ARCHIVOS primary key (IDARCHIVO)
)
go

/*==============================================================*/
/* Table: BALAZO                                                */
/*==============================================================*/
create table BALAZO (
   IDBALAZO             int                  identity,
   IDNOTICIA            int                  not null,
   DATOBALAZO           nvarchar(200)        null,
   constraint PK_BALAZO primary key (IDBALAZO)
)
go


/*==============================================================*/
/* Table: DEPARTAMENTOS                                         */
/*==============================================================*/
create table DEPARTAMENTOS (
   IDDEPARTAMENTO       int                  identity,
   NOMBREDEPTO          nvarchar(100)        not null,
   constraint PK_DEPARTAMENTOS primary key (IDDEPARTAMENTO)
)
go

/*==============================================================*/
/* Table: FOTOS                                                 */
/*==============================================================*/
create table FOTOS (
   IDNOTICIA            int                  not null,
   IDFOTO               int                  identity,
   FOTOGRAFIA           varbinary(MAX)       null,
   constraint PK_FOTOS primary key (IDFOTO)
)
go

/*==============================================================*/
/* Table: INFORMES                                              */
/*==============================================================*/
create table INFORMES (
   IDINFORME            int                  identity,
   IDTIPO               int                  null,
   IDUSUARIO            int                  null,
   NOMFREINFORME        nvarchar(50)         not null,
   ARCHIVOINFORME       varbinary(MAX)       not null,
   constraint PK_INFORMES primary key (IDINFORME)
)
go

/*==============================================================*/
/* Table: NOTICIAS                                              */
/*==============================================================*/
create table NOTICIAS (
   IDNOTICIA            int                  identity,
   IDUSUARIO            int                  null,
   TITULO               nvarchar(225)        not null,
   CONTENIDO            nvarchar(MAX)        not null,
   FECHACAPTURA         datetime2            not null,
   FECHAPUBLIC          date                 not null,
   LUGAR                nvarchar(150)        not null,
   PRIORIDAD            tinyint              not null,
   constraint PK_NOTICIAS primary key (IDNOTICIA)
)
go
/*==============================================================*/
/* Table: ORGANIGRAMA                                           */
/*==============================================================*/
create table ORGANIGRAMA (
   IDORGANIGRAMA        int                  identity,
   IDUSUARIO            int                  null,
   IMAGEN               varbinary(Max)       null,
   FECHACREACION        datetime2            null,
   ESTATUS              nvarchar(1)          null,
   constraint PK_ORGANIGRAMA primary key (IDORGANIGRAMA)
)
go
/*==============================================================*/
/* Table: PLANTILLA                                             */
/*==============================================================*/
create table PLANTILLA (
   IDPLANTILLA          int                  identity,
   IDUSUARIO            int                  null,
   IDTIPO               int                  null,
   TITULO               nvarchar(100)        not null,
   CONTENIDO            nvarchar(MAX)        not null,
   constraint PK_PLANTILLA primary key (IDPLANTILLA)
)
go

/*==============================================================*/
/* Table: SERVIDORESPUBLICOS                                    */
/*==============================================================*/
create table SERVIDORESPUBLICOS (
   IDSERVPUB            int                  identity,
   IDDEPARTAMENTO       int                  null,
   IDUSUARIO            int                  null,
   NOMBREPERSONAL       nvarchar(300)        not null,
   NOMBRAMIENTO         nvarchar(100)        not null,
   CONMUTADOR           nvarchar(20)         null,
   EXTENSION            nvarchar(3)          null,
   FOTOPERSONAL         varbinary(MAX)       null,
   CORREO               nvarchar(50)         null,
   CURRICULUM           varbinary(MAX)       null,
   ESTATUS              nchar(1)             null,
   FECHAREGISTRO        Datetime             null,
   constraint PK_SERVIDORESPUBLICOS primary key (IDSERVPUB)
)
go

/*==============================================================*/
/* Table: TIPO_INFORME                                          */
/*==============================================================*/
create table TIPO_INFORME (
   IDTIPO               int                  identity,
   TIPOINFORME          nvarchar(50)         not null,
   constraint PK_TIPO_INFORME primary key (IDTIPO)
)
go

/*==============================================================*/
/* Table: TIPO_PLANTILLA                                        */
/*==============================================================*/
create table TIPO_PLANTILLA (
   IDTIPO               int                  identity,
   TIPOPLANTILLA        nvarchar(50)         null,
   constraint PK_TIPO_PLANTILLA primary key (IDTIPO)
)
go

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
   IDUSUARIO            int                  identity,
   USUARIOINICIA        nvarchar(50)         not null,
   CONTRASENA           nvarchar(50)         not null,
   NOMBREUSUARIO        nvarchar(400)        not null,
   ROL                  tinyint              not null,
   ESTATUS              nvarchar(1)          null,
   FECHAREGISTRO        datetime2            not null,
   CORREO               nvarchar(50)         null,
   constraint PK_USUARIO primary key (IDUSUARIO)
)
go
alter table ARCHIVOS
   add constraint FK_ARCHIVOS_REFERENCE_TIPO_PLA foreign key (IDTIPO)
      references TIPO_PLANTILLA (IDTIPO)
go
alter table BALAZO
   add constraint FK_BALAZO_REFERENCE_NOTICIAS foreign key (IDNOTICIA)
      references NOTICIAS (IDNOTICIA)
go

alter table FOTOS
   add constraint FK_FOTOS_REFERENCE_NOTICIAS foreign key (IDNOTICIA)
      references NOTICIAS (IDNOTICIA)
go

alter table INFORMES
   add constraint FK_INFORMES_REFERENCE_TIPO_INF foreign key (IDTIPO)
      references TIPO_INFORME (IDTIPO)
go

alter table INFORMES
   add constraint FK_INFORMES_REFERENCE_USUARIO foreign key (IDUSUARIO)
      references USUARIO (IDUSUARIO)
go

alter table NOTICIAS
   add constraint FK_NOTICIAS_REFERENCE_USUARIO foreign key (IDUSUARIO)
      references USUARIO (IDUSUARIO)
go

alter table PLANTILLA
   add constraint FK_PLANTILL_REFERENCE_USUARIO foreign key (IDUSUARIO)
      references USUARIO (IDUSUARIO)
go

alter table PLANTILLA
   add constraint FK_PLANTILL_REFERENCE_TIPO_PLA foreign key (IDTIPO)
      references TIPO_PLANTILLA (IDTIPO)
go

alter table SERVIDORESPUBLICOS
   add constraint FK_SERVIDOR_REFERENCE_USUARIO foreign key (IDUSUARIO)
      references USUARIO (IDUSUARIO)
go

alter table SERVIDORESPUBLICOS
   add constraint FK_SERVIDORES_DEPTO foreign key (IDDEPARTAMENTO)
      references DEPARTAMENTOS (IDDEPARTAMENTO)
go
alter table ORGANIGRAMA
   add constraint FK_ORGANIGR_REFERENCE_USUARIO foreign key (IDUSUARIO)
      references USUARIO (IDUSUARIO)


*/


--insertar una plantilla nueva
INSERT INTO TIPO_PLANTILLA
VALUES ('NOMBRE DE LA PLANTILLA')

UPDATE TIPO_PLANTILLA
set TIPOPLANTILLA= 'CARTERA DE PROYECTOS SHCP'
WHERE IDTIPO = 12
--NOMBREPERSONAL
select * from SERVIDORESPUBLICOS

--borrar un servidor publico
delete from servidorespublicos
where IDSERVPUB=76

--MODIFICAR PARA QUE OMITA LOS ACENTOS ¡NO BORRAR!
ALTER TABLE NOTICIAS ALTER COLUMN TITULO nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AI
	/*Tipos: 
	1 = Capturista
	2 = Administrador

	Estatus
	A= Activo
	I= Inactivo
		conexion:

	Datos del Servidor de la Base de Datos
conexion: sqs.nayarit.gob.mx
usuario=usepladb 
PASSWORD='57wrTlp'
db name: sitio_sepla
	*/
	select * from usuario
	select tp.TIPOPLANTILLA, a.NOMBREARCHIVO, a.ARCHIVO
from archivos a, TIPO_PLANTILLA tp
where 
a.IDTIPO = tp.IDTIPO 

	SELECT * FROM TIPO_PLANTILLA
	update TIPO_PLANTILLA
	set TIPOPLANTILLA = 'PORTAFOLIO DE PROYECTOS DE INVERSIÓN'
	WHERE IDTIPO=14
	update SERVIDORESPUBLICOS
set NIVEL = NULL
where IDSERVPUB = 7 
SELECT * FROM SERVIDORESPUBLICOS s, DEPARTAMENTOS d
where s.IDDEPARTAMENTO = d.IDDEPARTAMENTO
INSERT INTO USUARIO
VALUES ('1234','1234', 'USUARIO CAPTURISTA',1,'A',GETDATE(),'oliver.jga@gmail.com')

update USUARIO
set NOMBREUSUARIO = 'USUARIO ADMINISTRADOR'
where IDUSUARIO=1

SELECT * FROM ARCHIVOS

update DEPARTAMENTOS
set NOMBREDEPTO= 'Departamento de Seguimiento y Control de los Ramos 06, 15, 20 y Convenios'
where IDDEPARTAMENTO = 13
delete from archivos where idarchivo=55
SELECT * FROM Noticias
--ESTATUS              nvarchar(1)          null
ALTER TABLE ARCHIVOS
ADD ESTATUS nvarchar(1) not null; 

Select * from PLANTILLA

INSERT INTO TIPO_PLANTILLA
VALUES ('ARCHIVOS SECRETARIO')

delete from PLANTILLA 

select * from archivos
select * from TIPO_PLANTILLA
select * from SERVIDORESPUBLICOS

ALTER TABLE SERVIDORESPUBLICOS
ALTER COLUMN NIVEL int null


select * from DEPARTAMENTOS
update DEPARTAMENTOS
set NOMBREDEPTO = 'Secretaría de Planeación, Programación y Presupuesto'
where IDDEPARTAMENTO=1

update SERVIDORESPUBLICOS
set NIVEL = 38
where IDSERVPUB = 39

update USUARIO
set FECHAREGISTRO = GETDATE()
where IDUSUARIO >=1

SELECT * FROM NOTICIAS 



select * from TIPO_PLANTILLA
select * from archivos
-- 15 mACROINDICADORES 52 48 46 

UPDATE ARCHIVOS
SET IDTIPO = 15
WHERE IDARCHIVO = 46 

select * from SERVIDORESPUBLICOS
