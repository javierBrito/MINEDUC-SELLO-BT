/*==============================================================*/
/* DBMS name:      ORACLE Version 10gR2                         */
/* Created on:     20/10/2021 12:22:57                          */
/*==============================================================*/
alter table GIEE_SBT_FORMALIZACION
   drop constraint FK_GIEE_SBT_REFERENCE_GIEE_SBT;

alter table GIEE_SBT_SECTOR_EMPRESA
   drop constraint FK_GIEE_SBT_REFERENCE_GIEE_SBT;

alter table GIEE_SBT_TIPO_FORMALIZACION
   drop constraint FK_GIEE_SBT_REFERENCE_GIEE_SBT;

drop table GIEE_SBT_EMPRESA cascade constraints;

drop table GIEE_SBT_FORMALIZACION cascade constraints;

drop table GIEE_SBT_SECTOR_EMPRESA cascade constraints;

drop table GIEE_SBT_TIPO_FORMALIZACION cascade constraints;

/*==============================================================*/
/* Table: GIEE_SBT_EMPRESA                                      */
/*==============================================================*/
create table GIEE_SBT_EMPRESA  (
   EMP_CODIGO           NUMBER(10)                      not null,
   EMP_CEDULAREP        VARCHAR(10)                     not null,
   EMP_NOMBREREP        VARCHAR(80)                     not null,
   EMP_NOMBREEMP        VARCHAR(80)                     not null,
   EMP_CARGOREP         VARCHAR(40)                     not null,
   EMP_CORREOREP        VARCHAR(40)                     not null,
   EMP_DIRECCIONREP     VARCHAR(100)                    not null,
   EMP_RUC              VARCHAR(13)                     not null,
   EMP_TELEFONOREP      VARCHAR(10)                     not null,
   SEM_CODIGO           NUMBER(10)                      not null,
   EMP_NOMBRECON        VARCHAR(80)                     not null,
   EMP_CORREOCON        VARCHAR(40)                     not null,
   EMP_CARGOCON         VARCHAR(40)                     not null,
   EMP_DIRECCIONCON     VARCHAR(100)                    not null,
   EMP_CELULARCON       VARCHAR(10)                     not null,
   EMP_CEDULACON        VARCHAR(10)                     not null,
   constraint PK_GIEE_SBT_EMPRESA primary key (EMP_CODIGO)
);

/*==============================================================*/
/* Table: GIEE_SBT_SECTOR_EMPRESA                               */
/*==============================================================*/
create table GIEE_SBT_SECTOR_EMPRESA  (
   SEM_CODIGO           NUMBER(10)                      not null,
   SEM_NOMBRE           VARCHAR(200)                     not null,
   constraint PK_GIEE_SBT_SECTOR_EMPRESA primary key (SEM_CODIGO)
);

/*==============================================================*/
/* Insert Table: GIEE_SBT_SECTOR_EMPRESA                               */
/*==============================================================*/
insert into giee_sbt_sector_empresa values (1, 'AGRICULTURA - GANADER??A - SILVICULTURA Y PESCA');
insert into giee_sbt_sector_empresa values (2, 'EXPLOTACI??N DE MINAS Y CANTERAS');
insert into giee_sbt_sector_empresa values (3, 'INDUSTRIAS MANUFACTURERAS');
insert into giee_sbt_sector_empresa values (4, 'SUMINISTRO DE ELECTRICIDAD - GAS - VAPOR Y AIRE ACONDICIONADO');
insert into giee_sbt_sector_empresa values (5, 'DISTRIBUCI??N DE AGUA - ALCANTARILLADO - GESTI??N DE DESECHOS Y ACTIVIDADES DE SANEAMIENTO');
insert into giee_sbt_sector_empresa values (6, 'CONSTRUCCI??N');
insert into giee_sbt_sector_empresa values (7, 'COMERCIO AL POR MAYOR Y AL POR MENOR');
insert into giee_sbt_sector_empresa values (8, 'TRANSPORTE Y ALMACENAMIENTO');
insert into giee_sbt_sector_empresa values (9, 'ACTIVIDADES DE ALOJAMIENTO Y DE SERVICIO DE COMIDAS');
insert into giee_sbt_sector_empresa values (10, 'INFORMACI??N Y COMUNICACI??N');
insert into giee_sbt_sector_empresa values (11, 'FINANCIERO Y DE SEGUROS');
insert into giee_sbt_sector_empresa values (12, ' INMOBILIARIO');
insert into giee_sbt_sector_empresa values (13, 'ACTIVIDADES PROFESIONALES - CIENT??FICAS Y T??CNICAS');
insert into giee_sbt_sector_empresa values (14, 'ACTIVIDADES DE SERVICIOS ADMINISTRATIVOS Y DE APOYO');
insert into giee_sbt_sector_empresa values (15, 'ADMINISTRACI??N P??BLICA Y DEFENSA - PLANES DE SEGURIDAD SOCIAL DE AFILIACI??N OBLIGATORIA');
insert into giee_sbt_sector_empresa values (16, 'ENSE??ANZA');
insert into giee_sbt_sector_empresa values (17, 'ATENCI??N DE LA SALUD HUMANA Y DE ASISTENCIA SOCIAL');
insert into giee_sbt_sector_empresa values (18, 'ARTES - ENTRETENIMIENTO Y RECREACI??N');
insert into giee_sbt_sector_empresa values (19, 'OTRAS ACTIVIDADES DE SERVICIOS');
insert into giee_sbt_sector_empresa values (20, 'ACTIVIDADES DE LOS HOGARES COMO EMPLEADORES - ACTIVIDADES NO DIFERENCIADAS DE LOS HOGARES COMO PRODUCTORES DE BIENES Y SERVICIOS PARA USO PROPIO');
insert into giee_sbt_sector_empresa values (21, 'ORGANIZACIONES Y ??RGANOS EXTRATERRITORIALES');

/*==============================================================*/
/* Table: GIEE_SBT_FORMALIZACION                                */
/*==============================================================*/
create table GIEE_SBT_FORMALIZACION  (
   FOR_CODIGO           NUMBER(10)                      not null,
   FOR_DESCRIPCION      VARCHAR(80)                     not null,
   FOR_FECHA            DATE                            not null,
   EMP_COD           	NUMBER(10)                      not null,
   TIP_COD           	NUMBER(10)                      not null,
   constraint PK_GIEE_SBT_FORMALIZACION primary key (FOR_CODIGO)
);

/*==============================================================*/
/* Table: GIEE_SBT_TIPO_FORMALIZACION                           */
/*==============================================================*/
create table GIEE_SBT_TIPO_FORMALIZACION  (
   TIP_CODIGO           NUMBER(10)                      not null,
   TIP_DESCRIPCION      VARCHAR(40)                     not null,
   TIP_FECHAEXPEDICION  DATE                            not null
);

alter table GIEE_SBT_FORMALIZACION
   add constraint FK_GIEE_SBT_REFERENCE_GIEE_SBT foreign key (FOREMP_COD)
      references GIEE_SBT_EMPRESA (EMP_CODIGO);

alter table GIEE_SBT_SECTOR_EMPRESA
   add constraint FK_GIEE_SBT_REFERENCE_GIEE_SBT foreign key ()
      references GIEE_SBT_EMPRESA (EMP_CODIGO);

alter table GIEE_SBT_TIPO_FORMALIZACION
   add constraint FK_GIEE_SBT_REFERENCE_GIEE_SBT foreign key ()
      references GIEE_SBT_FORMALIZACION (FOR_CODIGO);