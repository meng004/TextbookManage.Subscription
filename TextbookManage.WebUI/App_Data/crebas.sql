/*==============================================================*/
/* Database name:  TbMIS                                        */
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2018-07-20 16:41:30                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Subscription.Associate_StudentDeclaration_Bookseller') and o.name = 'FK_Associate_StudentDeclaration_Bookseller_Bookseller_StudentDeclaration_StudentDeclaration')
alter table Subscription.Associate_StudentDeclaration_Bookseller
   drop constraint FK_Associate_StudentDeclaration_Bookseller_Bookseller_StudentDeclaration_StudentDeclaration
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Subscription.Associate_StudentDeclaration_Bookseller') and o.name = 'FK_Associate_StudentDeclaration_Bookseller_StudentDeclaration_Bookseller_Bookseller')
alter table Subscription.Associate_StudentDeclaration_Bookseller
   drop constraint FK_Associate_StudentDeclaration_Bookseller_StudentDeclaration_Bookseller_Bookseller
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Subscription.Associate_StudentDeclaration_ProfessionalClass') and o.name = 'FK_Associate_StudentDeclaration_ProfessionalClass_DeclarationClass_ProfessionalClass_StudentDeclaration')
alter table Subscription.Associate_StudentDeclaration_ProfessionalClass
   drop constraint FK_Associate_StudentDeclaration_ProfessionalClass_DeclarationClass_ProfessionalClass_StudentDeclaration
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Subscription.Associate_StudentDeclaration_ProfessionalClass') and o.name = 'FK_Associate_StudentDeclaration_ProfessionalClass_StudentDeclaration_ProfessionalClass_ProfessionalClass')
alter table Subscription.Associate_StudentDeclaration_ProfessionalClass
   drop constraint FK_Associate_StudentDeclaration_ProfessionalClass_StudentDeclaration_ProfessionalClass_ProfessionalClass
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Subscription.Associate_TeacherDeclaration_Bookseller') and o.name = 'FK_Associate_TeacherDeclaration_Bookseller_Bookseller_TeacherDeclaration_Bookseller')
alter table Subscription.Associate_TeacherDeclaration_Bookseller
   drop constraint FK_Associate_TeacherDeclaration_Bookseller_Bookseller_TeacherDeclaration_Bookseller
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Subscription.Associate_TeacherDeclaration_Bookseller') and o.name = 'FK_Associate_TeacherDeclaration_Bookseller_TeacherDeclaration_Bookseller_TeacherDeclaration')
alter table Subscription.Associate_TeacherDeclaration_Bookseller
   drop constraint FK_Associate_TeacherDeclaration_Bookseller_TeacherDeclaration_Bookseller_TeacherDeclaration
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Department') and o.name = 'FK_Department_School_Department_School')
alter table Department
   drop constraint FK_Department_School_Department_School
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ProfessionalClass') and o.name = 'FK_ProfessionalClass_School_Class_School')
alter table ProfessionalClass
   drop constraint FK_ProfessionalClass_School_Class_School
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Student') and o.name = 'FK_Student_Class_Student_ProfessionalClass')
alter table Student
   drop constraint FK_Student_Class_Student_ProfessionalClass
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Subscription.StudentDeclaration') and o.name = 'FK_StudentDeclaration_StudentDeclaration_Textbook_Textbook')
alter table Subscription.StudentDeclaration
   drop constraint FK_StudentDeclaration_StudentDeclaration_Textbook_Textbook
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Subscription.TeacherDeclaration') and o.name = 'FK_TeacherDeclaration_TeacherDeclaration_Textbook_Textbook')
alter table Subscription.TeacherDeclaration
   drop constraint FK_TeacherDeclaration_TeacherDeclaration_Textbook_Textbook
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TeacherDepartment') and o.name = 'FK_TeacherDepartment_Reference_45_Department')
alter table TeacherDepartment
   drop constraint FK_TeacherDepartment_Reference_45_Department
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TeacherDepartment') and o.name = 'FK_TeacherDepartment_Reference_46_Teacher')
alter table TeacherDepartment
   drop constraint FK_TeacherDepartment_Reference_46_Teacher
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Subscription.Associate_StudentDeclaration_Bookseller')
            and   type = 'U')
   drop table Subscription.Associate_StudentDeclaration_Bookseller
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Subscription.Associate_StudentDeclaration_ProfessionalClass')
            and   type = 'U')
   drop table Subscription.Associate_StudentDeclaration_ProfessionalClass
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Subscription.Associate_TeacherDeclaration_Bookseller')
            and   type = 'U')
   drop table Subscription.Associate_TeacherDeclaration_Bookseller
