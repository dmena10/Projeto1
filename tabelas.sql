--------------------------------------------------------
--  Arquivo criado - Segunda-feira-Maio-14-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table FUNCIONARIOS
--------------------------------------------------------

  CREATE TABLE "DMENA"."FUNCIONARIOS" 
   (	"ID_FUNC" NUMBER(10,0), 
	"NAME" VARCHAR2(20 BYTE), 
	"ROLE" VARCHAR2(20 BYTE), 
	"SALARY" VARCHAR2(20 BYTE), 
	"SKILLS" NCHAR(200), 
	"CERTIFICATION" VARCHAR2(2000 BYTE), 
	"ID_PROJ" NUMBER(10,0), 
	"MANAGER" VARCHAR2(20 BYTE), 
	"GCM" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PROJECTS
--------------------------------------------------------

  CREATE TABLE "DMENA"."PROJECTS" 
   (	"ID_PROJ" NUMBER(10,0), 
	"NAME" VARCHAR2(20 BYTE), 
	"CUSTOMER" VARCHAR2(20 BYTE), 
	"VALUEOFPROJECT" NUMBER(10,0), 
	"DTBEGIN" DATE, 
	"DTEND" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into DMENA.FUNCIONARIOS
SET DEFINE OFF;
Insert into DMENA.FUNCIONARIOS (ID_FUNC,NAME,ROLE,SALARY,SKILLS,CERTIFICATION,ID_PROJ,MANAGER,GCM) values ('1','Renato Garcia','TI Architect','2000','java, javaee, rest,
      graphql,
      microservice,
      soa,
      oracle soa suite                                                                                                                ',' Oracle SOA Suite 11g Essentials - Jun 2015,
     Oracle Certified Professional, Java SE 7 Programmer - Aug 2014,
      ITIL® Foundation Certificate Jun 2013,
      Sun Certified Enterprise Architect for the Java Platform Oct 2010,
      Sun Certified Associate for Java Platform - Oct 2008,
      Sun Certified Business Component Developer for the Java Platform, EE 5 - Nov 2007,
      Sun Certified Business Component Developer for the Java Platform, EE 1.3 - Feb 2007,
      Sun Certified Web Component Developer for the Java Platform - Oct 2006,
      Sun Certified Programmer for the Java Platform - Jun 2006',null,'Marcelo Ricciardi','5');
Insert into DMENA.FUNCIONARIOS (ID_FUNC,NAME,ROLE,SALARY,SKILLS,CERTIFICATION,ID_PROJ,MANAGER,GCM) values ('2','Jose Carlos','Software Enginner','1700','java,
      javaee,
      DevOps                                                                                                                                                                        ','Sun Certified Programmer for the Java Platform',null,'Marcelo Ricciardi','4');
Insert into DMENA.FUNCIONARIOS (ID_FUNC,NAME,ROLE,SALARY,SKILLS,CERTIFICATION,ID_PROJ,MANAGER,GCM) values ('3','Gabriel Luz','Software Enginner','9000','java,
      javaee                                                                                                                                                                                      ','Sun Certified Programmer for the Java Platform',null,'Marcelo Ricciardi','4');
Insert into DMENA.FUNCIONARIOS (ID_FUNC,NAME,ROLE,SALARY,SKILLS,CERTIFICATION,ID_PROJ,MANAGER,GCM) values ('4','Marcelo Ricciari','Manager','14000','gestao de pessoas,
      PMI,
      Scrum,
      Agile,
      DevOps                                                                                                                                    ','Sun Certified Programmer for the Java Platform',null,'Douglas','6');
REM INSERTING into DMENA.PROJECTS
SET DEFINE OFF;
Insert into DMENA.PROJECTS (ID_PROJ,NAME,CUSTOMER,VALUEOFPROJECT,DTBEGIN,DTEND) values ('1','Portal cadastro NET','NET','1000000',to_date('11/05/16','DD/MM/RR'),to_date('11/05/17','DD/MM/RR'));
Insert into DMENA.PROJECTS (ID_PROJ,NAME,CUSTOMER,VALUEOFPROJECT,DTBEGIN,DTEND) values ('2','Fulfillment','Multiplus Fidelidade','1000000',to_date('11/05/15','DD/MM/RR'),to_date('11/05/18','DD/MM/RR'));
--------------------------------------------------------
--  DDL for Index SYS_C008395
--------------------------------------------------------

  CREATE UNIQUE INDEX "DMENA"."SYS_C008395" ON "DMENA"."FUNCIONARIOS" ("ID_FUNC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C008397
--------------------------------------------------------

  CREATE UNIQUE INDEX "DMENA"."SYS_C008397" ON "DMENA"."PROJECTS" ("ID_PROJ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table FUNCIONARIOS
--------------------------------------------------------

  ALTER TABLE "DMENA"."FUNCIONARIOS" MODIFY ("ID_FUNC" NOT NULL ENABLE);
  ALTER TABLE "DMENA"."FUNCIONARIOS" ADD PRIMARY KEY ("ID_FUNC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROJECTS
--------------------------------------------------------

  ALTER TABLE "DMENA"."PROJECTS" MODIFY ("ID_PROJ" NOT NULL ENABLE);
  ALTER TABLE "DMENA"."PROJECTS" ADD PRIMARY KEY ("ID_PROJ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
