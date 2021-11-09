/*==============================================================*/
/* DBMS name:      ORACLE Version 10gR2                         */
/* Created on:     05/11/2021 09:57:00                          */
/*==============================================================*/
/*==============================================================*/
/* Eliminar objetos en caso de que existan.                     */
/*==============================================================*/
-- 1 table
--drop table GIEE_SBT_EMPRESA cascade constraints;
-- 1 sequence
--drop sequence SEQ_SBT_EMPRESA;
-- 2 table
--drop table GIEE_SBT_SECTOR_EMPRESA cascade constraints;
-- 3 table
--drop table GIEE_SBT_CONTROL cascade constraints;
-- 4 table
--drop table GIEE_SBT_ESTADO_RENOVACION cascade constraints;
-- 5 table
--drop table GIEE_SBT_ESTADO_REVOCACION cascade constraints;
-- 6 table
--drop table GIEE_SBT_ESTADO_SELLO cascade constraints;
-- 7 table
--drop table GIEE_SBT_EXIBICION cascade constraints;
-- 8 table
--drop table GIEE_SBT_FORMALIZACION cascade constraints;
-- 9 table
--drop table GIEE_SBT_IMPLEMENTACION cascade constraints;
-- 10 table
--drop table GIEE_SBT_TIPO_FORMALIZACION cascade constraints;