go

alter table Bookseller
   drop constraint AK_BOOKSELLERNAME_BOOKSELL
go

alter table Bookseller
   drop constraint PK_BOOKSELLER
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Bookseller')
            and   type = 'U')
   drop table Bookseller
go

alter table Department
   drop constraint PK_DEPARTMENT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Department')
            and   type = 'U')
   drop table Department
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ProfessionalClass')
            and   name  = 'ix_ClassName'
            and   indid > 0
            and   indid < 255)
   drop index ProfessionalClass.ix_ClassName
go

alter table ProfessionalClass
   drop constraint PK_PROFESSIONALCLASS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ProfessionalClass')
            and   type = 'U')
   drop table ProfessionalClass
go

alter table School
   drop constraint PK_SCHOOL
go

if exists (select 1
            from  sysobjects
           where  id = object_id('School')
            and   type = 'U')
   drop table School
go

alter table Student
   drop constraint AK_AK_STUDENTNUM_STUDENT
go

alter table Student
   drop constraint PK_STUDENT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Student')
            and   type = 'U')
   drop table Student
go

alter table Subscription.StudentDeclaration
   drop constraint PK_STUDENTDECLARATION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Subscription.StudentDeclaration')
            and   type = 'U')
   drop table Subscription.StudentDeclaration
go

alter table Teacher
   drop constraint PK_TEACHER
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Teacher')
            and   type = 'U')
   drop table Teacher
go

alter table Subscription.TeacherDeclaration
   drop constraint PK_TEACHERDECLARATION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Subscription.TeacherDeclaration')
            and   type = 'U')
   drop table Subscription.TeacherDeclaration
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TeacherDepartment')
            and   name  = 'ix_DepartmentID'
            and   indid > 0
            and   indid < 255)
   drop index TeacherDepartment.ix_DepartmentID
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TeacherDepartment')
            and   name  = 'ix_TeacherID'
            and   indid > 0
            and   indid < 255)
   drop index TeacherDepartment.ix_TeacherID
go

alter table TeacherDepartment
   drop constraint PK_TEACHERDEPARTMENT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TeacherDepartment')
            and   type = 'U')
   drop table TeacherDepartment
go

alter table Textbook
   drop constraint PK_TEXTBOOK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Textbook')
            and   type = 'U')
   drop table Textbook
go

drop schema Subscription
go

/*==============================================================*/
/* User: Subscription                                           */
/*==============================================================*/
create schema Subscription
go

/*==============================================================*/
/* Table: Associate_StudentDeclaration_Bookseller               */
/*==============================================================*/
create table Subscription.Associate_StudentDeclaration_Bookseller (
   DeclarationID        nvarchar(50)         not null default newid(),
   BooksellerID         nvarchar(50)         not null default newid(),
   SubscriptionStatus   nchar(1)             not null default '0',
   FeedbackDate         datetime             null default getdate(),
   FeedbackStaff        nvarchar(50)         null,
   Remark               nvarchar(200)        null default N'无',
   ReDeclareStatus      nchar(1)             not null default '3'
)
go

alter table Subscription.Associate_StudentDeclaration_Bookseller
   add constraint CKC_SubscriptionStatus_Associate_StudentDeclaration_Bookseller check (SubscriptionStatus in ('0','1','2','3'))
go

alter table Subscription.Associate_StudentDeclaration_Bookseller
   add constraint CKC_ReDeclareStatus_Associate_StudentDeclaration_Bookseller check (ReDeclareStatus in ('0','1','2','3'))
go

/*==============================================================*/
/* Table: Associate_StudentDeclaration_ProfessionalClass        */
/*==============================================================*/
create table Subscription.Associate_StudentDeclaration_ProfessionalClass (
   ClassID              nvarchar(50)         not null default newid(),
   DeclarationID        nvarchar(50)         not null default newid(),
   DeclarationCount     int                  not null default 1
)
go

/*==============================================================*/
/* Table: Associate_TeacherDeclaration_Bookseller               */
/*==============================================================*/
create table Subscription.Associate_TeacherDeclaration_Bookseller (
   DeclarationID        nvarchar(50)         not null default newid(),
   BooksellerID         nvarchar(50)         not null default newid(),
   SubscriptionStatus   nchar(1)             not null default '0',
   FeedbackDate         datetime             null default getdate(),
   FeedbackStaff        nvarchar(50)         null,
   Remark               nvarchar(200)        null default N'无',
   ReDeclareStatus      nchar(1)             not null default '3'
)
go

