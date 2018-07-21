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








if exists (select 1
            from  sysobjects
           where  id = object_id('Subscription.StudentDeclaration')
            and   type = 'U')
   drop table Subscription.StudentDeclaration
go



if exists (select 1
            from  sysobjects
           where  id = object_id('Subscription.TeacherDeclaration')
            and   type = 'U')
   drop table Subscription.TeacherDeclaration
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
--征订状态，征订中0，征订成功1，征订失败2，无效征订3.
alter table Subscription.Associate_StudentDeclaration_Bookseller
   add constraint CKC_SubscriptionStatus_Associate_StudentDeclaration_Bookseller check (SubscriptionStatus in ('0','1','2','3'))
go
--重新申报状态，征订失败时使用，未重新申报0，已重新申报1，取消申报2，默认3初始状态
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

--征订状态，征订中0，征订成功1，征订失败2，无效征订3.
alter table Subscription.Associate_TeacherDeclaration_Bookseller
   add constraint CKC_SubscriptionStatus_Associate_TeacherDeclaration_Bookseller check (SubscriptionStatus in ('0','1','2','3'))
go

--重新申报状态，征订失败时使用，未重新申报0，已重新申报1，取消申报2，默认3初始状态
alter table Subscription.Associate_TeacherDeclaration_Bookseller
   add constraint CKC_ReDeclareStatus_Associate_TeacherDeclaration_Bookseller check (ReDeclareStatus in ('0','1','2','3'))
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
   [Priority]           nvarchar(50)         not null,
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
   [Priority]           nvarchar(50)         not null,
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



alter table Subscription.Associate_StudentDeclaration_Bookseller
   add constraint FK_Associate_StudentDeclaration_Bookseller_Bookseller_StudentDeclaration_StudentDeclaration foreign key (DeclarationID)
      references Subscription.StudentDeclaration (DeclarationID)
         on update cascade on delete cascade
go

--alter table Subscription.Associate_StudentDeclaration_Bookseller
--   add constraint FK_Associate_StudentDeclaration_Bookseller_StudentDeclaration_Bookseller_Bookseller foreign key (BooksellerID)
--      references Bookseller (BooksellerID)
         
--go

alter table Subscription.Associate_StudentDeclaration_ProfessionalClass
   add constraint FK_Associate_StudentDeclaration_ProfessionalClass_DeclarationClass_ProfessionalClass_StudentDeclaration foreign key (DeclarationID)
      references Subscription.StudentDeclaration (DeclarationID)
         on update cascade on delete cascade
go

alter table Subscription.Associate_StudentDeclaration_ProfessionalClass
   add constraint FK_Associate_StudentDeclaration_ProfessionalClass_StudentDeclaration_ProfessionalClass_ProfessionalClass foreign key (ClassID)
      references ProfessionalClass (ClassID)
         
go

--alter table Subscription.Associate_TeacherDeclaration_Bookseller
--   add constraint FK_Associate_TeacherDeclaration_Bookseller_Bookseller_TeacherDeclaration_Bookseller foreign key (BooksellerID)
--      references Bookseller (BooksellerID)
         
--go

alter table Subscription.Associate_TeacherDeclaration_Bookseller
   add constraint FK_Associate_TeacherDeclaration_Bookseller_TeacherDeclaration_Bookseller_TeacherDeclaration foreign key (DeclarationID)
      references Subscription.TeacherDeclaration (DeclarationID)
         on update cascade on delete cascade
go


alter table Subscription.StudentDeclaration
   add constraint FK_StudentDeclaration_StudentDeclaration_Textbook_Textbook foreign key (TextbookID)
      references Textbook (TextbookID)
         
go

alter table Subscription.TeacherDeclaration
   add constraint FK_TeacherDeclaration_TeacherDeclaration_Textbook_Textbook foreign key (TextbookID)
      references Textbook (TextbookID)
        
go