/*==============================================================*/
/* Table 1: GIEE_SBT_EMPRESA                                      */
/*==============================================================*/
CREATE TABLE "GIEE"."GIEE_SBT_EMPRESA" 
   (	
    "EMP_CODIGO" 		NUMBER(10,0) NOT NULL ENABLE, 
	"EMP_CEDULAREP" 	VARCHAR2(10 BYTE) NOT NULL ENABLE, 
	"EMP_NOMBREREP" 	VARCHAR2(80 BYTE) NOT NULL ENABLE, 
	"EMP_NOMBREEMP" 	VARCHAR2(80 BYTE) NOT NULL ENABLE, 
	"EMP_CARGOREP" 		VARCHAR2(40 BYTE) NOT NULL ENABLE, 
	"EMP_CORREOREP" 	VARCHAR2(40 BYTE) NOT NULL ENABLE, 
	"EMP_DIRECCIONREP" 	VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"EMP_RUC" 			VARCHAR2(13 BYTE) NOT NULL ENABLE, 
	"EMP_TELEFONOREP" 	VARCHAR2(9 BYTE) NOT NULL ENABLE, 
	"SEM_CODIGO" 		NUMBER(10,0) NOT NULL ENABLE, 
	"EMP_NOMBRECON" 	VARCHAR2(80 BYTE) NOT NULL ENABLE, 
	"EMP_CORREOCON" 	VARCHAR2(40 BYTE) NOT NULL ENABLE, 
	"EMP_CARGOCON" 		VARCHAR2(40 BYTE) NOT NULL ENABLE, 
	"EMP_DIRECCIONCON" 	VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"EMP_CELULARCON" 	VARCHAR2(10 BYTE) NOT NULL ENABLE, 
	"EMP_CEDULACON" 	VARCHAR2(10 BYTE) NOT NULL ENABLE, 
	 CONSTRAINT "PK_GIEE_SBT_EMPRESA" PRIMARY KEY ("EMP_CODIGO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "GIEE"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "GIEE" ;

  GRANT UPDATE ON "GIEE"."GIEE_SBT_EMPRESA" TO "ASIGNACIONES";
  GRANT SELECT ON "GIEE"."GIEE_SBT_EMPRESA" TO "ASIGNACIONES";
  GRANT INSERT ON "GIEE"."GIEE_SBT_EMPRESA" TO "ASIGNACIONES";
  GRANT DELETE ON "GIEE"."GIEE_SBT_EMPRESA" TO "ASIGNACIONES";

/*==============================================================*/
/* Sequence 1: SEQ_SBT_EMPRESA                                   */
/*==============================================================*/
CREATE SEQUENCE  "GIEE"."SEQ_SBT_EMPRESA"  MINVALUE 0 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 0 CACHE 20 NOORDER  NOCYCLE  NOPARTITION;
GRANT SELECT ON "GIEE"."SEQ_SBT_EMPRESA" TO "ASIGNACIONES";
GRANT ALTER ON "GIEE"."SEQ_SBT_EMPRESA" TO "ASIGNACIONES";

/*==============================================================*/
/* Table 2: GIEE_SBT_SECTOR_EMPRESA                               */
/*==============================================================*/
CREATE TABLE "GIEE"."GIEE_SBT_SECTOR_EMPRESA" 
   (	
    "SEM_CODIGO" 	NUMBER(10,0) NOT NULL ENABLE, 
	"SEM_NOMBRE" 	VARCHAR2(200 BYTE) NOT NULL ENABLE, 
	 CONSTRAINT "PK_GIEE_SBT_SECTOR_EMPRESA" PRIMARY KEY ("SEM_CODIGO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "GIEE"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "GIEE" ;

/*==============================================================*/
/* Insert Table: GIEE_SBT_SECTOR_EMPRESA                        */
/*==============================================================*/
insert into giee_sbt_sector_empresa values (1, 'AGRICULTURA - GANADERÍA - SILVICULTURA Y PESCA');
insert into giee_sbt_sector_empresa values (2, 'EXPLOTACIÓN DE MINAS Y CANTERAS');
insert into giee_sbt_sector_empresa values (3, 'INDUSTRIAS MANUFACTURERAS');
insert into giee_sbt_sector_empresa values (4, 'SUMINISTRO DE ELECTRICIDAD - GAS - VAPOR Y AIRE ACONDICIONADO');
insert into giee_sbt_sector_empresa values (5, 'DISTRIBUCIÓN DE AGUA - ALCANTARILLADO - GESTIÓN DE DESECHOS Y ACTIVIDADES DE SANEAMIENTO');
insert into giee_sbt_sector_empresa values (6, 'CONSTRUCCIÓN');
insert into giee_sbt_sector_empresa values (7, 'COMERCIO AL POR MAYOR Y AL POR MENOR');
insert into giee_sbt_sector_empresa values (8, 'TRANSPORTE Y ALMACENAMIENTO');
insert into giee_sbt_sector_empresa values (9, 'ACTIVIDADES DE ALOJAMIENTO Y DE SERVICIO DE COMIDAS');
insert into giee_sbt_sector_empresa values (10, 'INFORMACIÓN Y COMUNICACIÓN');
insert into giee_sbt_sector_empresa values (11, 'FINANCIERO Y DE SEGUROS');
insert into giee_sbt_sector_empresa values (12, 'INMOBILIARIO');
insert into giee_sbt_sector_empresa values (13, 'ACTIVIDADES PROFESIONALES - CIENTÍFICAS Y TÉCNICAS');
insert into giee_sbt_sector_empresa values (14, 'ACTIVIDADES DE SERVICIOS ADMINISTRATIVOS Y DE APOYO');
insert into giee_sbt_sector_empresa values (15, 'ADMINISTRACIÓN PÚBLICA Y DEFENSA - PLANES DE SEGURIDAD SOCIAL DE AFILIACIÓN OBLIGATORIA');
insert into giee_sbt_sector_empresa values (16, 'ENSEÑANZA');
insert into giee_sbt_sector_empresa values (17, 'ATENCIÓN DE LA SALUD HUMANA Y DE ASISTENCIA SOCIAL');
insert into giee_sbt_sector_empresa values (18, 'ARTES - ENTRETENIMIENTO Y RECREACIÓN');
insert into giee_sbt_sector_empresa values (19, 'OTRAS ACTIVIDADES DE SERVICIOS');
insert into giee_sbt_sector_empresa values (20, 'ACTIVIDADES DE LOS HOGARES COMO EMPLEADORES - ACTIVIDADES NO DIFERENCIADAS DE LOS HOGARES COMO PRODUCTORES DE BIENES Y SERVICIOS PARA USO PROPIO');
insert into giee_sbt_sector_empresa values (21, 'ORGANIZACIONES Y ÓRGANOS EXTRATERRITORIALES');

/*==============================================================*/
/* Table 3: GIEE_SBT_CONTROL                                      */
/*==============================================================*/
CREATE TABLE "GIEE"."GIEE_SBT_CONTROL" 
   (	
    "CON_COD" 		NUMBER(10,0) NOT NULL ENABLE, 
	"CON_FECHA" 	DATE NOT NULL ENABLE, 
	"IMP_CODIGO" 	NUMBER(10,0) NOT NULL ENABLE, 
	 CONSTRAINT "PK_GIEE_SBT_CONTROL" PRIMARY KEY ("CON_COD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "GIEE"  ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "GIEE" ;

/*==============================================================*/
/* Table 4: GIEE_SBT_ESTADO_RENOVACION                            */
/*==============================================================*/
CREATE TABLE "GIEE"."GIEE_SBT_ESTADO_RENOVACION" 
   (	
    "REN_COD" 			NUMBER(10,0) NOT NULL ENABLE, 
	"REN_DESCRIPCION" 	VARCHAR2(30 BYTE) NOT NULL ENABLE, 
	 CONSTRAINT "PK_GIEE_SBT_ESTADO_RENOVACION" PRIMARY KEY ("REN_COD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "GIEE"  ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "GIEE" ;

/*==============================================================*/
/* Table 5: GIEE_SBT_ESTADO_REVOCACION                            */
/*==============================================================*/
CREATE TABLE "GIEE"."GIEE_SBT_ESTADO_REVOCACION" 
   (	
    "REV_COD" 			NUMBER(10,0) NOT NULL ENABLE, 
	"REV_DESCRIPCION" 	VARCHAR2(30 BYTE) NOT NULL ENABLE, 
	 CONSTRAINT "PK_GIEE_SBT_ESTADO_REVOCACION" PRIMARY KEY ("REV_COD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "GIEE"  ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "GIEE" ;

/*==============================================================*/
/* Table 6: GIEE_SBT_ESTADO_SELLO                                 */
/*==============================================================*/
CREATE TABLE "GIEE"."GIEE_SBT_ESTADO_SELLO" 
   (	
    "EST_COD" 			NUMBER(10,0) NOT NULL ENABLE, 
	"EST_DESCRIPCION" 	VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"REV_COD" 			NUMBER(10,0) NOT NULL ENABLE, 
	"REN_COD" 			NUMBER(10,0) NOT NULL ENABLE, 
	 CONSTRAINT "PK_GIEE_SBT_ESTADO_SELLO" PRIMARY KEY ("EST_COD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "GIEE"  ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "GIEE" ;

/*==============================================================*/
/* Table 7: GIEE_SBT_EXIBICION                                    */
/*==============================================================*/
CREATE TABLE "GIEE"."GIEE_SBT_EXIBICION" 
   (	
    "EXI_COD" 			NUMBER(10,0) NOT NULL ENABLE, 
	"EXI_DESCRIPCION" 	VARCHAR2(60 BYTE) NOT NULL ENABLE, 
	"CON_COD" 			NUMBER(10,0) NOT NULL ENABLE, 
	 CONSTRAINT "PK_GIEE_SBT_EXIBICION" PRIMARY KEY ("EXI_COD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "GIEE"  ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "GIEE" ;

/*==============================================================*/
/* Table 8: GIEE_SBT_FORMALIZACION                                */
/*==============================================================*/
CREATE TABLE "GIEE"."GIEE_SBT_FORMALIZACION" 
   (	
    "FOR_CODIGO" 		NUMBER(10,0) NOT NULL ENABLE, 
	"FOR_DESCRIPCION"	VARCHAR2(80 BYTE) NOT NULL ENABLE, 
	"FOR_FECHA" 		DATE NOT NULL ENABLE, 
	"EMP_COD" 			NUMBER(10,0) NOT NULL ENABLE, 
	"TIP_COD" 			NUMBER(10,0) NOT NULL ENABLE, 
	 CONSTRAINT "PK_GIEE_SBT_FORMALIZACION" PRIMARY KEY ("FOR_CODIGO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "GIEE"  ENABLE, 
	 CONSTRAINT "FK_GIEE_SBT_REFERENCE_GIEE_SBT" FOREIGN KEY ("FOREMP_COD")
	  REFERENCES "GIEE"."GIEE_SBT_EMPRESA" ("EMP_CODIGO") ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "GIEE" ;

/*==============================================================*/
/* Table 9: GIEE_SBT_IMPLEMENTACION                               */
/*==============================================================*/
CREATE TABLE "GIEE"."GIEE_SBT_IMPLEMENTACION" 
   (	
    "IMP_COD" 	NUMBER(10,0) NOT NULL ENABLE, 
	"CON_COD" 	NUMBER(10,0) NOT NULL ENABLE, 
	"EMP_COD" 	NUMBER(10,0) NOT NULL ENABLE, 
	"IMP_FECHA" DATE NOT NULL ENABLE, 
	"TIS_COD" 	NUMBER(10,0) NOT NULL ENABLE, 
	"EST_COD" 	NUMBER(10,0) NOT NULL ENABLE, 
	"FOR_COD" 	NUMBER(10,0) NOT NULL ENABLE, 
	 CONSTRAINT "PK_GIEE_SBT_IMPLEMENTACION" PRIMARY KEY ("IMP_COD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "GIEE"  ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "GIEE" ;

/*==============================================================*/
/* Table 10: GIEE_SBT_TIPO_FORMALIZACION                           */
/*==============================================================*/
CREATE TABLE "GIEE"."GIEE_SBT_TIPO_FORMALIZACION" 
   (	
    "TIP_CODIGO" 			NUMBER(10,0) NOT NULL ENABLE, 
	"TIP_DESCRIPCION" 		VARCHAR2(40 BYTE) NOT NULL ENABLE, 
	"TIP_FECHAEXPEDICION"	DATE NOT NULL ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "GIEE" ;