alter table Subscription.Associate_TeacherDeclaration_Bookseller
   add constraint CKC_SubscriptionStatus_Associate_TeacherDeclaration_Bookseller check (SubscriptionStatus in ('0','1','2'))
go

alter table Subscription.Associate_TeacherDeclaration_Bookseller
   add constraint CKC_ReDeclareStatus_Associate_TeacherDeclaration_Bookseller check (ReDeclareStatus in ('0','1','2','3'))
go

/*==============================================================*/
/* Table: Bookseller                                            */
/*==============================================================*/
create table Bookseller (
   BooksellerID         nvarchar(50)         not null default newid(),
   BooksellerNum        nvarchar(20)         not null,
   BooksellerName       nvarchar(50)         not null default N'无',
   Contact              nvarchar(50)         null default N'无',
   Telephone            nvarchar(20)         null default N'无'
)
go

alter table Bookseller
   add constraint PK_BOOKSELLER primary key nonclustered (BooksellerID)
go

alter table Bookseller
   add constraint AK_BOOKSELLERNAME_BOOKSELL unique (BooksellerName)
go

/*==============================================================*/
/* Table: Department                                            */
/*==============================================================*/
create table Department (
   DepartmentID         nvarchar(50)         not null default newid(),
   DepartmentNum        nvarchar(20)         not null default N'无',
   DepartmentName       nvarchar(50)         not null default N'无',
   SchoolID             nvarchar(50)         not null default newid(),
   Contact              nvarchar(50)         null default N'无',
   Telephone            nvarchar(20)         null default N'无'
)
go

alter table Department
   add constraint PK_DEPARTMENT primary key nonclustered (DepartmentID)
go

/*==============================================================*/
/* Table: ProfessionalClass                                     */
/*==============================================================*/
create table ProfessionalClass (
   ClassID              nvarchar(50)         not null default newid(),
   ClassNum             nvarchar(20)         not null default N'无',
   ClassName            nvarchar(50)         not null default N'无',
   Grade                nvarchar(20)         not null default N'无',
   SchoolID             nvarchar(50)         not null default newid()
)
go

alter table ProfessionalClass
   add constraint PK_PROFESSIONALCLASS primary key nonclustered (ClassID)
go

/*==============================================================*/
/* Index: ix_ClassName                                          */
/*==============================================================*/
create index ix_ClassName on ProfessionalClass (
ClassName ASC
)
go

/*==============================================================*/
/* Table: School                                                */
/*==============================================================*/
create table School (
   SchoolID             nvarchar(50)         not null default newid(),
   SchoolNum            nvarchar(20)         not null default N'无',
   SchoolName           nvarchar(50)         not null default N'无',
   Contact              nvarchar(50)         null default N'无',
   Telephone            nvarchar(20)         null default N'无'
)
go

alter table School
   add constraint PK_SCHOOL primary key nonclustered (SchoolID)
go

/*==============================================================*/
/* Table: Student                                               */
/*==============================================================*/
create table Student (
   StudentID            nvarchar(50)         not null default newid(),
   StudentNum           nvarchar(20)         null default N'无',
   StudentName          nvarchar(50)         not null default N'无',
   Gender               nvarchar(10)         not null default N'男',
   EntranceDate         nvarchar(50)         null,
   IdNumber             nvarchar(50)         null,
   Mobile               nvarchar(20)         null,
   ClassID              nvarchar(50)         not null default newid()
)
go

alter table Student
   add constraint CKC_Gender_Student check (Gender in (N'男',N'女',N'未知',N'未说明'))
go

alter table Student
   add constraint PK_STUDENT primary key nonclustered (StudentID)
go

alter table Student
   add constraint AK_AK_STUDENTNUM_STUDENT unique (StudentNum)
go

/*==============================================================*/
/* Table: StudentDeclaration                                    */
/*==============================================================*/
create table Subscription.StudentDeclaration (
   DeclarationID        nvarchar(50)         not null default newid(),
   TextbookID           nvarchar(50)         null default newid(),
   DeclarationNum       int                  identity(1,1) not for replication,
   Term                 nvarchar(20)         not null default N'无',
   SchoolID             nvarchar(50)         not null,
   SchoolName           nvarchar(50)         not null,
   DepartmentID         nvarchar(50)         not null,
   DepartmentName       nvarchar(50)         not null,
   CourseID             nvarchar(50)         not null,
   CourseCode           nvarchar(50)         null,
   CourseName           nvarchar(50)         not null,
   Telephone            nvarchar(50)         null default N'无',
   ImportDate           datetime             not null default getdate(),
   ApprovalStatus       nvarchar(50)         not null default '0',
   Priority             nvarchar(50)         not null,
   DataSign             nchar(1)             not null default 'A',
   NeedTextbook         nchar(1)             not null default '1',
   Remark               nvarchar(50)         null
)
go

alter table Subscription.StudentDeclaration
   add constraint CKC_DataSign_StudentDeclaration check (DataSign in ('A','B','C','D'))
go

alter table Subscription.StudentDeclaration
   add constraint CKC_NeedTextbook_StudentDeclaration check (NeedTextbook in ('1','0'))
go

alter table Subscription.StudentDeclaration
   add constraint PK_STUDENTDECLARATION primary key nonclustered (DeclarationID)
go

/*==============================================================*/
/* Table: Teacher                                               */
/*==============================================================*/
create table Teacher (
   TeacherID            nvarchar(50)         not null default newid(),
   TeacherNum           nvarchar(20)         null default N'无',
   TeacherName          nvarchar(50)         not null default N'无',
   Gender               nvarchar(10)         not null default N'男'
)
go

alter table Teacher
   add constraint CKC_Gender_Teacher check (Gender in (N'男',N'女',N'未知',N'未说明'))
go

alter table Teacher
   add constraint PK_TEACHER primary key nonclustered (TeacherID)
go

/*==============================================================*/
/* Table: TeacherDeclaration                                    */
/*==============================================================*/
create table Subscription.TeacherDeclaration (
   DeclarationID        nvarchar(50)         not null default newid(),
   TextbookID           nvarchar(50)         null default newid(),
   DeclarationNum       int                  identity(1,1) not for replication,
   Term                 nvarchar(20)         not null default N'无',
   SchoolID             nvarchar(50)         not null,
   SchoolName           nvarchar(50)         not null,
   DepartmentID         nvarchar(50)         not null,
   DepartmentName       nvarchar(50)         not null,
   CourseID             nvarchar(50)         not null,
   CourseCode           nvarchar(50)         null,
   CourseName           nvarchar(50)         not null,
   Telephone            nvarchar(50)         null default N'无',
   ImportDate           datetime             not null default getdate(),
   ApprovalStatus       nvarchar(50)         not null default '0',
   Priority             nvarchar(50)         not null,
   DataSign             nchar(1)             not null default 'A',
   NeedTextbook         nchar(1)             not null default '1',
   Remark               nvarchar(50)         null
)
go

alter table Subscription.TeacherDeclaration
   add constraint CKC_DataSign_TeacherDeclaration check (DataSign in ('A','B','C','D'))
go

alter table Subscription.TeacherDeclaration
   add constraint CKC_NeedTextbook_TeacherDeclaration check (NeedTextbook in ('1','0'))
go

alter table Subscription.TeacherDeclaration
   add constraint PK_TEACHERDECLARATION primary key nonclustered (DeclarationID)
go

/*==============================================================*/
/* Table: TeacherDepartment                                     */
/*==============================================================*/
create table TeacherDepartment (
   TeacherDepartmentID  nvarchar(50)         not null default newid(),
   DepartmentID         nvarchar(50)         null default newid(),
   TeacherID            nvarchar(50)         null default newid()
)
go

alter table TeacherDepartment
   add constraint PK_TEACHERDEPARTMENT primary key nonclustered (TeacherDepartmentID)
go

/*==============================================================*/
/* Index: ix_TeacherID                                          */
/*==============================================================*/
create index ix_TeacherID on TeacherDepartment (
TeacherID ASC
)
go

/*==============================================================*/
/* Index: ix_DepartmentID                                       */
/*==============================================================*/
create index ix_DepartmentID on TeacherDepartment (
DepartmentID ASC
)
go

/*==============================================================*/
/* Table: Textbook                                              */
/*==============================================================*/
create table Textbook (
   TextbookID           nvarchar(50)         not null default newid(),
   TextbookNum          nvarchar(20)         not null default N'无',
   Isbn                 nvarchar(20)         not null default N'无',
   TextbookName         nvarchar(200)        not null default N'无',
   Press                nvarchar(50)         not null default N'无',
   Author               nvarchar(50)         not null default N'无',
   Edition              nvarchar(20)         not null default '1',
   PrintingCount        nvarchar(20)         not null default '1',
   RetailPrice          numeric(10,2)        not null default 0.00,
   TextbookType         nvarchar(50)         null default N'无',
   Translator           nvarchar(50)         null default N'无',
   Language             nvarchar(20)         null default N'无',
   Page                 int                  null default 0,
   Summary              nvarchar(200)        null default N'无',
   Catalog              nvarchar(200)        null default N'无',
   IsSelfCompile        nchar(1)             not null default '0'
)
go

alter table Textbook
   add constraint CKC_RetailPrice_Textbook check (RetailPrice >= 0)
go

alter table Textbook
   add constraint CKC_Page_Textbook check (Page is null or (Page >= 0))
go

alter table Textbook
   add constraint CKC_IsSelfCompile_Textbook check (IsSelfCompile in ('0','1'))
go

alter table Textbook
   add constraint PK_TEXTBOOK primary key nonclustered (TextbookID)
go

alter table Subscription.Associate_StudentDeclaration_Bookseller
   add constraint FK_Associate_StudentDeclaration_Bookseller_Bookseller_StudentDeclaration_StudentDeclaration foreign key (DeclarationID)
      references Subscription.StudentDeclaration (DeclarationID)
         on update cascade on delete cascade
go

alter table Subscription.Associate_StudentDeclaration_Bookseller
   add constraint FK_Associate_StudentDeclaration_Bookseller_StudentDeclaration_Bookseller_Bookseller foreign key (BooksellerID)
      references Bookseller (BooksellerID)
         on update cascade on delete cascade
go

alter table Subscription.Associate_StudentDeclaration_ProfessionalClass
   add constraint FK_Associate_StudentDeclaration_ProfessionalClass_DeclarationClass_ProfessionalClass_StudentDeclaration foreign key (DeclarationID)
      references Subscription.StudentDeclaration (DeclarationID)
         on update cascade on delete cascade
go

alter table Subscription.Associate_StudentDeclaration_ProfessionalClass
   add constraint FK_Associate_StudentDeclaration_ProfessionalClass_StudentDeclaration_ProfessionalClass_ProfessionalClass foreign key (ClassID)
      references ProfessionalClass (ClassID)
         on update cascade on delete cascade
go

alter table Subscription.Associate_TeacherDeclaration_Bookseller
   add constraint FK_Associate_TeacherDeclaration_Bookseller_Bookseller_TeacherDeclaration_Bookseller foreign key (BooksellerID)
      references Bookseller (BooksellerID)
         on update cascade on delete cascade
go

alter table Subscription.Associate_TeacherDeclaration_Bookseller
   add constraint FK_Associate_TeacherDeclaration_Bookseller_TeacherDeclaration_Bookseller_TeacherDeclaration foreign key (DeclarationID)
      references Subscription.TeacherDeclaration (DeclarationID)
         on update cascade on delete cascade
go

alter table Department
   add constraint FK_Department_School_Department_School foreign key (SchoolID)
      references School (SchoolID)
go

alter table ProfessionalClass
   add constraint FK_ProfessionalClass_School_Class_School foreign key (SchoolID)
      references School (SchoolID)
go

alter table Student
   add constraint FK_Student_Class_Student_ProfessionalClass foreign key (ClassID)
      references ProfessionalClass (ClassID)
go

alter table Subscription.StudentDeclaration
   add constraint FK_StudentDeclaration_StudentDeclaration_Textbook_Textbook foreign key (TextbookID)
      references Textbook (TextbookID)
         on update cascade on delete cascade
go

alter table Subscription.TeacherDeclaration
   add constraint FK_TeacherDeclaration_TeacherDeclaration_Textbook_Textbook foreign key (TextbookID)
      references Textbook (TextbookID)
         on update cascade on delete cascade
go

alter table TeacherDepartment
   add constraint FK_TeacherDepartment_Reference_45_Department foreign key (DepartmentID)
      references Department (DepartmentID)
         on update cascade on delete cascade
go

alter table TeacherDepartment
   add constraint FK_TeacherDepartment_Reference_46_Teacher foreign key (TeacherID)
      references Teacher (TeacherID)
         on update cascade on delete cascade
go

