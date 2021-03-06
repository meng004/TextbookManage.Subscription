USE [D:\REPOS\TEXTBOOKMANAGE.SUBSCRIPTION\TEXTBOOKMANAGE.WEBUI\APP_DATA\DATABASE1.MDF]
GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Textbook', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Textbook'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Textbook', N'COLUMN',N'TextbookNum'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Textbook', @level2type=N'COLUMN',@level2name=N'TextbookNum'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TeacherDepartment', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TeacherDepartment'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Teacher', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teacher'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Teacher', N'COLUMN',N'TeacherNumID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teacher', @level2type=N'COLUMN',@level2name=N'TeacherNumID'

GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[Subscription].[CKC_NeedTextbook_TeacherDeclaration]') AND parent_object_id = OBJECT_ID(N'[Subscription].[TeacherDeclaration]'))
ALTER TABLE [Subscription].[TeacherDeclaration] DROP CONSTRAINT [CKC_NeedTextbook_TeacherDeclaration]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[Subscription].[CKC_DataSign_TeacherDeclaration]') AND parent_object_id = OBJECT_ID(N'[Subscription].[TeacherDeclaration]'))
ALTER TABLE [Subscription].[TeacherDeclaration] DROP CONSTRAINT [CKC_DataSign_TeacherDeclaration]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[Subscription].[CKC_NeedTextbook_StudentDeclaration]') AND parent_object_id = OBJECT_ID(N'[Subscription].[StudentDeclaration]'))
ALTER TABLE [Subscription].[StudentDeclaration] DROP CONSTRAINT [CKC_NeedTextbook_StudentDeclaration]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[Subscription].[CKC_DataSign_StudentDeclaration]') AND parent_object_id = OBJECT_ID(N'[Subscription].[StudentDeclaration]'))
ALTER TABLE [Subscription].[StudentDeclaration] DROP CONSTRAINT [CKC_DataSign_StudentDeclaration]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[Subscription].[CKC_SubscriptionStatus_Associate_TeacherDeclaration_Bookseller]') AND parent_object_id = OBJECT_ID(N'[Subscription].[Associate_TeacherDeclaration_Bookseller]'))
ALTER TABLE [Subscription].[Associate_TeacherDeclaration_Bookseller] DROP CONSTRAINT [CKC_SubscriptionStatus_Associate_TeacherDeclaration_Bookseller]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[Subscription].[CKC_ReDeclareStatus_Associate_TeacherDeclaration_Bookseller]') AND parent_object_id = OBJECT_ID(N'[Subscription].[Associate_TeacherDeclaration_Bookseller]'))
ALTER TABLE [Subscription].[Associate_TeacherDeclaration_Bookseller] DROP CONSTRAINT [CKC_ReDeclareStatus_Associate_TeacherDeclaration_Bookseller]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[Subscription].[CKC_SubscriptionStatus_Associate_StudentDeclaration_Bookseller]') AND parent_object_id = OBJECT_ID(N'[Subscription].[Associate_StudentDeclaration_Bookseller]'))
ALTER TABLE [Subscription].[Associate_StudentDeclaration_Bookseller] DROP CONSTRAINT [CKC_SubscriptionStatus_Associate_StudentDeclaration_Bookseller]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[Subscription].[CKC_ReDeclareStatus_Associate_StudentDeclaration_Bookseller]') AND parent_object_id = OBJECT_ID(N'[Subscription].[Associate_StudentDeclaration_Bookseller]'))
ALTER TABLE [Subscription].[Associate_StudentDeclaration_Bookseller] DROP CONSTRAINT [CKC_ReDeclareStatus_Associate_StudentDeclaration_Bookseller]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ck_Page_Textbook]') AND parent_object_id = OBJECT_ID(N'[dbo].[Textbook]'))
ALTER TABLE [dbo].[Textbook] DROP CONSTRAINT [ck_Page_Textbook]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ck_IsSelfCompile_Textbook]') AND parent_object_id = OBJECT_ID(N'[dbo].[Textbook]'))
ALTER TABLE [dbo].[Textbook] DROP CONSTRAINT [ck_IsSelfCompile_Textbook]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Subscription].[FK_TeacherDeclaration_TeacherDeclaration_Textbook_Textbook]') AND parent_object_id = OBJECT_ID(N'[Subscription].[TeacherDeclaration]'))
ALTER TABLE [Subscription].[TeacherDeclaration] DROP CONSTRAINT [FK_TeacherDeclaration_TeacherDeclaration_Textbook_Textbook]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Subscription].[FK_StudentDeclaration_StudentDeclaration_Textbook_Textbook]') AND parent_object_id = OBJECT_ID(N'[Subscription].[StudentDeclaration]'))
ALTER TABLE [Subscription].[StudentDeclaration] DROP CONSTRAINT [FK_StudentDeclaration_StudentDeclaration_Textbook_Textbook]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Subscription].[FK_Associate_TeacherDeclaration_Bookseller_TeacherDeclaration_Bookseller_TeacherDeclaration]') AND parent_object_id = OBJECT_ID(N'[Subscription].[Associate_TeacherDeclaration_Bookseller]'))
ALTER TABLE [Subscription].[Associate_TeacherDeclaration_Bookseller] DROP CONSTRAINT [FK_Associate_TeacherDeclaration_Bookseller_TeacherDeclaration_Bookseller_TeacherDeclaration]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Subscription].[FK_Associate_StudentDeclaration_ProfessionalClass_StudentDeclaration_ProfessionalClass_ProfessionalClass]') AND parent_object_id = OBJECT_ID(N'[Subscription].[Associate_StudentDeclaration_ProfessionalClass]'))
ALTER TABLE [Subscription].[Associate_StudentDeclaration_ProfessionalClass] DROP CONSTRAINT [FK_Associate_StudentDeclaration_ProfessionalClass_StudentDeclaration_ProfessionalClass_ProfessionalClass]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Subscription].[FK_Associate_StudentDeclaration_ProfessionalClass_DeclarationClass_ProfessionalClass_StudentDeclaration]') AND parent_object_id = OBJECT_ID(N'[Subscription].[Associate_StudentDeclaration_ProfessionalClass]'))
ALTER TABLE [Subscription].[Associate_StudentDeclaration_ProfessionalClass] DROP CONSTRAINT [FK_Associate_StudentDeclaration_ProfessionalClass_DeclarationClass_ProfessionalClass_StudentDeclaration]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Subscription].[FK_Associate_StudentDeclaration_Bookseller_Bookseller_StudentDeclaration_StudentDeclaration]') AND parent_object_id = OBJECT_ID(N'[Subscription].[Associate_StudentDeclaration_Bookseller]'))
ALTER TABLE [Subscription].[Associate_StudentDeclaration_Bookseller] DROP CONSTRAINT [FK_Associate_StudentDeclaration_Bookseller_Bookseller_StudentDeclaration_StudentDeclaration]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_TeacherDepartment_Teacher]') AND parent_object_id = OBJECT_ID(N'[dbo].[TeacherDepartment]'))
ALTER TABLE [dbo].[TeacherDepartment] DROP CONSTRAINT [fk_TeacherDepartment_Teacher]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_TeacherDepartment_Department]') AND parent_object_id = OBJECT_ID(N'[dbo].[TeacherDepartment]'))
ALTER TABLE [dbo].[TeacherDepartment] DROP CONSTRAINT [fk_TeacherDepartment_Department]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Student_ProfessionalClass]') AND parent_object_id = OBJECT_ID(N'[dbo].[Student]'))
ALTER TABLE [dbo].[Student] DROP CONSTRAINT [fk_Student_ProfessionalClass]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProfessionalClass_School]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProfessionalClass]'))
ALTER TABLE [dbo].[ProfessionalClass] DROP CONSTRAINT [fk_ProfessionalClass_School]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Department_School]') AND parent_object_id = OBJECT_ID(N'[dbo].[Department]'))
ALTER TABLE [dbo].[Department] DROP CONSTRAINT [FK_Department_School]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__TeacherDe__NeedT__05D8E0BE]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[TeacherDeclaration] DROP CONSTRAINT [DF__TeacherDe__NeedT__05D8E0BE]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__TeacherDe__DataS__04E4BC85]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[TeacherDeclaration] DROP CONSTRAINT [DF__TeacherDe__DataS__04E4BC85]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__TeacherDe__Appro__03F0984C]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[TeacherDeclaration] DROP CONSTRAINT [DF__TeacherDe__Appro__03F0984C]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__TeacherDe__Impor__02FC7413]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[TeacherDeclaration] DROP CONSTRAINT [DF__TeacherDe__Impor__02FC7413]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__TeacherDe__Telep__02084FDA]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[TeacherDeclaration] DROP CONSTRAINT [DF__TeacherDe__Telep__02084FDA]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__TeacherDec__Term__01142BA1]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[TeacherDeclaration] DROP CONSTRAINT [DF__TeacherDec__Term__01142BA1]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__TeacherDe__Textb__00200768]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[TeacherDeclaration] DROP CONSTRAINT [DF__TeacherDe__Textb__00200768]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__TeacherDe__Decla__7F2BE32F]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[TeacherDeclaration] DROP CONSTRAINT [DF__TeacherDe__Decla__7F2BE32F]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__StudentDe__NeedT__7A672E12]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[StudentDeclaration] DROP CONSTRAINT [DF__StudentDe__NeedT__7A672E12]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__StudentDe__DataS__797309D9]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[StudentDeclaration] DROP CONSTRAINT [DF__StudentDe__DataS__797309D9]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__StudentDe__Appro__787EE5A0]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[StudentDeclaration] DROP CONSTRAINT [DF__StudentDe__Appro__787EE5A0]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__StudentDe__Impor__778AC167]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[StudentDeclaration] DROP CONSTRAINT [DF__StudentDe__Impor__778AC167]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__StudentDe__Telep__76969D2E]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[StudentDeclaration] DROP CONSTRAINT [DF__StudentDe__Telep__76969D2E]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__StudentDec__Term__75A278F5]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[StudentDeclaration] DROP CONSTRAINT [DF__StudentDec__Term__75A278F5]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__StudentDe__Textb__74AE54BC]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[StudentDeclaration] DROP CONSTRAINT [DF__StudentDe__Textb__74AE54BC]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__StudentDe__Decla__73BA3083]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[StudentDeclaration] DROP CONSTRAINT [DF__StudentDe__Decla__73BA3083]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__ReDec__6FE99F9F]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_TeacherDeclaration_Bookseller] DROP CONSTRAINT [DF__Associate__ReDec__6FE99F9F]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Remar__6EF57B66]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_TeacherDeclaration_Bookseller] DROP CONSTRAINT [DF__Associate__Remar__6EF57B66]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Feedb__6E01572D]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_TeacherDeclaration_Bookseller] DROP CONSTRAINT [DF__Associate__Feedb__6E01572D]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Subsc__6D0D32F4]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_TeacherDeclaration_Bookseller] DROP CONSTRAINT [DF__Associate__Subsc__6D0D32F4]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Books__6C190EBB]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_TeacherDeclaration_Bookseller] DROP CONSTRAINT [DF__Associate__Books__6C190EBB]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Decla__6B24EA82]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_TeacherDeclaration_Bookseller] DROP CONSTRAINT [DF__Associate__Decla__6B24EA82]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Decla__693CA210]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_StudentDeclaration_ProfessionalClass] DROP CONSTRAINT [DF__Associate__Decla__693CA210]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Decla__68487DD7]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_StudentDeclaration_ProfessionalClass] DROP CONSTRAINT [DF__Associate__Decla__68487DD7]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Class__6754599E]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_StudentDeclaration_ProfessionalClass] DROP CONSTRAINT [DF__Associate__Class__6754599E]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__ReDec__6383C8BA]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_StudentDeclaration_Bookseller] DROP CONSTRAINT [DF__Associate__ReDec__6383C8BA]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Remar__628FA481]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_StudentDeclaration_Bookseller] DROP CONSTRAINT [DF__Associate__Remar__628FA481]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Feedb__619B8048]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_StudentDeclaration_Bookseller] DROP CONSTRAINT [DF__Associate__Feedb__619B8048]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Subsc__60A75C0F]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_StudentDeclaration_Bookseller] DROP CONSTRAINT [DF__Associate__Subsc__60A75C0F]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Books__5FB337D6]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_StudentDeclaration_Bookseller] DROP CONSTRAINT [DF__Associate__Books__5FB337D6]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Decla__5EBF139D]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_StudentDeclaration_Bookseller] DROP CONSTRAINT [DF__Associate__Decla__5EBF139D]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[ck_Textbook_IsSelfCompile]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Textbook] DROP CONSTRAINT [ck_Textbook_IsSelfCompile]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Textbook__Textbo__53ED4AC6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Textbook] DROP CONSTRAINT [DF__Textbook__Textbo__53ED4AC6]
END

GO
/****** Object:  Index [PK_TEACHERDECLARATION]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Subscription].[TeacherDeclaration]') AND name = N'PK_TEACHERDECLARATION')
ALTER TABLE [Subscription].[TeacherDeclaration] DROP CONSTRAINT [PK_TEACHERDECLARATION]
GO
/****** Object:  Index [PK_STUDENTDECLARATION]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Subscription].[StudentDeclaration]') AND name = N'PK_STUDENTDECLARATION')
ALTER TABLE [Subscription].[StudentDeclaration] DROP CONSTRAINT [PK_STUDENTDECLARATION]
GO
/****** Object:  Index [pk_Textbook]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Textbook]') AND name = N'pk_Textbook')
ALTER TABLE [dbo].[Textbook] DROP CONSTRAINT [pk_Textbook]
GO
/****** Object:  Index [pk_TeacherDepartment]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TeacherDepartment]') AND name = N'pk_TeacherDepartment')
ALTER TABLE [dbo].[TeacherDepartment] DROP CONSTRAINT [pk_TeacherDepartment]
GO
/****** Object:  Index [ak_TeacherNumID_Teacher]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Teacher]') AND name = N'ak_TeacherNumID_Teacher')
ALTER TABLE [dbo].[Teacher] DROP CONSTRAINT [ak_TeacherNumID_Teacher]
GO
/****** Object:  Index [pk_Teacher]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Teacher]') AND name = N'pk_Teacher')
ALTER TABLE [dbo].[Teacher] DROP CONSTRAINT [pk_Teacher]
GO
/****** Object:  Index [AK_AK_STUDENTNUM_STUDENT]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Student]') AND name = N'AK_AK_STUDENTNUM_STUDENT')
ALTER TABLE [dbo].[Student] DROP CONSTRAINT [AK_AK_STUDENTNUM_STUDENT]
GO
/****** Object:  Index [pk_Student]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Student]') AND name = N'pk_Student')
ALTER TABLE [dbo].[Student] DROP CONSTRAINT [pk_Student]
GO
/****** Object:  Index [pk_School]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[School]') AND name = N'pk_School')
ALTER TABLE [dbo].[School] DROP CONSTRAINT [pk_School]
GO
/****** Object:  Index [pk_ProfessionalClass]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ProfessionalClass]') AND name = N'pk_ProfessionalClass')
ALTER TABLE [dbo].[ProfessionalClass] DROP CONSTRAINT [pk_ProfessionalClass]
GO
/****** Object:  Index [pk_Department]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Department]') AND name = N'pk_Department')
ALTER TABLE [dbo].[Department] DROP CONSTRAINT [pk_Department]
GO
/****** Object:  Index [ak_Bookseller_BooksellerName]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Bookseller]') AND name = N'ak_Bookseller_BooksellerName')
ALTER TABLE [dbo].[Bookseller] DROP CONSTRAINT [ak_Bookseller_BooksellerName]
GO
/****** Object:  Index [pk_Bookseller]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Bookseller]') AND name = N'pk_Bookseller')
ALTER TABLE [dbo].[Bookseller] DROP CONSTRAINT [pk_Bookseller]
GO
/****** Object:  Table [Subscription].[TeacherDeclaration]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Subscription].[TeacherDeclaration]') AND type in (N'U'))
DROP TABLE [Subscription].[TeacherDeclaration]
GO
/****** Object:  Table [Subscription].[StudentDeclaration]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Subscription].[StudentDeclaration]') AND type in (N'U'))
DROP TABLE [Subscription].[StudentDeclaration]
GO
/****** Object:  Table [Subscription].[Associate_TeacherDeclaration_Bookseller]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Subscription].[Associate_TeacherDeclaration_Bookseller]') AND type in (N'U'))
DROP TABLE [Subscription].[Associate_TeacherDeclaration_Bookseller]
GO
/****** Object:  Table [Subscription].[Associate_StudentDeclaration_ProfessionalClass]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Subscription].[Associate_StudentDeclaration_ProfessionalClass]') AND type in (N'U'))
DROP TABLE [Subscription].[Associate_StudentDeclaration_ProfessionalClass]
GO
/****** Object:  Table [Subscription].[Associate_StudentDeclaration_Bookseller]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Subscription].[Associate_StudentDeclaration_Bookseller]') AND type in (N'U'))
DROP TABLE [Subscription].[Associate_StudentDeclaration_Bookseller]
GO
/****** Object:  Table [dbo].[Textbook]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Textbook]') AND type in (N'U'))
DROP TABLE [dbo].[Textbook]
GO
/****** Object:  Table [dbo].[TeacherDepartment]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TeacherDepartment]') AND type in (N'U'))
DROP TABLE [dbo].[TeacherDepartment]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Teacher]') AND type in (N'U'))
DROP TABLE [dbo].[Teacher]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student]') AND type in (N'U'))
DROP TABLE [dbo].[Student]
GO
/****** Object:  Table [dbo].[School]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[School]') AND type in (N'U'))
DROP TABLE [dbo].[School]
GO
/****** Object:  Table [dbo].[ProfessionalClass]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProfessionalClass]') AND type in (N'U'))
DROP TABLE [dbo].[ProfessionalClass]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Department]') AND type in (N'U'))
DROP TABLE [dbo].[Department]
GO
/****** Object:  Table [dbo].[Bookseller]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bookseller]') AND type in (N'U'))
DROP TABLE [dbo].[Bookseller]
GO
/****** Object:  Schema [Subscription]    Script Date: 2018-7-21 12:04:58 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'Subscription')
DROP SCHEMA [Subscription]
GO
/****** Object:  Schema [Subscription]    Script Date: 2018-7-21 12:04:58 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Subscription')
EXEC sys.sp_executesql N'CREATE SCHEMA [Subscription]'

GO
/****** Object:  Table [dbo].[Bookseller]    Script Date: 2018-7-21 12:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bookseller]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Bookseller](
	[BooksellerID] [uniqueidentifier] NOT NULL,
	[BooksellerNum] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[BooksellerName] [nvarchar](50) NOT NULL,
	[Contact] [nvarchar](50) NULL,
	[Telephone] [nvarchar](20) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Department]    Script Date: 2018-7-21 12:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Department]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Department](
	[DepartmentID] [nvarchar](50) NOT NULL,
	[DepartmentNum] [nvarchar](20) NOT NULL,
	[DepartmentName] [nvarchar](50) NOT NULL,
	[SchoolID] [nvarchar](50) NOT NULL,
	[Contact] [nvarchar](50) NULL,
	[Telephone] [nvarchar](20) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProfessionalClass]    Script Date: 2018-7-21 12:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProfessionalClass]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProfessionalClass](
	[ClassID] [nvarchar](50) NOT NULL,
	[ClassNum] [nvarchar](20) NOT NULL,
	[ClassName] [nvarchar](50) NOT NULL,
	[Grade] [nvarchar](20) NOT NULL,
	[SchoolID] [nvarchar](50) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[School]    Script Date: 2018-7-21 12:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[School]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[School](
	[SchoolID] [nvarchar](50) NOT NULL,
	[SchoolNum] [nvarchar](20) NOT NULL,
	[SchoolName] [nvarchar](50) NOT NULL,
	[Contact] [nvarchar](50) NULL,
	[Telephone] [nvarchar](20) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2018-7-21 12:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Student](
	[StudentID] [nvarchar](50) NOT NULL,
	[StudentNum] [nvarchar](20) NOT NULL,
	[StudentName] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[EntranceDate] [nvarchar](20) NOT NULL,
	[IDNumber] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[ClassID] [nvarchar](50) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 2018-7-21 12:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Teacher]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Teacher](
	[TeacherID] [nvarchar](50) NOT NULL,
	[TeacherNum] [nvarchar](20) NOT NULL,
	[TeacherName] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[TeacherNumID2] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[TeacherNumID]  AS (replicate('0',(6)-len([TeacherNumID2]))+CONVERT([nvarchar](10),[TeacherNumID2],(0)))
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TeacherDepartment]    Script Date: 2018-7-21 12:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TeacherDepartment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TeacherDepartment](
	[TeacherDepartmentID] [nvarchar](50) NOT NULL,
	[DepartmentID] [nvarchar](50) NULL,
	[TeacherID] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Textbook]    Script Date: 2018-7-21 12:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Textbook]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Textbook](
	[TextbookID] [nvarchar](50) NOT NULL,
	[TextbookNum2] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[TextbookNum]  AS (replicate('0',(8)-len([TextbookNum2]))+CONVERT([nvarchar](10),[TextbookNum2],(0))),
	[Isbn] [nvarchar](20) NOT NULL,
	[TextbookName] [nvarchar](200) NOT NULL,
	[Press] [nvarchar](50) NOT NULL,
	[Author] [nvarchar](50) NOT NULL,
	[Edition] [nvarchar](20) NOT NULL,
	[PrintingCount] [nvarchar](20) NOT NULL,
	[RetailPrice] [numeric](10, 2) NOT NULL,
	[TextbookType] [nvarchar](50) NULL,
	[Translator] [nvarchar](50) NULL,
	[Language] [nvarchar](20) NULL,
	[Page] [int] NULL,
	[Summary] [nvarchar](200) NULL,
	[Catalog] [nvarchar](200) NULL,
	[IsSelfCompile] [char](1) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Subscription].[Associate_StudentDeclaration_Bookseller]    Script Date: 2018-7-21 12:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Subscription].[Associate_StudentDeclaration_Bookseller]') AND type in (N'U'))
BEGIN
CREATE TABLE [Subscription].[Associate_StudentDeclaration_Bookseller](
	[DeclarationID] [nvarchar](50) NOT NULL,
	[BooksellerID] [nvarchar](50) NOT NULL,
	[SubscriptionStatus] [nchar](1) NOT NULL,
	[FeedbackDate] [datetime] NULL,
	[FeedbackStaff] [nvarchar](50) NULL,
	[Remark] [nvarchar](200) NULL,
	[ReDeclareStatus] [nchar](1) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Subscription].[Associate_StudentDeclaration_ProfessionalClass]    Script Date: 2018-7-21 12:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Subscription].[Associate_StudentDeclaration_ProfessionalClass]') AND type in (N'U'))
BEGIN
CREATE TABLE [Subscription].[Associate_StudentDeclaration_ProfessionalClass](
	[ClassID] [nvarchar](50) NOT NULL,
	[DeclarationID] [nvarchar](50) NOT NULL,
	[DeclarationCount] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Subscription].[Associate_TeacherDeclaration_Bookseller]    Script Date: 2018-7-21 12:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Subscription].[Associate_TeacherDeclaration_Bookseller]') AND type in (N'U'))
BEGIN
CREATE TABLE [Subscription].[Associate_TeacherDeclaration_Bookseller](
	[DeclarationID] [nvarchar](50) NOT NULL,
	[BooksellerID] [nvarchar](50) NOT NULL,
	[SubscriptionStatus] [nchar](1) NOT NULL,
	[FeedbackDate] [datetime] NULL,
	[FeedbackStaff] [nvarchar](50) NULL,
	[Remark] [nvarchar](200) NULL,
	[ReDeclareStatus] [nchar](1) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Subscription].[StudentDeclaration]    Script Date: 2018-7-21 12:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Subscription].[StudentDeclaration]') AND type in (N'U'))
BEGIN
CREATE TABLE [Subscription].[StudentDeclaration](
	[DeclarationID] [nvarchar](50) NOT NULL,
	[TextbookID] [nvarchar](50) NULL,
	[DeclarationNum] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Term] [nvarchar](20) NOT NULL,
	[SchoolID] [nvarchar](50) NOT NULL,
	[SchoolName] [nvarchar](50) NOT NULL,
	[DepartmentID] [nvarchar](50) NOT NULL,
	[DepartmentName] [nvarchar](50) NOT NULL,
	[CourseID] [nvarchar](50) NOT NULL,
	[CourseCode] [nvarchar](50) NULL,
	[CourseName] [nvarchar](50) NOT NULL,
	[Telephone] [nvarchar](50) NULL,
	[ImportDate] [datetime] NOT NULL,
	[ApprovalStatus] [nvarchar](50) NOT NULL,
	[Priority] [nvarchar](50) NOT NULL,
	[DataSign] [nchar](1) NOT NULL,
	[NeedTextbook] [nchar](1) NOT NULL,
	[Remark] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [Subscription].[TeacherDeclaration]    Script Date: 2018-7-21 12:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Subscription].[TeacherDeclaration]') AND type in (N'U'))
BEGIN
CREATE TABLE [Subscription].[TeacherDeclaration](
	[DeclarationID] [nvarchar](50) NOT NULL,
	[TextbookID] [nvarchar](50) NULL,
	[DeclarationNum] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Term] [nvarchar](20) NOT NULL,
	[SchoolID] [nvarchar](50) NOT NULL,
	[SchoolName] [nvarchar](50) NOT NULL,
	[DepartmentID] [nvarchar](50) NOT NULL,
	[DepartmentName] [nvarchar](50) NOT NULL,
	[CourseID] [nvarchar](50) NOT NULL,
	[CourseCode] [nvarchar](50) NULL,
	[CourseName] [nvarchar](50) NOT NULL,
	[Telephone] [nvarchar](50) NULL,
	[ImportDate] [datetime] NOT NULL,
	[ApprovalStatus] [nvarchar](50) NOT NULL,
	[Priority] [nvarchar](50) NOT NULL,
	[DataSign] [nchar](1) NOT NULL,
	[NeedTextbook] [nchar](1) NOT NULL,
	[Remark] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Bookseller] ON 

INSERT [dbo].[Bookseller] ([BooksellerID], [BooksellerNum], [BooksellerName], [Contact], [Telephone]) VALUES (N'60d6e947-ec9c-4a0a-aea6-26673c046b3c', 1, N'新华书店', N'', N'8228775')
INSERT [dbo].[Bookseller] ([BooksellerID], [BooksellerNum], [BooksellerName], [Contact], [Telephone]) VALUES (N'ab62cc87-c927-4ba7-b753-66e56e90fdbd', 2, N'蓝色畅想书店', N'', N'3179323')
INSERT [dbo].[Bookseller] ([BooksellerID], [BooksellerNum], [BooksellerName], [Contact], [Telephone]) VALUES (N'd495e67d-34c1-454c-8cdc-aa508e4e6203', 3, N'江西畅想文化', N'', N'')
INSERT [dbo].[Bookseller] ([BooksellerID], [BooksellerNum], [BooksellerName], [Contact], [Telephone]) VALUES (N'ea9d0621-46d9-4a3b-827d-8beb10479f08', 4, N'衡阳学府', N'欧阳磊', N'')
SET IDENTITY_INSERT [dbo].[Bookseller] OFF
INSERT [dbo].[Department] ([DepartmentID], [DepartmentNum], [DepartmentName], [SchoolID], [Contact], [Telephone]) VALUES (N'0082D288165C41F3A3D31FD826B131C2', N'0304', N'数字媒体技术系', N'32CC3858B1F048B2ACE4DCA10A197964', N'无', N'无')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentNum], [DepartmentName], [SchoolID], [Contact], [Telephone]) VALUES (N'0645B3E71E274A32857CB07CAC1F8150', N'0308', N'计算机科学与技术基础实验中心', N'32CC3858B1F048B2ACE4DCA10A197964', N'无', N'无')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentNum], [DepartmentName], [SchoolID], [Contact], [Telephone]) VALUES (N'131BFA058C6948D994CF775C55E6795B', N'0702', N'力学教研室', N'38399FBDEEAC42EDBFE7CEB9F525B18D', N'无', N'无')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentNum], [DepartmentName], [SchoolID], [Contact], [Telephone]) VALUES (N'1ADDDFAAC02441ED87F48046C325CCF5', N'0704', N'高等数学教研室', N'38399FBDEEAC42EDBFE7CEB9F525B18D', N'无', N'无')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentNum], [DepartmentName], [SchoolID], [Contact], [Telephone]) VALUES (N'1C732C5F27B04259AFF21E3B6B974011', N'0201', N'电气工程及其自动化系', N'265470DF4E68447587F1BB02154CD323', N'无', N'无')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentNum], [DepartmentName], [SchoolID], [Contact], [Telephone]) VALUES (N'2016051909350649839843e768fdea3', N'0311', N'医学信息工程系', N'32CC3858B1F048B2ACE4DCA10A197964', N'无', N'无')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentNum], [DepartmentName], [SchoolID], [Contact], [Telephone]) VALUES (N'2B9DD604EBE24F80BCF7D31D90D89E4C', N'1501', N'国际经济与贸易系', N'3B009B7A7D464BFE9846533102E3F252', N'无', N'无')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentNum], [DepartmentName], [SchoolID], [Contact], [Telephone]) VALUES (N'2DAABB58F0C347ACB821F778253D6133', N'', N'教学建设科', N'2666CEE7D6A840689F0F9564D9296D8F', N'无', N'无')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentNum], [DepartmentName], [SchoolID], [Contact], [Telephone]) VALUES (N'3405A9F5DD3547CD9B41C896E195F840', N'', N'民商法学教研室', N'3B009B7A7D464BFE9846533102E3F252', N'无', N'无')
INSERT [dbo].[ProfessionalClass] ([ClassID], [ClassNum], [ClassName], [Grade], [SchoolID]) VALUES (N'00E73CB819BA404EB94438A9D74F7299', N'201449701', N'本14物流01班', N'2014', N'F9B40D78E5EF4231B4AAB739C9304DE4')
INSERT [dbo].[ProfessionalClass] ([ClassID], [ClassNum], [ClassName], [Grade], [SchoolID]) VALUES (N'0166FE30144A4B75A0802A6171D262FF', N'201340603', N'本13经贸03班', N'2013', N'3B009B7A7D464BFE9846533102E3F252')
INSERT [dbo].[ProfessionalClass] ([ClassID], [ClassNum], [ClassName], [Grade], [SchoolID]) VALUES (N'025FE92A3EFD4D61B93AA4EE20A669F0', N'201241401', N'本12热动01班', N'2012', N'56768E93B7534E539723092E57E0524E')
INSERT [dbo].[ProfessionalClass] ([ClassID], [ClassNum], [ClassName], [Grade], [SchoolID]) VALUES (N'06A715E3B3AB489BA9CD358342E5C78B', N'201445501', N'本14环境01班', N'2014', N'FD652812831549878016B0B01F24509A')
INSERT [dbo].[ProfessionalClass] ([ClassID], [ClassNum], [ClassName], [Grade], [SchoolID]) VALUES (N'07AE908BA9224C8B8C34E6E6E977589C', N'201442704', N'本14园林04班', N'2014', N'F9290682CAD04D93AC84030D69DBD8BD')
INSERT [dbo].[ProfessionalClass] ([ClassID], [ClassNum], [ClassName], [Grade], [SchoolID]) VALUES (N'0A2D0600FF4B404594FB894007A51152', N'201457611', N'本14临医11班', N'2014', N'D3565E4B22E541FA956CF6E4DBBF661E')
INSERT [dbo].[ProfessionalClass] ([ClassID], [ClassNum], [ClassName], [Grade], [SchoolID]) VALUES (N'0B50E96E36864A54A838EB88A589BD1C', N'201446301', N'本14建电01班', N'2014', N'E98AF5951A7348D4AD80391F7FF08D31')
INSERT [dbo].[ProfessionalClass] ([ClassID], [ClassNum], [ClassName], [Grade], [SchoolID]) VALUES (N'0B8A16F80ED2467C9FAA0415751917A7', N'201544501', N'本15电力01班', N'2015', N'265470DF4E68447587F1BB02154CD323')
INSERT [dbo].[ProfessionalClass] ([ClassID], [ClassNum], [ClassName], [Grade], [SchoolID]) VALUES (N'0FB002CD33DF49D687772994E95B72F9', N'201349202', N'本13会计02班', N'2013', N'F9B40D78E5EF4231B4AAB739C9304DE4')
INSERT [dbo].[ProfessionalClass] ([ClassID], [ClassNum], [ClassName], [Grade], [SchoolID]) VALUES (N'10633B9828B14ED197653EDE0BD0E50C', N'201243503', N'本12软件03班', N'2012', N'32CC3858B1F048B2ACE4DCA10A197964')
INSERT [dbo].[ProfessionalClass] ([ClassID], [ClassNum], [ClassName], [Grade], [SchoolID]) VALUES (N'1142D139E7A5430EB8DA3B1F59B3328E', N'201446901', N'本14道桥01班', N'2014', N'E98AF5951A7348D4AD80391F7FF08D31')
INSERT [dbo].[ProfessionalClass] ([ClassID], [ClassNum], [ClassName], [Grade], [SchoolID]) VALUES (N'116FE36CB3124E3C9FA77AA6A2A73D94', N'201357620', N'本13临医20班', N'2013', N'D3565E4B22E541FA956CF6E4DBBF661E')
INSERT [dbo].[ProfessionalClass] ([ClassID], [ClassNum], [ClassName], [Grade], [SchoolID]) VALUES (N'1213D03E8D5F4E1B96E78E9AFECE1090', N'201457501', N'本14全医01班', N'2014', N'D3565E4B22E541FA956CF6E4DBBF661E')
INSERT [dbo].[ProfessionalClass] ([ClassID], [ClassNum], [ClassName], [Grade], [SchoolID]) VALUES (N'124061D2984D41658A4A479DF91B7D6B', N'201197701', N'船本11麻醉01班', N'2011', N'E2C70D6C3F454DDD8FA2E8A5B021BD16')
INSERT [dbo].[School] ([SchoolID], [SchoolNum], [SchoolName], [Contact], [Telephone]) VALUES (N'265470DF4E68447587F1BB02154CD323', N'02', N'电气工程学院', N'无', N'无')
INSERT [dbo].[School] ([SchoolID], [SchoolNum], [SchoolName], [Contact], [Telephone]) VALUES (N'2666CEE7D6A840689F0F9564D9296D8F', N'A1', N'教务处', N'无', N'无')
INSERT [dbo].[School] ([SchoolID], [SchoolNum], [SchoolName], [Contact], [Telephone]) VALUES (N'32CC3858B1F048B2ACE4DCA10A197964', N'03', N'计算机学院', N'无', N'无')
INSERT [dbo].[School] ([SchoolID], [SchoolNum], [SchoolName], [Contact], [Telephone]) VALUES (N'38399FBDEEAC42EDBFE7CEB9F525B18D', N'07', N'数理学院', N'无', N'无')
INSERT [dbo].[School] ([SchoolID], [SchoolNum], [SchoolName], [Contact], [Telephone]) VALUES (N'3B009B7A7D464BFE9846533102E3F252', N'17', N'经济与法学学院', N'无', N'无')
INSERT [dbo].[Student] ([StudentID], [StudentNum], [StudentName], [Gender], [EntranceDate], [IDNumber], [Mobile], [ClassID]) VALUES (N'001CBB6B37B2435FA527F14C1CFAA904', N'20134920237', N'刁鹏慧', N'女', N'201309', N'370282199501207369', N'13375550098', N'0FB002CD33DF49D687772994E95B72F9')
INSERT [dbo].[Student] ([StudentID], [StudentNum], [StudentName], [Gender], [EntranceDate], [IDNumber], [Mobile], [ClassID]) VALUES (N'002DC4543BCE426195733B590FCA9963', N'20124350337', N'邓国川', N'男', N'201209', N'510722199302262493', N'15196235790', N'10633B9828B14ED197653EDE0BD0E50C')
INSERT [dbo].[Student] ([StudentID], [StudentNum], [StudentName], [Gender], [EntranceDate], [IDNumber], [Mobile], [ClassID]) VALUES (N'00340107368A44B9B95180833AAAE875', N'20144550154', N'罗嘉丽', N'女', N'201409', N'440203199501171821', N'15992982063', N'06A715E3B3AB489BA9CD358342E5C78B')
INSERT [dbo].[Student] ([StudentID], [StudentNum], [StudentName], [Gender], [EntranceDate], [IDNumber], [Mobile], [ClassID]) VALUES (N'0044B0D210D8420BB0034FEC21009DCB', N'20134060323', N'刘金凤', N'女', N'201309', N'450923199307187745', N'8508245', N'0166FE30144A4B75A0802A6171D262FF')
INSERT [dbo].[Student] ([StudentID], [StudentNum], [StudentName], [Gender], [EntranceDate], [IDNumber], [Mobile], [ClassID]) VALUES (N'004B1077978C495CA87ECEF32BB711A6', N'20154450120', N'李志', N'男', N'201509', N'430802199711060737', N'13974428992', N'0B8A16F80ED2467C9FAA0415751917A7')
INSERT [dbo].[Student] ([StudentID], [StudentNum], [StudentName], [Gender], [EntranceDate], [IDNumber], [Mobile], [ClassID]) VALUES (N'0062B7DDEFF44DA3AE24E6EB1F790FD3', N'20144270413', N'杨萌', N'女', N'201409', N'430111199506072120', N'18684672178', N'07AE908BA9224C8B8C34E6E6E977589C')
INSERT [dbo].[Student] ([StudentID], [StudentNum], [StudentName], [Gender], [EntranceDate], [IDNumber], [Mobile], [ClassID]) VALUES (N'009518096B214570A1DF98A153DCFF34', N'20144690105', N'韦春雷', N'女', N'201409', N'460004199506075424', N'13876347983', N'1142D139E7A5430EB8DA3B1F59B3328E')
INSERT [dbo].[Student] ([StudentID], [StudentNum], [StudentName], [Gender], [EntranceDate], [IDNumber], [Mobile], [ClassID]) VALUES (N'00B1851D578543A19BF5B1CAC53872C7', N'20145750115', N'钱薇', N'女', N'201409', N'430626199601160024', N'15873034074', N'1213D03E8D5F4E1B96E78E9AFECE1090')
INSERT [dbo].[Student] ([StudentID], [StudentNum], [StudentName], [Gender], [EntranceDate], [IDNumber], [Mobile], [ClassID]) VALUES (N'011122171B954B7380A2DBD25B7EAF30', N'20144630104', N'周幸福', N'男', N'201409', N'513023199501133011', N'13981481529', N'0B50E96E36864A54A838EB88A589BD1C')
INSERT [dbo].[Student] ([StudentID], [StudentNum], [StudentName], [Gender], [EntranceDate], [IDNumber], [Mobile], [ClassID]) VALUES (N'0127FCB2B1F14AAAAC2D67C811EAD7FB', N'20119770120', N'杨婷玉', N'女', N'201109', N'630102199312073329', N'13897248569', N'124061D2984D41658A4A479DF91B7D6B')
INSERT [dbo].[Student] ([StudentID], [StudentNum], [StudentName], [Gender], [EntranceDate], [IDNumber], [Mobile], [ClassID]) VALUES (N'014A8206406A4927A97B7CD841E8B255', N'20145761111', N'熊瑶', N'女', N'201409', N'431103199512275128', N'15874636356', N'0A2D0600FF4B404594FB894007A51152')
INSERT [dbo].[Student] ([StudentID], [StudentNum], [StudentName], [Gender], [EntranceDate], [IDNumber], [Mobile], [ClassID]) VALUES (N'014C0F0147E048E7A9E4BF90E3E6F266', N'20135762038', N'廖航宇', N'男', N'201309', N'430421199601019431', N'13667454943', N'116FE36CB3124E3C9FA77AA6A2A73D94')
INSERT [dbo].[Student] ([StudentID], [StudentNum], [StudentName], [Gender], [EntranceDate], [IDNumber], [Mobile], [ClassID]) VALUES (N'01537712028D4E55A0FEF5147DEBEEE6', N'20124140129', N'肖志萍', N'男', N'201209', N'500106199406198911', N'68316815-13028336085', N'025FE92A3EFD4D61B93AA4EE20A669F0')
INSERT [dbo].[Student] ([StudentID], [StudentNum], [StudentName], [Gender], [EntranceDate], [IDNumber], [Mobile], [ClassID]) VALUES (N'0164B9AA0DB74B64BFC9B5BE3FBAB00C', N'20144970129', N'陈文韬', N'男', N'201409', N'440902199510180457', N'0668-899287', N'00E73CB819BA404EB94438A9D74F7299')
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([TeacherID], [TeacherNum], [TeacherName], [Gender], [TeacherNumID2]) VALUES (N'0026F270F10F49088B4BBFA020803DC0', N'60022', N'蒋京苹', N'男', 25617)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherNum], [TeacherName], [Gender], [TeacherNumID2]) VALUES (N'003003A192B64B8C9B58AE46745CA9C6', N'rj010', N'刘洋', N'男', 25618)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherNum], [TeacherName], [Gender], [TeacherNumID2]) VALUES (N'004CBD9174BB4936B80739D6264E2338', N'17166', N'周萍', N'男', 25619)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherNum], [TeacherName], [Gender], [TeacherNumID2]) VALUES (N'004DD4C6FB494753B520208CC36A255E', N'37012', N'周钰娟', N'女', 25620)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherNum], [TeacherName], [Gender], [TeacherNumID2]) VALUES (N'006D40D347CB4002AE248FE97D069A38', N'080006', N'护理学实验中心', N'男', 25621)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherNum], [TeacherName], [Gender], [TeacherNumID2]) VALUES (N'00AD3F3117A04A8D9C334816C9E391C8', N'43114', N'肖菲莉', N'女', 25622)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherNum], [TeacherName], [Gender], [TeacherNumID2]) VALUES (N'00B6158A8EB14CA7A05BE163DFACA9F3', N'300067', N'占红星等', N'男', 25623)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherNum], [TeacherName], [Gender], [TeacherNumID2]) VALUES (N'00BD73C0668D4F108A340FB238984B99', N'45089', N'詹孝贵', N'男', 25624)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherNum], [TeacherName], [Gender], [TeacherNumID2]) VALUES (N'00D2215FD77A4C789F3C28DB57FE1624', N'83001', N'刘进新', N'男', 25625)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherNum], [TeacherName], [Gender], [TeacherNumID2]) VALUES (N'00FC78AEA4E248238C99363F5D4E2D85', N'220042', N'左双燕', N'未知', 25626)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherNum], [TeacherName], [Gender], [TeacherNumID2]) VALUES (N'011086C04E3D4C10B50C0E2EF86998D2', N'cw011', N'刘晓军', N'女', 25627)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherNum], [TeacherName], [Gender], [TeacherNumID2]) VALUES (N'0115B77626494670A6E4ABE41D3C3FE0', N'35009', N'谭文丽', N'女', 25628)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherNum], [TeacherName], [Gender], [TeacherNumID2]) VALUES (N'0116BEC6DC424BF48A1A5EC3D134FDF3', N'', N'刘永红', N'未知', 25629)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherNum], [TeacherName], [Gender], [TeacherNumID2]) VALUES (N'011D33A637214D4F8A7DF550A83CD268', N'340051', N'李晖', N'男', 25630)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherNum], [TeacherName], [Gender], [TeacherNumID2]) VALUES (N'011E6F5B40AD4684AD9C161DEE5DE814', N'09021', N'曾艳', N'男', 25631)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherNum], [TeacherName], [Gender], [TeacherNumID2]) VALUES (N'011E96ED36CF434BAB9AAF107E989B55', N'18003', N'唐长青', N'男', 25632)
INSERT [dbo].[Teacher] ([TeacherID], [TeacherNum], [TeacherName], [Gender], [TeacherNumID2]) VALUES (N'01606E2F7296468DAC10F59D39DCE453', N'150007', N'侯立力', N'男', 25633)
SET IDENTITY_INSERT [dbo].[Teacher] OFF
INSERT [dbo].[TeacherDepartment] ([TeacherDepartmentID], [DepartmentID], [TeacherID]) VALUES (N'4CEA3704-9BE6-4660-8F98-AD582AE6E150', N'0082D288165C41F3A3D31FD826B131C2', N'0026F270F10F49088B4BBFA020803DC0')
INSERT [dbo].[TeacherDepartment] ([TeacherDepartmentID], [DepartmentID], [TeacherID]) VALUES (N'B13C2ABB-3D8C-4841-8F05-88708ED31694', N'0082D288165C41F3A3D31FD826B131C2', N'003003A192B64B8C9B58AE46745CA9C6')
INSERT [dbo].[TeacherDepartment] ([TeacherDepartmentID], [DepartmentID], [TeacherID]) VALUES (N'40B62852-46F2-4EA7-B8AE-B5494739709D', N'0082D288165C41F3A3D31FD826B131C2', N'004CBD9174BB4936B80739D6264E2338')
INSERT [dbo].[TeacherDepartment] ([TeacherDepartmentID], [DepartmentID], [TeacherID]) VALUES (N'79D9341D-EAA5-40D0-817D-176C6FFE8FC8', N'0082D288165C41F3A3D31FD826B131C2', N'004DD4C6FB494753B520208CC36A255E')
INSERT [dbo].[TeacherDepartment] ([TeacherDepartmentID], [DepartmentID], [TeacherID]) VALUES (N'AF06123D-0B15-4F3B-A171-8182855DE466', N'0082D288165C41F3A3D31FD826B131C2', N'006D40D347CB4002AE248FE97D069A38')
INSERT [dbo].[TeacherDepartment] ([TeacherDepartmentID], [DepartmentID], [TeacherID]) VALUES (N'C3D8F6FF-B968-4DBE-AF19-E2F5A3BF5C7E', N'0082D288165C41F3A3D31FD826B131C2', N'00AD3F3117A04A8D9C334816C9E391C8')
INSERT [dbo].[TeacherDepartment] ([TeacherDepartmentID], [DepartmentID], [TeacherID]) VALUES (N'6D21927D-E938-499B-B608-7CF05863E7B3', N'0082D288165C41F3A3D31FD826B131C2', N'00B6158A8EB14CA7A05BE163DFACA9F3')
INSERT [dbo].[TeacherDepartment] ([TeacherDepartmentID], [DepartmentID], [TeacherID]) VALUES (N'9288145C-CEFF-4F36-AC7A-935018C28F7D', N'0082D288165C41F3A3D31FD826B131C2', N'00BD73C0668D4F108A340FB238984B99')
INSERT [dbo].[TeacherDepartment] ([TeacherDepartmentID], [DepartmentID], [TeacherID]) VALUES (N'4DE7C455-F7E6-42CF-AE96-9ABDD44EDA6C', N'0082D288165C41F3A3D31FD826B131C2', N'00D2215FD77A4C789F3C28DB57FE1624')
INSERT [dbo].[TeacherDepartment] ([TeacherDepartmentID], [DepartmentID], [TeacherID]) VALUES (N'280A8CB9-C8EC-41AA-9F59-944E24DB6D58', N'0082D288165C41F3A3D31FD826B131C2', N'00FC78AEA4E248238C99363F5D4E2D85')
INSERT [dbo].[TeacherDepartment] ([TeacherDepartmentID], [DepartmentID], [TeacherID]) VALUES (N'87B2A266-508D-4E26-9A68-9C6528368BA4', N'0082D288165C41F3A3D31FD826B131C2', N'011086C04E3D4C10B50C0E2EF86998D2')
INSERT [dbo].[TeacherDepartment] ([TeacherDepartmentID], [DepartmentID], [TeacherID]) VALUES (N'86D4440B-72F7-4F13-A88F-2B9E76ECCD77', N'0082D288165C41F3A3D31FD826B131C2', N'0115B77626494670A6E4ABE41D3C3FE0')
INSERT [dbo].[TeacherDepartment] ([TeacherDepartmentID], [DepartmentID], [TeacherID]) VALUES (N'A18D01DF-DBA0-42D4-852B-60F1A7C348EF', N'0082D288165C41F3A3D31FD826B131C2', N'0116BEC6DC424BF48A1A5EC3D134FDF3')
INSERT [dbo].[TeacherDepartment] ([TeacherDepartmentID], [DepartmentID], [TeacherID]) VALUES (N'B9E07DC8-D9AD-4057-9B7D-D8F91D3BE80D', N'0082D288165C41F3A3D31FD826B131C2', N'011D33A637214D4F8A7DF550A83CD268')
INSERT [dbo].[TeacherDepartment] ([TeacherDepartmentID], [DepartmentID], [TeacherID]) VALUES (N'7148559E-A18E-465F-9165-8CF1227F66F0', N'0082D288165C41F3A3D31FD826B131C2', N'011E6F5B40AD4684AD9C161DEE5DE814')
INSERT [dbo].[TeacherDepartment] ([TeacherDepartmentID], [DepartmentID], [TeacherID]) VALUES (N'0A4EEC06-22D4-4D08-AA93-E56CAADD9250', N'0082D288165C41F3A3D31FD826B131C2', N'011E96ED36CF434BAB9AAF107E989B55')
INSERT [dbo].[TeacherDepartment] ([TeacherDepartmentID], [DepartmentID], [TeacherID]) VALUES (N'32AFB681-0CAB-40B6-A673-20BDF4D7F107', N'0082D288165C41F3A3D31FD826B131C2', N'01606E2F7296468DAC10F59D39DCE453')
SET IDENTITY_INSERT [dbo].[Textbook] ON 

INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'6F66F6C9-7CC7-4A90-AD1A-43D214DF3210', 1, N'9787121136382', N'电磁兼容原理与技术', N' 电子工业出版社 ', N'赵家升', N'第二版', N'1', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'73B322BC-B806-4148-9610-F5AFDFAB3D12', 2, N'9787502258290', N'医学放射生物学基础', N' 原子能出版社', N'苏燎原', N'第一版', N'1', CAST(48.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'75E2DCC2-95CF-4AEF-8541-25CCE3123EFE', 3, N'780159973', N'无机非金属材料工艺学', N'安徽教育 ', N'王琦', N'1', N'1', CAST(48.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'18ACC4F7-A5F0-494D-8F73-FA158C7571DA', 4, N'9787030276797', N'EDA技术实用教程—VHDL版', N'安徽教育出版社', N'潘松，黄继业', N'4', N'1', CAST(39.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'55F2493A-F486-4DEE-9BF9-38B66907F542', 5, N'9787030276797', N'EDA技术实用教程—VHDL版', N'安徽教育出版社', N'潘松，黄继业', N'第四版', N'1', CAST(39.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'89A5F842-DEE0-4963-A0B1-D1F20F9A4CB3', 6, N'9787030276797', N'EDA技术实用教程—VHDL版', N'安徽教育出版社', N'潘松，黄继业', N'第四版', N'第一次印刷', CAST(39.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'9559855B-2BC0-4B45-86D0-442A57613728', 7, N'9787030276797', N'EDA技术实用教程——VHDL版', N'安徽教育出版社', N'潘松，黄继业', N'4', N'1', CAST(39.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'6DB0675D-B3CB-4FC8-A60F-B0A24988545A', 8, N'9787504578877', N'电气安全工程', N'安徽教育出版社', N'钮英建', N'1', N'1', CAST(51.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'509EEAB2-B0FA-4D6E-B18F-74F5D1AEC969', 9, N'9787504578877', N'电气安全工程', N'安徽教育出版社', N'钮英建', N'第一版', N'1', CAST(51.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'085D27B0-4500-4B59-BCBD-6374AC5462C6', 10, N'978-7-307-10012-1', N'金 融 学(货币银行学）', N'安徽教育出版社', N'胡修', N'第一版', N'第一次印刷', CAST(39.80 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'7AC925D5-6B3A-418C-8470-44494302FA4C', 11, N'9787117127882', N'临床营养学', N'安徽教育出版社', N'焦广宇', N'第三版', N'第一次印刷', CAST(52.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'FBB58E99-BF3C-4DEA-9CAA-4A48369017AF', 12, N'7-5600-1862-9', N'实用英语语音语调', N'安徽教育出版社', N'张冠林  孙静渊', N'第一版', N'第六次印刷', CAST(21.90 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'D3966E4E-AFFD-4041-A423-8A20FEE85057', 13, N'9787112113118', N'印刷媒体设计', N'安徽教育出版社', N'吴建军', N'1', N'1', CAST(48.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'C45605DB-294A-4EB0-955A-B0270FDCDC93', 14, N'9787539812847', N'设计美学', N'安徽美术 ', N'李超德', N'0', N'1', CAST(30.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'EE6A68AF-B5BE-4092-AEE1-DE886D473E52', 15, N'9787539812847', N'设计美学', N'安徽美术 ', N'李超德', N'1', N'1', CAST(30.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'3339989B-2F73-4219-93AB-1E349796B17F', 16, N'9787539812847', N'设计美学', N'安徽美术出版社', N'李超德', N'第一版', N'1', CAST(30.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'03A2C507-0A38-4487-BBDF-9837E5AAB488', 17, N'9787565906473', N'口腔医学导论', N'北大医', N'冯海兰 ', N'2', N'1', CAST(22.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'4D29427B-156B-4688-8AF0-3B1919B23AA9', 18, N'0', N'医学遗传学', N'北大医', N'傅松滨', N'0', N'0', CAST(27.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'B8F4F2A5-F9B0-4C3F-8037-C52D7AB0CBBB', 19, N'9787565906855', N'医学遗传学', N'北大医', N'傅松滨', N'0', N'1', CAST(27.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'898E9CC4-FCC9-4797-9865-45776BDC34B5', 20, N'9787565906855', N'医学遗传学', N'北大医', N'傅松滨', N'1', N'1', CAST(27.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'C22BD483-431A-49AB-9227-5A594BE67BAB', 21, N'9787565906855', N'医学遗传学', N'北大医', N'傅松滨', N'3', N'1', CAST(27.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'1DB87519-6AC4-4D91-BF21-FB2EFA2F10C7', 22, N'78107158X', N'口腔医学导论', N'北大医学', N'冯海兰', N'1', N'1', CAST(21.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'74F2991B-DD7F-43D4-AD3D-B1B6C66E509E', 23, N'0', N'口腔医学导论', N'北大医学', N'冯海兰', N'1', N'1', CAST(21.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'8A7C5F09-4654-4801-9597-69563754547F', 24, N'978781071158', N'口腔医学导论', N'北大医学', N'冯海兰', N'1', N'1', CAST(21.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'AEDFB27B-2ABC-40D1-A804-BEFC5671EA73', 25, N'9787810711586', N'口腔医学导论', N'北大医学', N'冯海兰', N'第一版', N'第一次印刷', CAST(21.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'31C98FB1-1911-4462-AF84-B432C7EA72B6', 26, N'7811167238', N'医学遗传学', N'北大医学', N'傅松滨', N'2', N'1', CAST(25.50 AS Numeric(10, 2)), N'国家统编', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'BAF46960-83FF-4AA8-B316-5290CF5A74B6', 27, N'9787811167238', N'医学遗传学', N'北大医学', N'傅松滨', N'2', N'1', CAST(25.50 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'9BF8F5FF-85B4-4878-B62F-72C300D1A691', 28, N'781116723', N'医学遗传学', N'北大医学', N'傅松滨', N'2', N'1', CAST(25.50 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'75748654-257D-4416-BA1F-5DBE54B4B64D', 29, N'9787565906855', N'医学遗传学', N'北大医学', N'傅松滨', N'3', N'1', CAST(27.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'78362746-7472-435A-AFED-6264609DB341', 30, N'7565906855', N'医学遗传学', N'北大医学', N'傅松滨', N'3', N'1', CAST(27.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'C0508281-0012-494C-9399-BA97DCB60B4E', 31, N'7811160178', N'医学英语教程', N'北大医学', N'DAVIELLEN', N'', N'1', CAST(139.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'AF20A284-A32A-42A1-96B7-84E93E8FFACB', 32, N'9787800100178', N'医学英语教程', N'北大医学', N'Davi-Ellen', N'0', N'1', CAST(139.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'D16132C5-B57B-423A-B33E-294E856FCC8D', 33, N'9787800100178', N'医学英语教程', N'北大医学', N'Davi-Ellen', N'1', N'1', CAST(139.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'9AC06770-69CC-4C7C-AF37-DD329FB82D11', 34, N'9787512104006', N'立体构成', N'北方交通大学出版社', N'陈祖展', N'1', N'1', CAST(32.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'5B24B264-2970-4259-B339-FC1068E6C65F', 35, N'9787512104006', N'立体构成', N'北方交通大学出版社', N'陈祖展', N'第一版', N'1', CAST(32.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'60575EE1-FC0F-4F60-8385-BEFEEC4605C9', 36, N'0', N'新编计算机基础教程', N'北航大', N'周立功', N'0', N'0', CAST(32.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'53BFC098-C7B8-45CE-A09E-45055C7EF100', 37, N'9787512404939', N'新编计算机基础教程', N'北航大', N'周立功', N'1', N'1', CAST(32.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'781B6A19-EBB4-4FDC-97BA-15C3D1A6F251', 38, N'9787301145173', N'发展经济学', N'北京大学 ', N'张培刚', N'1', N'1', CAST(42.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'A9773D53-2C8F-4550-B822-FE4CF5CAF8D9', 39, N'9787301038453', N'法律社会学', N'北京大学 ', N'赵震江', N'1', N'1', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'4AA14CF4-1DFF-449F-8E5B-C5A42B79C0D1', 40, N'7301107552', N'钢结构设计原理', N'北京大学 ', N'石建军', N'1', N'1', CAST(32.00 AS Numeric(10, 2)), N'国家统编', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'941DD147-52E5-409E-AB5F-C5E994E007C8', 41, N'9787301201855', N'国际贸易实务', N'北京大学 ', N'李昭华', N'2', N'1', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'5D79050A-0A2E-40E2-A171-743BC1E87000', 42, N'9787301201855', N'国际贸易实务', N'北京大学', N'李昭华', N'2', N'1', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'E623B527-DCDF-4F51-8069-9688AA86881B', 43, N'9787301201855', N'国际贸易实务(第二版)', N'北京大学', N'李昭华', N'2', N'1', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'9100E4CD-4315-4DB6-8C62-78E98AEED8C6', 44, N'7301178737', N'国际商务谈判', N'北京大学 ', N'刘园', N'1', N'1', CAST(38.00 AS Numeric(10, 2)), N'国家统编', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'CB1FAA89-294C-419A-BCD3-8488878AE96D', 45, N'9787301178737', N'国际商务谈判', N'北京大学 ', N'刘园', N'1', N'1', CAST(38.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'EDF5FC73-604D-44DF-8299-BA4799F739DA', 46, N'9787301178737', N'国际商务谈判', N'北京大学', N'刘园', N'1', N'1', CAST(38.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'42A30C5E-497E-4E7B-B13F-5C200B5E9FA3', 47, N'9787301214046', N'国际投资学', N'北京大学', N'卢进勇', N'1', N'1', CAST(38.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'673AEA46-FA71-4E83-A0E7-84685619796F', 48, N'9787301224559', N'国际物流理论与实务', N'北京大学 ', N'江春雨', N'2', N'1', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'92AE81B1-A35B-4B04-86B7-A4DF45A2B186', 49, N'9787304224559', N'国际物流理论与实务', N'北京大学', N'江春雨', N'2', N'1', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'94453D37-7F4F-47C9-BAE8-3A423E73CD88', 50, N'9787301224557', N'国际物流理论与实务', N'北京大学', N'江春雨', N'2', N'1', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'A9999E05-1A71-4B11-BFCB-2A3EC548E326', 51, N'7301106270', N'核化学与放射化学', N'北京大学 ', N'王祥云', N'1', N'1', CAST(47.00 AS Numeric(10, 2)), N'国家统编', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'7E4D6F18-2422-4DAA-9CB9-E6F66E0D9FC2', 52, N'7-9787301106273', N'核化学与放射化学', N'北京大学 ', N'王祥云', N'1', N'1', CAST(47.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'E8132927-BF36-44CE-892C-3ACFE7FDF02B', 53, N'9787301106273', N'核化学与放射化学', N'北京大学 ', N'王祥云', N'1', N'1', CAST(47.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'BEDCA03F-5095-4849-A8E7-7A88161585C2', 54, N'9787301106273', N'核化学与放射化学', N'北京大学', N'王祥云', N'1', N'1', CAST(55.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'1EC94982-1FDE-40D0-BF27-1814E1F77BFC', 55, N'9787301126028', N'环境与资源保护法学', N'北京大学', N'张梓太 ', N'0', N'1', CAST(48.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'7EEA4DD2-8B26-4244-9155-A2FDA1EA65CE', 56, N'9787301126028', N'环境与资源保护法学', N'北京大学', N'张梓太 ', N'1', N'1', CAST(48.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'3F61700B-060C-488D-8261-02A62ED97046', 57, N'7301113005', N'基础工程', N'北京大学 ', N'王协群', N'1', N'1', CAST(32.00 AS Numeric(10, 2)), N'国家统编', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'564C776C-927E-4E57-BD59-6CD8FDABC9F8', 58, N'7301104758', N'建筑设备', N'北京大学 ', N'刘源全', N'1', N'1', CAST(35.00 AS Numeric(10, 2)), N'国家统编', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'E215E200-4FE4-4575-84AD-9FA2C98BAC2D', 59, N'730117847', N'建筑设备', N'北京大学 ', N'刘源全', N'2', N'1', CAST(46.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'CC595DAD-2659-40C1-B0A1-56A5F3704773', 60, N'9787301256884', N'经济学原理 （宏观经济学分册）', N'北京大学', N'曼昆', N'7', N'1', CAST(56.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'844B030E-7A12-4766-8103-8273EC8E0BC9', 61, N'7301085338', N'企业法学通论', N'北京大学 ', N'刘瑞复', N'1', N'1', CAST(38.00 AS Numeric(10, 2)), N'国家统编', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'28B05226-80EB-44B5-99C7-58B8EE35DC27', 62, N'9787301220627', N'世界经济概论', N'北京大学', N'崔日明', N'2', N'1', CAST(36.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'EF932368-6784-4E6C-B96C-3555D6CDA4ED', 63, N'7503848889', N'统计学原理', N'北京大学 ', N'刘晓利', N'1', N'1', CAST(28.00 AS Numeric(10, 2)), N'国家统编', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'6C42F091-F4B5-4959-8821-2BD17A57A875', 64, N'9787503848889', N'统计学原理', N'北京大学 ', N'刘晓利', N'1', N'1', CAST(28.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'4F65D12B-22F4-4002-BF35-D4898BE318B9', 65, N'9787503848889', N'统计学原理', N'北京大学', N'刘晓利', N'1', N'2', CAST(28.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'200FB1CC-4943-4FFD-93BD-C0B14515B9D0', 66, N'9787301251140', N'统计学原理', N'北京大学', N'刘晓利', N'2', N'1', CAST(36.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'DC37AB2B-5A36-4753-89D8-5E6F2BA8B3BF', 67, N'9787301174715', N'土木工程材料', N'北京大学 ', N'柯国军', N'2', N'1', CAST(45.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'438A234C-8185-483E-A6A3-04F4115FA984', 68, N'730120947', N'土木工程概预算与投标报价', N'北京大学 ', N'叶良 刘薇', N'2', N'1', CAST(37.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'176785FF-3ABB-479E-9D89-C0B564F6B36A', 69, N'7301066821', N'外国法制史', N'北京大学 ', N'由嵘', N'3', N'1', CAST(42.00 AS Numeric(10, 2)), N'国家统编', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'6CA54514-644C-4F5F-89D0-0FFBC935E1D1', 70, N'9787301165645', N'物流管理信息系统', N'北京大学', N'杜彦华', N'1', N'1', CAST(33.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'238BE5EC-43FD-4E6D-B451-7BAA21C1B93A', 71, N'9787301185001', N'物流信息系统', N'北京大学', N'修桂华', N'1', N'1', CAST(32.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'927DFEF2-6044-447F-89D2-8F7C28596897', 72, N'9787301026080', N'西方美学史教程', N'北京大学 ', N'李醒尘', N'2', N'1', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'F5434AB4-B238-454D-ACB9-84EFB997089A', 73, N'9787301026080', N'西方美学史教程', N'北京大学', N'李醒尘', N'2', N'1', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'16344E44-003E-4904-A78E-FC99BB5E09A0', 74, N'9787301170052', N'系统工程', N'北京大学 ', N'王众托', N'1', N'1', CAST(29.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'600438F7-EC51-46D0-8F94-EB3A56DD9139', 75, N'9787301238486', N'现代物流信息技术', N'北京大学', N'王道平', N'1', N'1', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'A1188436-B93D-4604-A9E1-9684C8D7DA28', 76, N'9787301238480', N'现代物流信息技术', N'北京大学', N'王道平', N'2', N'1', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'87E7AE38-B726-4D66-9E3A-7272624CBAB3', 77, N'9787301213063', N'新编电子商务概论', N'北京大学 ', N'张万民', N'1', N'1', CAST(34.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'0789FE6D-0D39-473D-B899-B5DDB0043033', 78, N'9787301150856', N'新编英美概况教程', N'北京大学 ', N'周叔麟', N'2', N'1', CAST(40.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'F172FF4D-A18D-4C34-BBCB-37BD0AEF9E13', 79, N'9787301209332', N'新制度经济学', N'北京大学 ', N'卢现详', N'2', N'1', CAST(49.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'ABD9B907-8AFA-4E87-B336-BD53863BA02F', 80, N'9787301209332', N'新制度经济学', N'北京大学', N'卢现详', N'2', N'1', CAST(49.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'4690FB9E-591A-43AF-9F72-0389BCBD4578', 81, N'9787301116524', N'薪酬管理', N'北京大学 ', N'张正堂', N'1', N'1', CAST(33.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'B2D7C926-7382-427D-8519-1BD59776E4ED', 82, N'9787301106983', N'刑法学', N'北京大学 ', N'高铭暄', N'5', N'1', CAST(59.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'252D1369-EA9A-42AE-A10C-39A0A88E28F9', 83, N'9787301225707', N'刑事诉讼法', N'北京大学', N'陈光中', N'5', N'1', CAST(49.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'9FD1D937-6196-4E40-A9D5-8FEB18223C5A', 84, N'9787301268785', N'刑事诉讼法', N'北京大学', N'陈光中', N'6', N'1', CAST(56.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'79F02FB0-BD5E-4677-B156-9196C192433A', 85, N'9787301161203', N'行政法与行政诉讼法', N'北京大学', N'方世荣', N'2', N'1', CAST(49.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'36ACCB51-4EB9-46F2-8C93-E997656FCB3E', 86, N'9787301262009', N'行政法与行政诉讼法', N'北京大学', N'方世荣', N'3', N'1', CAST(59.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'9EF4059F-81EC-4D33-B82A-FE94C9393D9A', 87, N'7303034633', N'语言学基础理论', N'北京大学 ', N'岑运强', N'2', N'1', CAST(32.00 AS Numeric(10, 2)), N'国家统编', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'E330F81D-7F68-452B-BEDD-B583978BD3D7', 88, N'7303034633', N'语言学基础理论(修订版)', N'北京大学', N'岑运强', N'2', N'1', CAST(32.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'D39AC026-4967-49E0-87A4-A3B46BC271EB', 89, N'7303034633', N'语言学基础理论(修订版)', N'北京大学', N'岑运强', N'2', N'3', CAST(32.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'18358095-B5B1-4F8B-9264-EBB811B51120', 90, N'7301175439', N'语言学教程', N'北京大学 ', N'胡壮麟', N'4', N'1', CAST(38.00 AS Numeric(10, 2)), N'国家统编', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'8AFDBF7C-C064-4EA7-8300-3C2AB1472E31', 91, N'9787301175439', N'语言学教程', N'北京大学', N'胡壮麟', N'4', N'1', CAST(38.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'C919B018-1E57-45E7-83B3-C797B6992208', 92, N'9787301175439', N'语言学教程（英文版）', N'北京大学 ', N'胡壮麟', N'4', N'1', CAST(38.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'8FE81D1F-8337-449B-BCD3-4E4FDC306FC3', 93, N'9787301121665', N'中国当代文学史', N'北京大学 ', N'洪子诚', N'1', N'1', CAST(28.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'DEC79102-F8F3-4764-B29C-3975399C06DF', 94, N'7301022859', N'中国古文字学通论', N'北京大学 ', N'高明', N'1', N'1', CAST(55.00 AS Numeric(10, 2)), N'国家统编', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'9974E87C-7C13-4AFD-9326-2B5B309BC5C6', 95, N'7301022859', N'中国古文字学通论', N'北京大学', N'高明', N'1', N'1', CAST(55.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'044F6FF6-1DFF-493E-974A-9073515363D8', 96, N'7301022859', N'中国古文字学通论', N'北京大学', N'高明', N'1', N'1', CAST(66.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'F93F732C-90C8-455B-8F7F-E1C05F1DC03C', 97, N'7301036701', N'中国现代文学三十年（修订版）', N'北京大学 ', N'钱理群', N'1', N'1', CAST(38.00 AS Numeric(10, 2)), N'国家统编', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'C45C9A3F-DFDB-4CC5-971B-44E36A201570', 98, N'9787301036701', N'中国现代文学三十年(修订版)', N'北京大学', N'钱理群', N'1', N'1', CAST(38.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'C68343C1-2AB6-4477-8870-77A090FDC907', 99, N'9787301036701', N'中国现代文学三十年(修订版)', N'北京大学', N'钱理群', N'1', N'10', CAST(38.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
GO
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'064C82FD-AC6B-4A76-A051-12A3D00C3AA4', 100, N'9787301179772', N'产品创意设计', N'北京大学出版社', N'虞世鸣', N'第一版', N'第一次印刷', CAST(38.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'1BD67BF7-901D-4FE4-86AC-82676DBBBC89', 101, N'978-7-301-17232-2', N'创意思维', N'北京大学出版社', N'胡雨霞', N'1', N'1', CAST(38.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'4CEF5745-0371-4071-A979-C935BB200B34', 102, N'9787301172322', N'创意思维', N'北京大学出版社', N'胡雨霞', N'第一版', N'第一次印刷', CAST(38.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'03DD3963-817B-4A5E-9B21-5BE55257785B', 103, N'9787301154731', N'等离子体物理', N'北京大学出版社', N'郑春开', N'第一版', N'1', CAST(25.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'9C1D0DFD-E05B-45C9-8709-14A30F405E87', 104, N'9787301154731 ', N'等离子体物理', N'北京大学出版社', N'郑春开', N'第一版', N'1', CAST(25.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'CD2B7FB1-1EC2-41CA-8232-CC094C2D9A2D', 105, N'730115473', N'等离子体物理学', N'北京大学出版社', N'郑春开', N'1', N'1', CAST(25.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'4A43A266-4D09-4888-8F88-3C34E3E701EA', 106, N'9787301154731', N'等离子体物理学', N'北京大学出版社', N'郑春开', N'第一版', N'第一次印刷', CAST(25.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'722699A4-BA99-4510-A742-DA9CF3F28DF3', 107, N'9787301145173', N'发展经济学', N'北京大学出版社', N'张培刚', N'1', N'1', CAST(40.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'F6FC9A55-F058-4CFA-B15E-CCE255D6DE14', 108, N'9787301145173', N'发展经济学', N'北京大学出版社', N'张培刚;张建华', N'1', N'1', CAST(42.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'A61D25B0-1357-441E-A8FC-458755B5580B', 109, N'9787301145173', N'发展经济学', N'北京大学出版社', N'张培刚;张建华', N'第一版', N'1', CAST(42.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'AE1DD1DE-9D6F-426F-A7A0-B0A06ACDA05C', 110, N'9787301145173', N'发展经济学', N'北京大学出版社', N'张培刚;张建华', N'第一版', N'第一次印刷', CAST(42.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'B5BE8CEA-6D8A-4F11-81BE-3EE6BC6357BA', 111, N'9787301084328', N'法侓伦理与职业道德', N'北京大学出版社', N'李本森', N'1', N'1', CAST(22.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'2911F1BB-8721-4C7C-9B89-08605F284192', 112, N'7301038453/D.0392', N'法律社会学', N'北京大学出版社', N'赵震江', N'第一版', N'第七次印刷', CAST(35.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'8D1EC188-3412-424F-B02D-982C04834ADA', 113, N'9787301104088', N'犯罪学', N'北京大学出版社', N'康树华、张小虎', N'第一版', N'第一次印刷', CAST(38.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'337FF2EA-5559-4EB0-8624-D595E7D5EBAE', 114, N'700110755', N'刚结构设计原理', N'北京大学出版社', N'石建军、姜袁', N'1', N'1', CAST(32.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'8873B4C7-8829-4F27-A5AD-9F7E5B910F9D', 115, N'978730110755', N'钢结构设计原理', N'北京大学出版社', N'石建军', N'1', N'1', CAST(32.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'00FD06EE-08C8-4600-9B9A-B18C95AA084A', 116, N'9787301107553', N'钢结构设计原理', N'北京大学出版社', N'石建军', N'1', N'1', CAST(32.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'83E0DF61-342C-4FEA-8547-3BD5EAAF2A37', 117, N'730110755', N'钢结构设计原理', N'北京大学出版社', N'石建军，姜袁　主编', N'1', N'1', CAST(32.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'44EE8581-039B-4B57-8353-F8FD3D339AF1', 118, N'730110755', N'钢结构设计原理', N'北京大学出版社', N'石建军，姜袁　主编', N'第一版', N'1', CAST(32.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'E695FF61-FE0B-4C7A-BABF-BD4C0B0C34BD', 119, N'730110755', N'钢结构设计原理', N'北京大学出版社', N'石建军，姜袁　主编', N'第一版', N'第一次印刷', CAST(32.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'C4E764F6-542A-493C-9330-29419F771AB9', 120, N'9787301107553', N'钢结构设计原理', N'北京大学出版社', N'石建军，姜袁　主编', N'第一版', N'第一次印刷', CAST(32.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'C340D64F-C95E-4B90-ABD1-A3A42C889197', 121, N'9787301107553', N'钢结构设计原理', N'北京大学出版社', N'石建军姜袁', N'1', N'1', CAST(32.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'5F4CBE95-CDC3-4345-896B-4CAFDE1386EA', 122, N'9787301211168', N'工程材料力学性能', N'北京大学出版社', N'莫淑华', N'第一版', N'1', CAST(32.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'3BFF709F-0456-4CDB-A973-2AD5595F4232', 123, N'730110517', N'工程地质', N'北京大学出版社', N'何培玲\张婷', N'第一版', N'第二次印刷', CAST(20.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'FDCA24F8-437B-4325-9DD7-E25095788D5E', 124, N'978730110517', N'工程地质', N'北京大学出版社', N'何培玲\张婷', N'第一版', N'第二次印刷', CAST(26.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'95BEFA89-1B60-4D12-B1EE-56CE3D1A763B', 125, N'9787301107430', N'工程合同管理', N'北京大学出版社', N'方俊，胡向真', N'1', N'1', CAST(23.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'8B1FCB46-E27A-439E-877C-B9D6CCF0364F', 126, N'9787301107430', N'工程合同管理', N'北京大学出版社', N'方俊，胡向真', N'第一版', N'第一次印刷', CAST(23.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'B656E79F-BE70-4DEE-B89F-93F46806BD96', 127, N'9787301157442', N'固体物理学', N'北京大学出版社', N'黄昆', N'第一版', N'1', CAST(30.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'07EAB600-B61F-4E69-A0F4-32C0C74E081C', 128, N'978-7-301-15744-2', N'固体物理学', N'北京大学出版社', N'黄昆', N'第一版', N'1', CAST(50.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'0D00A355-2D14-4D35-AEF6-AB0698D02C4E', 129, N'9787301201855', N'国际贸易实务', N'北京大学出版社', N'李昭华', N'1', N'1', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'F9581A6C-BC37-46EE-8C6D-167F3E03B448', 130, N'9787301201855', N'国际贸易实务', N'北京大学出版社', N'李昭华', N'2', N'1', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'DECE0464-B1E9-4E9F-BFEF-FCE524450A91', 131, N'9787301201855', N'国际贸易实务(第二版)', N'北京大学出版社', N'李昭华', N'2', N'1', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'FFE4644D-85B7-4824-99A2-8C435F626710', 132, N'9787301201855', N'国际贸易实务(第二版)', N'北京大学出版社', N'李昭华,潘小春', N'2', N'1', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'A48E1D9D-0590-4049-8E74-63BA42C2F069', 133, N'9787301201855', N'国际贸易实务(第二版)', N'北京大学出版社', N'李昭华,潘小春', N'第二版', N'1', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'50CA94AF-30CF-42A8-9499-7DEED141037C', 134, N'9787301201855', N'国际贸易实务(第二版)', N'北京大学出版社', N'李昭华,潘小春', N'第二版', N'第一次印刷', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'1C2071C2-0B9D-4445-97AD-CA500124D681', 135, N'9787301178737', N'国际商务谈判', N'北京大学出版社', N'刘园', N'1', N'1', CAST(38.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'28EE5B54-E3F5-4F54-8F5D-C66F8D0B201C', 136, N'9787301178737', N'国际商务谈判', N'北京大学出版社', N'刘园', N'第一版', N'第一次印刷', CAST(38.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'672BB90C-1EE9-449F-8755-8E33DD259290', 137, N'9787301224557', N'国际物流理论与实务', N'北京大学出版社', N'江春雨', N'1', N'1', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'58EE4E62-6A05-46AA-8545-491E19CE8E79', 138, N'9787301136423', N'国际物流理论与实务', N'北京大学出版社', N'江春雨', N'第一版', N'第一次印刷', CAST(29.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'31C64AC2-9583-4629-949A-306DA8CC2328', 139, N'9787301224557', N'国际物流理论与实务', N'北京大学出版社', N'江春雨', N'第一版', N'第一次印刷', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'0DF26B67-E684-48C4-8F68-BCE069ADE5BA', 140, N'9787301136423', N'国际物流理论与实务', N'北京大学出版社', N'江春雨。王春萍', N'1', N'1', CAST(29.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'5223A3B0-CE91-4B6D-910A-9719E4C2286A', 141, N'9787301136423', N'国际物流理论与实务', N'北京大学出版社', N'江春雨。王春萍', N'第一版', N'第一次印刷', CAST(29.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'957E92D5-5AF5-4FF3-A6C5-24609EA0AED6', 142, N'97873011062731/O', N'核化学与放射化学', N'北京大学出版社', N'王祥云', N'1', N'1', CAST(47.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'E0E38160-4CBE-41DC-B664-56767E940BE6', 143, N'9787301106273', N'核化学与放射化学', N'北京大学出版社', N'王祥云', N'第一版', N'1', CAST(47.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'5C58F4F2-8E06-465A-813E-F39994DF15AF', 144, N'9787301106273', N'核化学与放射化学', N'北京大学出版社', N'王祥云', N'第一版', N'1', CAST(55.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'75C0B364-9BB5-4B40-B77A-3B4F30A86C4F', 145, N'9787301106273', N'核化学与放射化学', N'北京大学出版社', N'王祥云', N'第一版', N'第一次印刷', CAST(47.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'BEAEB941-6A2E-4AD4-83E8-521FABF61813', 146, N'7301106270', N'核化学与放射化学', N'北京大学出版社', N'王祥云', N'第一版', N'第一次印刷', CAST(47.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'B6D0AFE1-61DB-48A1-9D45-36B18F64D2E9', 147, N'9787301126028', N'环境与资源保护法学', N'北京大学出版社', N'张梓太 ', N'1', N'1', CAST(48.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'61800A75-BF85-4EFB-ABAA-28030F3DFBD1', 148, N'9787301126028', N'环境与资源保护法学', N'北京大学出版社', N'张梓太 ', N'第一版', N'第一次印刷', CAST(48.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'F84103E4-41DB-49F7-8F44-6F9EE8FC89FC', 149, N'9787301216569', N'基础工程', N'北京大学出版社', N'曹云', N'第一版', N'第一次印刷', CAST(43.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'5AE04BB6-AB43-4140-9120-B63F8FA8AE7F', 150, N'9787301216569', N'基础工程', N'北京大学出版社', N'王协群', N'1', N'1', CAST(43.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'18901DC2-583B-47D0-86A6-C4498E7E8DC5', 151, N'730111300', N'基础工程', N'北京大学出版社', N'王协群，章宝华', N'1', N'1', CAST(32.00 AS Numeric(10, 2)), N'部级统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'35EE50F6-6662-4CCC-987C-5EB2D04BA891', 152, N'730111300', N'基础工程', N'北京大学出版社', N'王协群，章宝华', N'第一版', N'第一次印刷', CAST(32.00 AS Numeric(10, 2)), N'部级统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'6D158FC6-BFBD-458A-961E-60BFCCC870F3', 153, N'97873011113004', N'基础工程', N'北京大学出版社', N'王协群，章宝华', N'第一版', N'第一次印刷', CAST(32.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'ECC4B9EF-B5E3-4C6B-8CFD-40E403924FF4', 154, N'978730111300', N'基础工程', N'北京大学出版社', N'王协群，章宝华', N'第一版', N'第一次印刷', CAST(32.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'842FCB73-6D9E-4C7D-8A97-47B2D5795A40', 155, N'730111300', N'基础工程', N'北京大学出版社', N'王协群，章宝华', N'第一版', N'第一次印刷', CAST(43.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'CEB38CB3-7A1F-45D4-949A-2DBD87705FE9', 156, N'730111300', N'基础工程', N'北京大学出版社', N'王协群、章宝华', N'1', N'1', CAST(32.90 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'5592B893-6BD2-470B-AD5C-A5FFCCFD25C2', 157, N'730111300', N'基础工程', N'北京大学出版社', N'王协群、章宝华', N'1', N'1', CAST(32.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'32D00F0B-3FAE-4421-BE9E-93884E66B9BA', 158, N'9787301212707', N'加速器物理基础', N'北京大学出版社', N'陈佳洱', N'第一版', N'1', CAST(80.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'90B5FF99-2798-422B-972C-5BD80CCE65BC', 159, N'9787301178478', N'建筑设备', N'北京大学出版社', N'刘源全', N'2', N'1', CAST(46.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'901B7738-4D93-449B-B23A-BF3513AFECC9', 160, N'9787301178478', N'建筑设备', N'北京大学出版社', N'刘源全 ', N'第二版', N'1', CAST(46.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'92DA1DD6-DE7D-4E17-9F47-04DC1A91CB3F', 161, N'9787301178478', N'建筑设备', N'北京大学出版社', N'刘源全  ', N'第二版', N'1', CAST(46.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'786AD270-47C5-467B-8B4D-6AB4728F5727', 162, N'9787301178478', N'建筑设备', N'北京大学出版社', N'刘源全', N'第二版', N'1', CAST(46.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'D6A63351-DD29-47ED-BFF2-5A48CDAA3D5C', 163, N'9787301178478', N'建筑设备', N'北京大学出版社', N'刘源全  刘卫斌', N'第二版', N'第二次印刷', CAST(46.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'841EA7E4-0BB4-4AFC-9284-A8455CC41B90', 164, N'978-7-301-17847-8/TU', N'建筑设备', N'北京大学出版社', N'刘源全  刘卫斌', N'第二版', N'第二次印刷', CAST(46.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'F127FD00-CEDD-41B9-90B0-1341031E5DA0', 165, N'978-7-301-17847-8', N'建筑设备', N'北京大学出版社', N'刘源全  刘卫斌', N'第二版', N'第一次印刷', CAST(46.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'011F8A03-A551-465C-99E5-F4412BC4DB94', 166, N'7301104758', N'建筑设备', N'北京大学出版社', N'刘源全 张国军等', N'1', N'1', CAST(35.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'7A28FF40-760A-4639-B023-5A23FA2B95C3', 167, N'7301104758', N'建筑设备', N'北京大学出版社', N'刘源全 张国军等', N'第一版', N'第二次印刷', CAST(46.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'8B52163E-435C-40B0-8685-E132B5F9C677', 168, N'978-7-301-17847-8/TU', N'建筑设备', N'北京大学出版社', N'刘源全、刘卫兵', N'2', N'1', CAST(46.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'2E4D2CA0-0DE9-4B7D-B265-C484369D0F43', 169, N'9787301178478', N'建筑设备', N'北京大学出版社', N'刘源全、张国军', N'第二版', N'1', CAST(46.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'84256742-D338-4A30-8B24-B0F9501C7816', 170, N'7301104758', N'建筑设备', N'北京大学出版社', N'刘源全、张国军、张志红、王五全', N'1', N'1', CAST(35.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'6D89820E-5BC2-4B91-878F-879E17D73766', 171, N'7-301-10475-8', N'建筑设备', N'北京大学出版社', N'刘源全、张国军、张志红、王五全', N'1', N'1', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'CDE94D72-8F63-44BF-8F35-8F8E8F580D8B', 172, N'7-301-10475-8', N'建筑设备', N'北京大学出版社', N'刘源全、张国军、张志红、王五全', N'1', N'1', CAST(46.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'C617E1B9-CEB0-4CB1-B14E-5DC2D02076AD', 173, N'9787301178478', N'建筑设备', N'北京大学出版社', N'刘源全、张国军、张志红、王五全', N'第一版', N'第六次印刷', CAST(46.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'06B44F4A-8B89-4351-8A42-18691C25E4F2', 174, N'7-301-10475-8', N'建筑设备', N'北京大学出版社', N'刘源全、张国军、张志红、王五全', N'第一版', N'第六次印刷', CAST(46.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'F1AC6F3F-9D3E-4431-BC66-42925C971641', 175, N'7-301-10475-8', N'建筑设备', N'北京大学出版社', N'刘源全、张国军、张志红、王五全', N'第一版', N'第一次印刷', CAST(46.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'5860C3AF-28BE-4DF3-A58C-0E4E6F7F3C36', 176, N'9787301184844', N'经济法', N'北京大学出版社', N'李玉基', N'第一版', N'第二次印刷', CAST(49.00 AS Numeric(10, 2)), N'部级统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'10D4BFDB-BED5-4AEE-B3B6-F41D9BC8E46A', 177, N'9787301155318', N'跨文化管理', N'北京大学出版社', N'王朝晖', N'1', N'1', CAST(38.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'034770A8-B74E-4D21-8A70-FD9F6F192C92', 178, N'9787301155318', N'跨文化管理', N'北京大学出版社', N'王朝晖　', N'第一版', N'第一次印刷', CAST(38.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'B80DB13A-EE81-4215-B8DF-1E96FCE48D57', 179, N'9787301155318', N'跨文化管理', N'北京大学出版社', N'王朝晖　', N'第一版', N'第一次印刷', CAST(49.60 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'584264C1-C52A-4DD3-9E87-C51CE690CB33', 180, N'9787301046937', N'民法', N'北京大学出版社', N'魏振灜', N'第四版', N'第一次印刷', CAST(59.80 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'D331B331-2769-402E-8908-6BEF92DA1FC3', 181, N'9787301182949', N'普通地质学', N'北京大学出版社', N'吴泰然', N'第二版', N'1', CAST(45.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'42F8ECA5-A767-40E0-9899-232811E77A4F', 182, N'9787301206591', N'人机界面设计', N'北京大学出版社', N'张丽', N'1', N'1', CAST(25.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'D9AD1980-1087-49CA-A6CB-1B2FBF043B07', 183, N'9787301206591', N'人机界面设计', N'北京大学出版社', N'张丽', N'第一版', N'1', CAST(25.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'A0BE1EC1-E263-421F-978F-A4E12CD8AFA6', 184, N'9787301206591', N'人机界面设计', N'北京大学出版社', N'张丽', N'第一版', N'第一次印刷', CAST(25.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'4E797F75-6A42-496B-863F-D8A43D3F48B5', 185, N'9787301196083', N'人权法学(21世纪法学系列教材)/', N'北京大学出版社', N'白桂梅', N'第一版', N'第一次印刷', CAST(38.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'A2B79B5D-45F2-4058-9D6E-B72A591A6210', 186, N'9787301182413', N'日本动漫产业与动漫文化研究', N'北京大学出版社', N'李常订', N'第一版', N'第一次印刷', CAST(39.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'F681DE2B-FD48-473D-9745-F19B4B3878D5', 187, N'9787301225202', N'摄影摄像基础', N'北京大学出版社', N'燕频', N'第一版', N'1', CAST(57.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'AD754B3F-C438-4295-A36E-4D608CDF8D49', 188, N'9787301112724', N'世界经济史', N'北京大学出版社', N'萧国亮，隋福民', N'第一版', N'第一次印刷', CAST(48.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'84D90118-6024-4C3B-9F2E-1FC85B0CA0D2', 189, N'9787301167472', N'书籍装帧设计', N'北京大学出版社', N'柳林 ', N'第一版', N'1', CAST(34.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'EE256CB4-3777-4FAE-A82C-6C08BED158BF', 190, N'9787301167472', N'书籍装帧设计', N'北京大学出版社', N'柳林 赵全宜 明兰', N'第一版', N'第一次印刷', CAST(34.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'C0096CE3-1361-4DA4-AA27-AAD4810D6DC1', 191, N'9787031078552', N'数值计算方法与上机实习指导', N'北京大学出版社', N'肖筱南', N'1', N'1', CAST(15.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'3D03CC0D-BA2D-408F-942B-EC860BE2DA8A', 192, N'9787301078556', N'数值计算方法与上机实习指导', N'北京大学出版社', N'肖筱南', N'第一版', N'1', CAST(15.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'ABE14FE1-22A9-403A-BDC2-7BA18D980742', 193, N'9787503848889', N'统计学原理', N'北京大学出版社', N'刘晓利', N'1', N'1', CAST(28.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'643BA719-96B6-4554-A527-7ADFFEABD100', 194, N'9787301251140', N'统计学原理', N'北京大学出版社', N'刘晓利', N'2', N'1', CAST(36.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'4037849D-E0AD-4171-9800-21A149449EC3', 195, N'9787503848889', N'统计学原理', N'北京大学出版社', N'刘晓利', N'第一版', N'1', CAST(28.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'93BD892A-36E0-41A5-BB0D-B4422BB6BB7E', 196, N'978750384888', N'统计学原理', N'北京大学出版社', N'刘晓利主编', N'1', N'1', CAST(28.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'D003EF77-C636-4A64-8D2E-97FACDFCB33C', 197, N'978-7-5038-4888', N'统计学原理', N'北京大学出版社', N'刘晓利主编', N'1', N'1', CAST(28.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'D785AB11-F9D3-4FDA-A608-751E8342E46A', 198, N'978－7－5038－4888－', N'统计学原理', N'北京大学出版社', N'刘晓利主编', N'1', N'1', CAST(28.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'6D018948-9EBF-44FD-9778-32A133EEB4DC', 199, N'978－7－5038－4888－', N'统计学原理', N'北京大学出版社', N'刘晓利主编', N'第一版', N'1', CAST(28.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
GO
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'705102B5-96A0-4B6D-92A7-F9FF8AC9BA3D', 200, N'978750384888', N'统计学原理', N'北京大学出版社', N'刘晓利主编', N'第一版', N'第二次印刷', CAST(28.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'A4A445B1-08F6-423B-83D4-63C86E623362', 201, N'9787503848889', N'统计学原理', N'北京大学出版社', N'刘晓利主编', N'第一版', N'第二次印刷', CAST(28.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'D5224F78-3A20-44AB-89A3-E321453A5024', 202, N'978－7－5038－4888－', N'统计学原理', N'北京大学出版社', N'刘晓利主编', N'第一版', N'第二次印刷', CAST(28.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'07689470-F283-4E3D-97BC-8C1187D34F8A', 203, N'978－7－5038－48889', N'统计学原理', N'北京大学出版社', N'刘晓利主编', N'第一版', N'第一次印刷', CAST(28.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'A75FE55A-CBA4-47D3-BDCF-54572F498CBC', 204, N'978-7-5038-4888-', N'统计学原理', N'北京大学出版社', N'刘晓利主编', N'第一版', N'第一次印刷', CAST(28.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'31D68268-EF7F-4E8D-B770-998DC48146E8', 205, N'73301173558', N'土力学', N'北京大学出版社', N'高向阳', N'1', N'1', CAST(32.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'25A43F0B-F3D0-4218-A2ED-E04076FD0B99', 206, N'7301104485/TU.002', N'土力学', N'北京大学出版社', N'高向阳', N'第一版', N'第一次印刷', CAST(32.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'C8C8B6C0-D7FE-4B02-8713-933DBD33519F', 207, N'9787301236697', N'土力学', N'北京大学出版社', N'肖仁成', N'2', N'1', CAST(25.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'74F94923-3539-43C4-9A85-780B00C07B5E', 208, N'9787301104484', N'土力学', N'北京大学出版社', N'肖仁成', N'第一版', N'第一次印刷', CAST(18.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'9EDDCF84-27F5-44FB-84AD-8038804A2FF5', 209, N'730110437', N'土木工程材料', N'北京大学出版社', N'柯国军', N'1', N'1', CAST(35.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'1CF87AA3-6446-4B8E-8600-62C07C4E7F68', 210, N'9787301174715', N'土木工程材料', N'北京大学出版社', N'柯国军', N'1', N'1', CAST(45.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'6DD632F8-CB9F-408E-A8A9-F3FCFEA06746', 211, N'730110437', N'土木工程材料', N'北京大学出版社', N'柯国军', N'2', N'1', CAST(35.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'0C9DCD14-9FCE-4B5A-8520-3747FBEBE86F', 212, N'730110437', N'土木工程材料', N'北京大学出版社', N'柯国军', N'2', N'1', CAST(45.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'D058D591-BB88-49F1-BC7E-A3E992D8BCE1', 213, N'9787301174715', N'土木工程材料', N'北京大学出版社', N'柯国军', N'2', N'1', CAST(45.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'D3F1CCB7-E21B-4C5E-9E9F-D202276E60F6', 214, N'730110437', N'土木工程材料', N'北京大学出版社', N'柯国军', N'第二版', N'1', CAST(45.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'1AAF73B3-6C70-4505-A998-490E30F9D7A7', 215, N'9787301174715', N'土木工程材料', N'北京大学出版社', N'柯国军', N'第二版', N'1', CAST(45.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'0F2F51E1-A8F4-4B0E-BB7D-7ECB3FB9AB83', 216, N'9787301774715', N'土木工程材料', N'北京大学出版社', N'柯国军', N'第二版', N'1', CAST(45.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'05B04111-AAC1-4BFC-BA85-84C06A99BA3F', 217, N'730110437', N'土木工程材料', N'北京大学出版社', N'柯国军', N'第二版', N'第二次印刷', CAST(35.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'FEE033BB-FB87-4D4C-861B-6F7B1E5082E5', 218, N'9787301174715', N'土木工程材料', N'北京大学出版社', N'柯国军', N'第二版', N'第二次印刷', CAST(45.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'70FDE3F2-B64B-4585-A7F8-D6352EE0EB0C', 219, N'9787301230398', N'土木工程地质', N'北京大学出版社', N'陈文昭', N'1', N'1', CAST(32.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'70369EA5-EE8D-4A11-9858-797567104306', 220, N'9787301230398', N'土木工程地质', N'北京大学出版社', N'陈文昭', N'第一版', N'1', CAST(32.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'41AE009D-55E5-40EE-A316-898E83C64AF2', 221, N'978730120947', N'土木工程概预算与投标报价', N'北京大学出版社', N'叶良', N'第二版', N'1', CAST(37.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'EFC7CD86-43EC-44B7-A1BF-D46CC9BB24CB', 222, N'9787301209479', N'土木工程概预算与投标报价', N'北京大学出版社', N'叶良，刘薇　', N'第二版', N'1', CAST(37.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'5BC16B82-BAAE-421F-B4F8-B88BBDDF1B3A', 223, N'9787301123348', N'土木工程概预算与投标报价', N'北京大学出版社', N'叶良，刘薇　主编', N'1', N'1', CAST(28.00 AS Numeric(10, 2)), N'部级统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'A056BCB2-D434-4F59-BCD7-69F4A7DC31EE', 224, N'9787301113448', N'土木工程施工', N'北京大学出版社', N'邓寿昌', N'1', N'1', CAST(42.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'56F2791A-2DAE-4908-B5F2-F7F17E8E46D4', 225, N'97877301113448', N'土木工程施工', N'北京大学出版社', N'邓寿昌,李晓目', N'1', N'3', CAST(42.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'6793FDB2-8206-4B8B-A2E6-882797129424', 226, N'9787301113448', N'土木工程施工', N'北京大学出版社', N'邓寿昌,李晓目', N'第一版', N'第三次印刷', CAST(42.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'F8E00E05-0802-4225-88DD-FD1DB79CDBB1', 227, N'9787301113448', N'土木工程施工', N'北京大学出版社', N'邓寿昌,李晓目', N'第一版', N'第一次印刷', CAST(42.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'45503EB2-FC3C-487F-8F78-9480BA847830', 228, N'9787301185001', N'物流信息系统', N'北京大学出版社', N'修桂华，姜颖', N'1', N'1', CAST(32.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'53D4A55C-9679-40A8-8741-F2BD41CE49CD', 229, N'9787301185001', N'物流信息系统', N'北京大学出版社', N'修桂华，姜颖', N'第一版', N'第一次印刷', CAST(32.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'86B3761E-2BCA-4C94-B348-4E207611208D', 230, N'97873010260', N'西方美学史教程', N'北京大学出版社', N'李醒尘', N'2', N'1', CAST(35.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'6BD98901-36D8-419B-BAA1-B40CA96DCDA8', 231, N'７－３０１－０２６０', N'西方美学史教程', N'北京大学出版社', N'李醒尘', N'2', N'1', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'BFF26499-5807-4A87-A872-2AC74D811E5B', 232, N'9787301026083', N'西方美学史教程', N'北京大学出版社', N'李醒尘', N'2', N'1', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'4BA16943-BC7E-45B8-A123-F9A288B7782C', 233, N'７－３０１－０２６０', N'西方美学史教程', N'北京大学出版社', N'李醒尘', N'第二版', N'1', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'A0924021-CA94-48BB-8C4F-3103C5E4F4BC', 234, N'７３０１０２６０', N'西方美学史教程', N'北京大学出版社', N'李醒尘', N'第二版', N'第一次印刷', CAST(35.00 AS Numeric(10, 2)), N'省级统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'2A95A973-D8C6-4B68-9947-161CBF18B59D', 235, N'9787301026083', N'西方美学史教程', N'北京大学出版社', N'李醒尘', N'第二版', N'第一次印刷', CAST(35.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'341FCC72-D6CF-4CD4-AF97-D66A7C9D9350', 236, N'9787301170052', N'系统工程', N'北京大学出版社', N'王众托', N'第一版', N'第一次印刷', CAST(29.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'04345AFC-5A75-44E8-898B-3F098EDFA92F', 237, N'9787301213063', N'新编电子商务概论', N'北京大学出版社', N'张万民 ', N'1', N'1', CAST(34.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'C24D8567-1F52-473B-A09D-B79B7DDDDBC8', 238, N'978-7-301-21306-3', N'新编电子商务概论', N'北京大学出版社', N'张万民 孙俊国', N'1', N'1', CAST(34.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'28EEC637-E4D1-4071-A731-DFD508F6EB0A', 239, N'978-7-301-21306-3', N'新编电子商务概论', N'北京大学出版社', N'张万民 孙俊国', N'第一版', N'1', CAST(34.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'F7C9706B-BF3B-41A0-A70B-E9F391895892', 240, N'9787301213063', N'新编电子商务概论', N'北京大学出版社', N'张万民 孙俊国', N'第一版', N'第一次印刷', CAST(34.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'66BCBD8F-D88B-4180-9E26-3ED3FECE5D39', 241, N'9787301150856', N'新编英美概况教程', N'北京大学出版社', N'周叔麟', N'1', N'1', CAST(40.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'5401C715-D6C6-4A67-B28A-29AE95006C3C', 242, N'978730150856', N'新编英美概况教程', N'北京大学出版社', N'周叔麟', N'2', N'1', CAST(40.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'9EF99CB0-CF66-453D-BEAE-7355A401FE8B', 243, N'9787301150856', N'新编英美概况教程', N'北京大学出版社', N'周叔麟', N'第一版', N'1', CAST(40.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'CB25153F-72B7-4FB0-BB8A-BDA327BD9232', 244, N'9787301116524', N'薪酬管理', N'北京大学出版社', N'张正堂', N'1', N'1', CAST(33.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'8EEBFACD-75EC-4C92-BF6A-BAC1D3595B34', 245, N'730111652', N'薪酬管理', N'北京大学出版社', N'张正堂、刘宁', N'1', N'1', CAST(33.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'0A939E72-1A45-4D21-ACA7-A52D421D4B31', 246, N'730111652', N'薪酬管理', N'北京大学出版社', N'张正堂、刘宁', N'第一版', N'1', CAST(33.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'C5462079-D3D5-4675-ADDC-6C9371358002', 247, N'730111652', N'薪酬管理', N'北京大学出版社', N'张正堂、刘宁', N'第一版', N'第一次印刷', CAST(33.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'F14F70ED-A732-4403-9BA0-CC8D4469BDF8', 248, N'9787301116524', N'薪酬管理', N'北京大学出版社', N'张正堂、刘宁', N'第一版', N'第一次印刷', CAST(33.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'57261868-AF79-41E7-96F5-53E8F8B09F9E', 249, N'9787301243237', N'刑法学', N'北京大学出版社', N'高铭暄，马克昌', N'6', N'1', CAST(69.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'072CF670-F984-4282-B5C5-D3C183440356', 250, N'9787301106983', N'刑法学', N'北京大学出版社', N'高铭暄，马克昌', N'第五版', N'第一次印刷', CAST(59.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'807132C9-438C-4CE2-AAFA-E5EF569BDEAE', 251, N'9787301106983', N'刑法学', N'北京大学出版社', N'高铭暄，马克昌', N'第五版', N'第一次印刷', CAST(69.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'8CC60BDE-39F9-445B-A7A9-F366C6E8777A', 252, N'9787301225707', N'刑事诉讼法', N'北京大学出版社', N'陈光中', N'5', N'1', CAST(49.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'5740C3FA-4F24-4B54-9ED4-9AC153774944', 253, N'7301046073', N'刑事诉讼法', N'北京大学出版社', N'陈光中', N'第二版', N'第七次印刷', CAST(40.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'5903867D-A434-498B-8178-FA0098C8B96D', 254, N'978730120509', N'刑事诉讼法', N'北京大学出版社', N'陈光中', N'第四版', N'第一次印刷', CAST(45.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'92AED209-BF16-489E-BF40-175E3FC05200', 255, N'9787301161203', N'行政法与行政诉讼法', N'北京大学出版社', N'方世荣', N'第二版', N'1', CAST(49.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'600C74C2-EED9-475F-AB2B-D8E379CBB231', 256, N'9787301161203', N'行政法与行政诉讼法', N'北京大学出版社', N'方世荣', N'第二版', N'第一次印刷', CAST(49.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'78E5E943-92D8-4B5C-B1ED-4278D2D669D1', 257, N'9787811167238', N'医学遗传学', N'北京大学出版社', N'傅松滨', N'1', N'1', CAST(0.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'7F990C1E-DA82-4D91-8612-1F579A7AB35A', 258, N'9787811167238', N'医学遗传学', N'北京大学出版社', N'傅松滨', N'2', N'1', CAST(25.50 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'6A447234-034C-475A-940F-5A5DF1315796', 259, N'9787811167238', N'医学遗传学', N'北京大学出版社', N'傅松滨', N'第二版', N'1', CAST(25.50 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'0643D6A2-DEDD-4B62-AEC9-76F8830ADC82', 260, N'9787811167238', N'医学遗传学', N'北京大学出版社', N'傅松滨', N'第二版', N'第一次印刷', CAST(25.50 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'826B76A8-4CAC-463A-8D27-E8E6124CEA0A', 261, N'7303034633', N'语言学基础理论(修订版)', N'北京大学出版社', N'岑运强', N'1', N'1', CAST(32.00 AS Numeric(10, 2)), N'省级统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'6387C88D-9BD9-4A7F-B16E-28CB2C315EB7', 262, N'978-7-303-03463-3', N'语言学基础理论（修订版）', N'北京大学出版社', N'岑运强', N'2', N'1', CAST(32.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'73EC6196-2DA5-45B9-94E0-3D3B843D1B67', 263, N'7-303-03463-3', N'语言学基础理论(修订版)', N'北京大学出版社', N'岑运强', N'第二版', N'第三次印刷', CAST(32.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'DE374BAE-B7D4-467B-9369-385F2F940E00', 264, N'978-7-301-08202', N'语言学教程', N'北京大学出版社', N'胡壮麟', N'4', N'1', CAST(38.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'0298B33B-3044-4F83-9121-F85283318397', 265, N'9787301175439', N'语言学教程', N'北京大学出版社', N'胡壮麟', N'4', N'1', CAST(38.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'E945A5C9-5B97-4AEC-952C-F219648258E3', 266, N'978-7-301-08202', N'语言学教程', N'北京大学出版社', N'胡壮麟', N'第四版', N'1', CAST(38.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'22ED83E1-E5CE-41D3-B76F-FED94457EFA4', 267, N'978730108202', N'语言学教程', N'北京大学出版社', N'胡壮麟', N'第四版', N'第一次印刷', CAST(38.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'1C3DB802-B7B4-4E9B-9EBA-36E5B4044381', 268, N'978730175439', N'语言学教程', N'北京大学出版社', N'胡壮麟', N'第四版', N'第一次印刷', CAST(38.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'F554918C-4380-41EF-87C1-4857F75298C9', 269, N'9787301082027', N'语言学教程（第三版）', N'北京大学出版社', N' 胡壮麟', N'1', N'1', CAST(38.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'E5EE513B-AAD2-4A7C-9F96-150A69E873F3', 270, N'7301040393', N'中国当代文学史', N'北京大学出版社', N'洪子诚', N'1', N'1', CAST(28.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'5833F887-7C99-4EDB-977A-961338FE0B23', 271, N'9787301121665', N'中国当代文学史', N'北京大学出版社', N'洪子诚', N'1', N'1', CAST(28.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'4592AB98-7FFA-4C53-B288-FEA6DC5BAC90', 272, N'7301040393', N'中国当代文学史', N'北京大学出版社', N'洪子诚', N'第一版', N'1', CAST(28.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'4BBACBA5-9B9B-47EA-8F17-6E2FFF096D0B', 273, N'7301040393', N'中国当代文学史', N'北京大学出版社', N'洪子诚', N'第一版', N'第一次印刷', CAST(28.00 AS Numeric(10, 2)), N'省级统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'1269EC9A-F66B-4874-9AD6-689D8AEC531A', 274, N'9787301040393', N'中国当代文学史', N'北京大学出版社', N'洪子诚', N'第一版', N'第一次印刷', CAST(28.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'D5DB6B64-3C5F-4A1E-8A48-9CA69993977D', 275, N'978—7—5168—9', N'中国法制史', N'北京大学出版社', N'李交发', N'第一版', N'第一次印刷', CAST(36.00 AS Numeric(10, 2)), N'国家统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'7500F90C-039D-491F-831F-B8D0786C3982', 276, N'7301022859', N'中国古文字学通论', N'北京大学出版社', N'高明', N'1', N'1', CAST(55.00 AS Numeric(10, 2)), N'省级统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'5EB4BB2E-2914-4285-8E96-FA3198AE50BF', 277, N'9787301022856', N'中国古文字学通论', N'北京大学出版社', N'高明', N'1', N'1', CAST(55.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'BA1E3731-4ECA-44BD-88A3-0E82C7A5B4F5', 278, N'9787301022856', N'中国古文字学通论', N'北京大学出版社', N'高明', N'第一版', N'1', CAST(66.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'619DCD53-A0E0-4E72-85D3-45D9CCE02295', 279, N'9787301022856', N'中国古文字学通论', N'北京大学出版社', N'高明', N'第一版', N'第一次印刷', CAST(55.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'BA06E06A-B636-4635-A7BE-06FAC27FEFEB', 280, N'7301022859', N'中国古文字学通论', N'北京大学出版社', N'高明', N'第一版', N'第一次印刷', CAST(55.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'3015F915-138B-41DB-817D-4D787EB2527D', 281, N'9787301036709', N'中国现代文学三十年(修订版)', N'北京大学出版社', N'钱理群', N'1', N'1', CAST(38.00 AS Numeric(10, 2)), N'省级统编  ', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'4842F0BB-462B-4A48-9318-0AB34B4CF7F3', 282, N'978-7-301-03670-92', N'中国现代文学三十年(修订版)', N'北京大学出版社', N'钱理群', N'第一版', N'第十次印刷', CAST(38.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'18F24DA5-2F48-42FE-B92C-C9A3D8DBF021', 283, N'978-7-301-03670-9', N'中国现代文学三十年(修订版)', N'北京大学出版社', N'钱理群', N'第一版', N'第十次印刷', CAST(38.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'CE7C755B-D7DC-48A3-AE50-9A3D0ED40DB8', 284, N'978-7-301-03670-9', N'中国现代文学三十年(修订版)', N'北京大学出版社', N'钱理群', N'第一版', N'第一次印刷', CAST(38.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'AA0D56C1-343D-4655-92A1-DB4F6E4E166A', 285, N'9787301036709', N'中国现代文学三十年(修订版)', N'北京大学出版社', N'钱理群', N'修订版', N'1', CAST(38.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'F3E8113B-8359-4562-9392-7BA690748139', 286, N'978-7-301-03670-9', N'中国现代文学三十年（修订版）', N'北京大学出版社', N'钱理样', N'1', N'1', CAST(38.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'25E086A5-63A5-4009-BA96-19874A081557', 287, N'9787301237793', N'中外建筑史', N'北京大学出版社', N'袁新华', N'第二版', N'1', CAST(38.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'6A7A94E2-CE4F-4895-9613-08D21935E956', 288, N'9787301156841', N'综合日语.第一册(修订版)', N'北京大学出版社', N'李奇楠，（日）押尾和美 ', N'1', N'1', CAST(57.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'1447CD70-563B-44E5-9855-496946D17CEA', 289, N'9787565906855', N'医学遗传学', N'北京大学医学出版社', N'傅松滨', N'2', N'1', CAST(0.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'5CE1BCC5-E985-4B9A-B11F-292FD12F7F83', 290, N'9787565906855', N'医学遗传学', N'北京大学医学出版社', N'傅松滨', N'2', N'1', CAST(27.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'D663986E-0ABB-4EC2-B48E-0FA0BD987256', 291, N'9787565906855', N'医学遗传学', N'北京大学医学出版社', N'傅松滨', N'3', N'1', CAST(27.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'3545BA62-2EEB-4E87-94A3-4AAF7D0AAFA0', 292, N'9787565906855', N'医学遗传学', N'北京大学医学出版社', N'傅松滨', N'3', N'2', CAST(27.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'7B73B799-EDF1-4267-A66B-A9A2AB6B200A', 293, N'9787565906855', N'医学遗传学', N'北京大学医学出版社', N'傅松滨', N'第三版', N'1', CAST(27.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'A75A4FC8-A39D-4922-98C5-CE1834FF3D14', 294, N'9787565906855', N'医学遗传学', N'北京大学医学出版社', N'傅松滨', N'第三版', N'第二次印刷', CAST(27.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'C02C7C8C-69C3-42F4-9867-479B52D4E8A2', 295, N'9787512117124', N'品牌管理', N'北京工美', N'张明立', N'2', N'1', CAST(46.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'752FEF81-A5CD-45C9-B084-68A98936571D', 296, N'7811243376', N'ARM9嵌入式系统设计基础教程', N'北京航空', N'黄智伟', N'1', N'1', CAST(45.00 AS Numeric(10, 2)), N'国家统编', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'1DFD976D-AC72-4FE8-A6C9-F91EC3420615', 297, N'7810778374', N'单片机基础', N'北京航空', N'李广弟', N'3', N'1', CAST(24.00 AS Numeric(10, 2)), N'国家统编', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'72CE3803-7CB8-4736-A71D-7126EBC3606B', 298, N'7811242171', N'电工电子实习教程', N'北京航空', N'陈世和', N'1', N'1', CAST(20.00 AS Numeric(10, 2)), N'国家统编', N'无', N'无', 0, N'无', N'无', N'0')
INSERT [dbo].[Textbook] ([TextbookID], [TextbookNum2], [Isbn], [TextbookName], [Press], [Author], [Edition], [PrintingCount], [RetailPrice], [TextbookType], [Translator], [Language], [Page], [Summary], [Catalog], [IsSelfCompile]) VALUES (N'39DD795D-8A4A-438A-833F-CD10DDFB2930', 299, N'978751245431', N'电工电子实训教程', N'北京航空', N'陈世和', N'', N'1', CAST(28.00 AS Numeric(10, 2)), N'无', N'无', N'无', 0, N'无', N'无', N'0')
GO
SET IDENTITY_INSERT [dbo].[Textbook] OFF
/****** Object:  Index [pk_Bookseller]    Script Date: 2018-7-21 12:04:58 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Bookseller]') AND name = N'pk_Bookseller')
ALTER TABLE [dbo].[Bookseller] ADD  CONSTRAINT [pk_Bookseller] PRIMARY KEY NONCLUSTERED 
(
	[BooksellerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ak_Bookseller_BooksellerName]    Script Date: 2018-7-21 12:04:58 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Bookseller]') AND name = N'ak_Bookseller_BooksellerName')
ALTER TABLE [dbo].[Bookseller] ADD  CONSTRAINT [ak_Bookseller_BooksellerName] UNIQUE NONCLUSTERED 
(
	[BooksellerName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [pk_Department]    Script Date: 2018-7-21 12:04:58 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Department]') AND name = N'pk_Department')
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [pk_Department] PRIMARY KEY NONCLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [pk_ProfessionalClass]    Script Date: 2018-7-21 12:04:58 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ProfessionalClass]') AND name = N'pk_ProfessionalClass')
ALTER TABLE [dbo].[ProfessionalClass] ADD  CONSTRAINT [pk_ProfessionalClass] PRIMARY KEY NONCLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [pk_School]    Script Date: 2018-7-21 12:04:58 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[School]') AND name = N'pk_School')
ALTER TABLE [dbo].[School] ADD  CONSTRAINT [pk_School] PRIMARY KEY NONCLUSTERED 
(
	[SchoolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [pk_Student]    Script Date: 2018-7-21 12:04:58 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Student]') AND name = N'pk_Student')
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [pk_Student] PRIMARY KEY NONCLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [AK_AK_STUDENTNUM_STUDENT]    Script Date: 2018-7-21 12:04:58 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Student]') AND name = N'AK_AK_STUDENTNUM_STUDENT')
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [AK_AK_STUDENTNUM_STUDENT] UNIQUE NONCLUSTERED 
(
	[StudentNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [pk_Teacher]    Script Date: 2018-7-21 12:04:58 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Teacher]') AND name = N'pk_Teacher')
ALTER TABLE [dbo].[Teacher] ADD  CONSTRAINT [pk_Teacher] PRIMARY KEY NONCLUSTERED 
(
	[TeacherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ak_TeacherNumID_Teacher]    Script Date: 2018-7-21 12:04:58 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Teacher]') AND name = N'ak_TeacherNumID_Teacher')
ALTER TABLE [dbo].[Teacher] ADD  CONSTRAINT [ak_TeacherNumID_Teacher] UNIQUE NONCLUSTERED 
(
	[TeacherNumID2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [pk_TeacherDepartment]    Script Date: 2018-7-21 12:04:58 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TeacherDepartment]') AND name = N'pk_TeacherDepartment')
ALTER TABLE [dbo].[TeacherDepartment] ADD  CONSTRAINT [pk_TeacherDepartment] PRIMARY KEY NONCLUSTERED 
(
	[TeacherDepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [pk_Textbook]    Script Date: 2018-7-21 12:04:58 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Textbook]') AND name = N'pk_Textbook')
ALTER TABLE [dbo].[Textbook] ADD  CONSTRAINT [pk_Textbook] PRIMARY KEY NONCLUSTERED 
(
	[TextbookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_STUDENTDECLARATION]    Script Date: 2018-7-21 12:04:58 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Subscription].[StudentDeclaration]') AND name = N'PK_STUDENTDECLARATION')
ALTER TABLE [Subscription].[StudentDeclaration] ADD  CONSTRAINT [PK_STUDENTDECLARATION] PRIMARY KEY NONCLUSTERED 
(
	[DeclarationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_TEACHERDECLARATION]    Script Date: 2018-7-21 12:04:58 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Subscription].[TeacherDeclaration]') AND name = N'PK_TEACHERDECLARATION')
ALTER TABLE [Subscription].[TeacherDeclaration] ADD  CONSTRAINT [PK_TEACHERDECLARATION] PRIMARY KEY NONCLUSTERED 
(
	[DeclarationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Textbook__Textbo__53ED4AC6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Textbook] ADD  CONSTRAINT [DF__Textbook__Textbo__53ED4AC6]  DEFAULT ('?') FOR [TextbookName]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[ck_Textbook_IsSelfCompile]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Textbook] ADD  CONSTRAINT [ck_Textbook_IsSelfCompile]  DEFAULT ('0') FOR [IsSelfCompile]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Decla__5EBF139D]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_StudentDeclaration_Bookseller] ADD  DEFAULT (newid()) FOR [DeclarationID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Books__5FB337D6]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_StudentDeclaration_Bookseller] ADD  DEFAULT (newid()) FOR [BooksellerID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Subsc__60A75C0F]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_StudentDeclaration_Bookseller] ADD  DEFAULT ('0') FOR [SubscriptionStatus]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Feedb__619B8048]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_StudentDeclaration_Bookseller] ADD  DEFAULT (getdate()) FOR [FeedbackDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Remar__628FA481]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_StudentDeclaration_Bookseller] ADD  DEFAULT (N'无') FOR [Remark]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__ReDec__6383C8BA]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_StudentDeclaration_Bookseller] ADD  DEFAULT ('3') FOR [ReDeclareStatus]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Class__6754599E]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_StudentDeclaration_ProfessionalClass] ADD  DEFAULT (newid()) FOR [ClassID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Decla__68487DD7]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_StudentDeclaration_ProfessionalClass] ADD  DEFAULT (newid()) FOR [DeclarationID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Decla__693CA210]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_StudentDeclaration_ProfessionalClass] ADD  DEFAULT ((1)) FOR [DeclarationCount]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Decla__6B24EA82]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_TeacherDeclaration_Bookseller] ADD  DEFAULT (newid()) FOR [DeclarationID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Books__6C190EBB]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_TeacherDeclaration_Bookseller] ADD  DEFAULT (newid()) FOR [BooksellerID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Subsc__6D0D32F4]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_TeacherDeclaration_Bookseller] ADD  DEFAULT ('0') FOR [SubscriptionStatus]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Feedb__6E01572D]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_TeacherDeclaration_Bookseller] ADD  DEFAULT (getdate()) FOR [FeedbackDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__Remar__6EF57B66]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_TeacherDeclaration_Bookseller] ADD  DEFAULT (N'无') FOR [Remark]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__Associate__ReDec__6FE99F9F]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[Associate_TeacherDeclaration_Bookseller] ADD  DEFAULT ('3') FOR [ReDeclareStatus]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__StudentDe__Decla__73BA3083]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[StudentDeclaration] ADD  DEFAULT (newid()) FOR [DeclarationID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__StudentDe__Textb__74AE54BC]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[StudentDeclaration] ADD  DEFAULT (newid()) FOR [TextbookID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__StudentDec__Term__75A278F5]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[StudentDeclaration] ADD  DEFAULT (N'无') FOR [Term]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__StudentDe__Telep__76969D2E]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[StudentDeclaration] ADD  DEFAULT (N'无') FOR [Telephone]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__StudentDe__Impor__778AC167]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[StudentDeclaration] ADD  DEFAULT (getdate()) FOR [ImportDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__StudentDe__Appro__787EE5A0]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[StudentDeclaration] ADD  DEFAULT ('0') FOR [ApprovalStatus]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__StudentDe__DataS__797309D9]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[StudentDeclaration] ADD  DEFAULT ('A') FOR [DataSign]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__StudentDe__NeedT__7A672E12]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[StudentDeclaration] ADD  DEFAULT ('1') FOR [NeedTextbook]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__TeacherDe__Decla__7F2BE32F]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[TeacherDeclaration] ADD  DEFAULT (newid()) FOR [DeclarationID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__TeacherDe__Textb__00200768]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[TeacherDeclaration] ADD  DEFAULT (newid()) FOR [TextbookID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__TeacherDec__Term__01142BA1]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[TeacherDeclaration] ADD  DEFAULT (N'无') FOR [Term]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__TeacherDe__Telep__02084FDA]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[TeacherDeclaration] ADD  DEFAULT (N'无') FOR [Telephone]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__TeacherDe__Impor__02FC7413]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[TeacherDeclaration] ADD  DEFAULT (getdate()) FOR [ImportDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__TeacherDe__Appro__03F0984C]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[TeacherDeclaration] ADD  DEFAULT ('0') FOR [ApprovalStatus]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__TeacherDe__DataS__04E4BC85]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[TeacherDeclaration] ADD  DEFAULT ('A') FOR [DataSign]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Subscription].[DF__TeacherDe__NeedT__05D8E0BE]') AND type = 'D')
BEGIN
ALTER TABLE [Subscription].[TeacherDeclaration] ADD  DEFAULT ('1') FOR [NeedTextbook]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Department_School]') AND parent_object_id = OBJECT_ID(N'[dbo].[Department]'))
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_School] FOREIGN KEY([SchoolID])
REFERENCES [dbo].[School] ([SchoolID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Department_School]') AND parent_object_id = OBJECT_ID(N'[dbo].[Department]'))
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_School]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProfessionalClass_School]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProfessionalClass]'))
ALTER TABLE [dbo].[ProfessionalClass]  WITH NOCHECK ADD  CONSTRAINT [fk_ProfessionalClass_School] FOREIGN KEY([SchoolID])
REFERENCES [dbo].[School] ([SchoolID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ProfessionalClass_School]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProfessionalClass]'))
ALTER TABLE [dbo].[ProfessionalClass] CHECK CONSTRAINT [fk_ProfessionalClass_School]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Student_ProfessionalClass]') AND parent_object_id = OBJECT_ID(N'[dbo].[Student]'))
ALTER TABLE [dbo].[Student]  WITH NOCHECK ADD  CONSTRAINT [fk_Student_ProfessionalClass] FOREIGN KEY([ClassID])
REFERENCES [dbo].[ProfessionalClass] ([ClassID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Student_ProfessionalClass]') AND parent_object_id = OBJECT_ID(N'[dbo].[Student]'))
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [fk_Student_ProfessionalClass]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_TeacherDepartment_Department]') AND parent_object_id = OBJECT_ID(N'[dbo].[TeacherDepartment]'))
ALTER TABLE [dbo].[TeacherDepartment]  WITH NOCHECK ADD  CONSTRAINT [fk_TeacherDepartment_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_TeacherDepartment_Department]') AND parent_object_id = OBJECT_ID(N'[dbo].[TeacherDepartment]'))
ALTER TABLE [dbo].[TeacherDepartment] CHECK CONSTRAINT [fk_TeacherDepartment_Department]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_TeacherDepartment_Teacher]') AND parent_object_id = OBJECT_ID(N'[dbo].[TeacherDepartment]'))
ALTER TABLE [dbo].[TeacherDepartment]  WITH NOCHECK ADD  CONSTRAINT [fk_TeacherDepartment_Teacher] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teacher] ([TeacherID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_TeacherDepartment_Teacher]') AND parent_object_id = OBJECT_ID(N'[dbo].[TeacherDepartment]'))
ALTER TABLE [dbo].[TeacherDepartment] CHECK CONSTRAINT [fk_TeacherDepartment_Teacher]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Subscription].[FK_Associate_StudentDeclaration_Bookseller_Bookseller_StudentDeclaration_StudentDeclaration]') AND parent_object_id = OBJECT_ID(N'[Subscription].[Associate_StudentDeclaration_Bookseller]'))
ALTER TABLE [Subscription].[Associate_StudentDeclaration_Bookseller]  WITH CHECK ADD  CONSTRAINT [FK_Associate_StudentDeclaration_Bookseller_Bookseller_StudentDeclaration_StudentDeclaration] FOREIGN KEY([DeclarationID])
REFERENCES [Subscription].[StudentDeclaration] ([DeclarationID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Subscription].[FK_Associate_StudentDeclaration_Bookseller_Bookseller_StudentDeclaration_StudentDeclaration]') AND parent_object_id = OBJECT_ID(N'[Subscription].[Associate_StudentDeclaration_Bookseller]'))
ALTER TABLE [Subscription].[Associate_StudentDeclaration_Bookseller] CHECK CONSTRAINT [FK_Associate_StudentDeclaration_Bookseller_Bookseller_StudentDeclaration_StudentDeclaration]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Subscription].[FK_Associate_StudentDeclaration_ProfessionalClass_DeclarationClass_ProfessionalClass_StudentDeclaration]') AND parent_object_id = OBJECT_ID(N'[Subscription].[Associate_StudentDeclaration_ProfessionalClass]'))
ALTER TABLE [Subscription].[Associate_StudentDeclaration_ProfessionalClass]  WITH CHECK ADD  CONSTRAINT [FK_Associate_StudentDeclaration_ProfessionalClass_DeclarationClass_ProfessionalClass_StudentDeclaration] FOREIGN KEY([DeclarationID])
REFERENCES [Subscription].[StudentDeclaration] ([DeclarationID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Subscription].[FK_Associate_StudentDeclaration_ProfessionalClass_DeclarationClass_ProfessionalClass_StudentDeclaration]') AND parent_object_id = OBJECT_ID(N'[Subscription].[Associate_StudentDeclaration_ProfessionalClass]'))
ALTER TABLE [Subscription].[Associate_StudentDeclaration_ProfessionalClass] CHECK CONSTRAINT [FK_Associate_StudentDeclaration_ProfessionalClass_DeclarationClass_ProfessionalClass_StudentDeclaration]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Subscription].[FK_Associate_StudentDeclaration_ProfessionalClass_StudentDeclaration_ProfessionalClass_ProfessionalClass]') AND parent_object_id = OBJECT_ID(N'[Subscription].[Associate_StudentDeclaration_ProfessionalClass]'))
ALTER TABLE [Subscription].[Associate_StudentDeclaration_ProfessionalClass]  WITH CHECK ADD  CONSTRAINT [FK_Associate_StudentDeclaration_ProfessionalClass_StudentDeclaration_ProfessionalClass_ProfessionalClass] FOREIGN KEY([ClassID])
REFERENCES [dbo].[ProfessionalClass] ([ClassID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Subscription].[FK_Associate_StudentDeclaration_ProfessionalClass_StudentDeclaration_ProfessionalClass_ProfessionalClass]') AND parent_object_id = OBJECT_ID(N'[Subscription].[Associate_StudentDeclaration_ProfessionalClass]'))
ALTER TABLE [Subscription].[Associate_StudentDeclaration_ProfessionalClass] CHECK CONSTRAINT [FK_Associate_StudentDeclaration_ProfessionalClass_StudentDeclaration_ProfessionalClass_ProfessionalClass]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Subscription].[FK_Associate_TeacherDeclaration_Bookseller_TeacherDeclaration_Bookseller_TeacherDeclaration]') AND parent_object_id = OBJECT_ID(N'[Subscription].[Associate_TeacherDeclaration_Bookseller]'))
ALTER TABLE [Subscription].[Associate_TeacherDeclaration_Bookseller]  WITH CHECK ADD  CONSTRAINT [FK_Associate_TeacherDeclaration_Bookseller_TeacherDeclaration_Bookseller_TeacherDeclaration] FOREIGN KEY([DeclarationID])
REFERENCES [Subscription].[TeacherDeclaration] ([DeclarationID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Subscription].[FK_Associate_TeacherDeclaration_Bookseller_TeacherDeclaration_Bookseller_TeacherDeclaration]') AND parent_object_id = OBJECT_ID(N'[Subscription].[Associate_TeacherDeclaration_Bookseller]'))
ALTER TABLE [Subscription].[Associate_TeacherDeclaration_Bookseller] CHECK CONSTRAINT [FK_Associate_TeacherDeclaration_Bookseller_TeacherDeclaration_Bookseller_TeacherDeclaration]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Subscription].[FK_StudentDeclaration_StudentDeclaration_Textbook_Textbook]') AND parent_object_id = OBJECT_ID(N'[Subscription].[StudentDeclaration]'))
ALTER TABLE [Subscription].[StudentDeclaration]  WITH CHECK ADD  CONSTRAINT [FK_StudentDeclaration_StudentDeclaration_Textbook_Textbook] FOREIGN KEY([TextbookID])
REFERENCES [dbo].[Textbook] ([TextbookID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Subscription].[FK_StudentDeclaration_StudentDeclaration_Textbook_Textbook]') AND parent_object_id = OBJECT_ID(N'[Subscription].[StudentDeclaration]'))
ALTER TABLE [Subscription].[StudentDeclaration] CHECK CONSTRAINT [FK_StudentDeclaration_StudentDeclaration_Textbook_Textbook]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Subscription].[FK_TeacherDeclaration_TeacherDeclaration_Textbook_Textbook]') AND parent_object_id = OBJECT_ID(N'[Subscription].[TeacherDeclaration]'))
ALTER TABLE [Subscription].[TeacherDeclaration]  WITH CHECK ADD  CONSTRAINT [FK_TeacherDeclaration_TeacherDeclaration_Textbook_Textbook] FOREIGN KEY([TextbookID])
REFERENCES [dbo].[Textbook] ([TextbookID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[Subscription].[FK_TeacherDeclaration_TeacherDeclaration_Textbook_Textbook]') AND parent_object_id = OBJECT_ID(N'[Subscription].[TeacherDeclaration]'))
ALTER TABLE [Subscription].[TeacherDeclaration] CHECK CONSTRAINT [FK_TeacherDeclaration_TeacherDeclaration_Textbook_Textbook]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ck_IsSelfCompile_Textbook]') AND parent_object_id = OBJECT_ID(N'[dbo].[Textbook]'))
ALTER TABLE [dbo].[Textbook]  WITH CHECK ADD  CONSTRAINT [ck_IsSelfCompile_Textbook] CHECK  (([IsSelfCompile]='1' OR [IsSelfCompile]='0'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ck_IsSelfCompile_Textbook]') AND parent_object_id = OBJECT_ID(N'[dbo].[Textbook]'))
ALTER TABLE [dbo].[Textbook] CHECK CONSTRAINT [ck_IsSelfCompile_Textbook]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ck_Page_Textbook]') AND parent_object_id = OBJECT_ID(N'[dbo].[Textbook]'))
ALTER TABLE [dbo].[Textbook]  WITH CHECK ADD  CONSTRAINT [ck_Page_Textbook] CHECK  (([Page] IS NULL OR [Page]>=(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[ck_Page_Textbook]') AND parent_object_id = OBJECT_ID(N'[dbo].[Textbook]'))
ALTER TABLE [dbo].[Textbook] CHECK CONSTRAINT [ck_Page_Textbook]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[Subscription].[CKC_ReDeclareStatus_Associate_StudentDeclaration_Bookseller]') AND parent_object_id = OBJECT_ID(N'[Subscription].[Associate_StudentDeclaration_Bookseller]'))
ALTER TABLE [Subscription].[Associate_StudentDeclaration_Bookseller]  WITH CHECK ADD  CONSTRAINT [CKC_ReDeclareStatus_Associate_StudentDeclaration_Bookseller] CHECK  (([ReDeclareStatus]='3' OR [ReDeclareStatus]='2' OR [ReDeclareStatus]='1' OR [ReDeclareStatus]='0'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[Subscription].[CKC_ReDeclareStatus_Associate_StudentDeclaration_Bookseller]') AND parent_object_id = OBJECT_ID(N'[Subscription].[Associate_StudentDeclaration_Bookseller]'))
ALTER TABLE [Subscription].[Associate_StudentDeclaration_Bookseller] CHECK CONSTRAINT [CKC_ReDeclareStatus_Associate_StudentDeclaration_Bookseller]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[Subscription].[CKC_SubscriptionStatus_Associate_StudentDeclaration_Bookseller]') AND parent_object_id = OBJECT_ID(N'[Subscription].[Associate_StudentDeclaration_Bookseller]'))
ALTER TABLE [Subscription].[Associate_StudentDeclaration_Bookseller]  WITH CHECK ADD  CONSTRAINT [CKC_SubscriptionStatus_Associate_StudentDeclaration_Bookseller] CHECK  (([SubscriptionStatus]='3' OR [SubscriptionStatus]='2' OR [SubscriptionStatus]='1' OR [SubscriptionStatus]='0'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[Subscription].[CKC_SubscriptionStatus_Associate_StudentDeclaration_Bookseller]') AND parent_object_id = OBJECT_ID(N'[Subscription].[Associate_StudentDeclaration_Bookseller]'))
ALTER TABLE [Subscription].[Associate_StudentDeclaration_Bookseller] CHECK CONSTRAINT [CKC_SubscriptionStatus_Associate_StudentDeclaration_Bookseller]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[Subscription].[CKC_ReDeclareStatus_Associate_TeacherDeclaration_Bookseller]') AND parent_object_id = OBJECT_ID(N'[Subscription].[Associate_TeacherDeclaration_Bookseller]'))
ALTER TABLE [Subscription].[Associate_TeacherDeclaration_Bookseller]  WITH CHECK ADD  CONSTRAINT [CKC_ReDeclareStatus_Associate_TeacherDeclaration_Bookseller] CHECK  (([ReDeclareStatus]='3' OR [ReDeclareStatus]='2' OR [ReDeclareStatus]='1' OR [ReDeclareStatus]='0'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[Subscription].[CKC_ReDeclareStatus_Associate_TeacherDeclaration_Bookseller]') AND parent_object_id = OBJECT_ID(N'[Subscription].[Associate_TeacherDeclaration_Bookseller]'))
ALTER TABLE [Subscription].[Associate_TeacherDeclaration_Bookseller] CHECK CONSTRAINT [CKC_ReDeclareStatus_Associate_TeacherDeclaration_Bookseller]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[Subscription].[CKC_SubscriptionStatus_Associate_TeacherDeclaration_Bookseller]') AND parent_object_id = OBJECT_ID(N'[Subscription].[Associate_TeacherDeclaration_Bookseller]'))
ALTER TABLE [Subscription].[Associate_TeacherDeclaration_Bookseller]  WITH CHECK ADD  CONSTRAINT [CKC_SubscriptionStatus_Associate_TeacherDeclaration_Bookseller] CHECK  (([SubscriptionStatus]='3' OR [SubscriptionStatus]='2' OR [SubscriptionStatus]='1' OR [SubscriptionStatus]='0'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[Subscription].[CKC_SubscriptionStatus_Associate_TeacherDeclaration_Bookseller]') AND parent_object_id = OBJECT_ID(N'[Subscription].[Associate_TeacherDeclaration_Bookseller]'))
ALTER TABLE [Subscription].[Associate_TeacherDeclaration_Bookseller] CHECK CONSTRAINT [CKC_SubscriptionStatus_Associate_TeacherDeclaration_Bookseller]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[Subscription].[CKC_DataSign_StudentDeclaration]') AND parent_object_id = OBJECT_ID(N'[Subscription].[StudentDeclaration]'))
ALTER TABLE [Subscription].[StudentDeclaration]  WITH CHECK ADD  CONSTRAINT [CKC_DataSign_StudentDeclaration] CHECK  (([DataSign]='D' OR [DataSign]='C' OR [DataSign]='B' OR [DataSign]='A'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[Subscription].[CKC_DataSign_StudentDeclaration]') AND parent_object_id = OBJECT_ID(N'[Subscription].[StudentDeclaration]'))
ALTER TABLE [Subscription].[StudentDeclaration] CHECK CONSTRAINT [CKC_DataSign_StudentDeclaration]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[Subscription].[CKC_NeedTextbook_StudentDeclaration]') AND parent_object_id = OBJECT_ID(N'[Subscription].[StudentDeclaration]'))
ALTER TABLE [Subscription].[StudentDeclaration]  WITH CHECK ADD  CONSTRAINT [CKC_NeedTextbook_StudentDeclaration] CHECK  (([NeedTextbook]='0' OR [NeedTextbook]='1'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[Subscription].[CKC_NeedTextbook_StudentDeclaration]') AND parent_object_id = OBJECT_ID(N'[Subscription].[StudentDeclaration]'))
ALTER TABLE [Subscription].[StudentDeclaration] CHECK CONSTRAINT [CKC_NeedTextbook_StudentDeclaration]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[Subscription].[CKC_DataSign_TeacherDeclaration]') AND parent_object_id = OBJECT_ID(N'[Subscription].[TeacherDeclaration]'))
ALTER TABLE [Subscription].[TeacherDeclaration]  WITH CHECK ADD  CONSTRAINT [CKC_DataSign_TeacherDeclaration] CHECK  (([DataSign]='D' OR [DataSign]='C' OR [DataSign]='B' OR [DataSign]='A'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[Subscription].[CKC_DataSign_TeacherDeclaration]') AND parent_object_id = OBJECT_ID(N'[Subscription].[TeacherDeclaration]'))
ALTER TABLE [Subscription].[TeacherDeclaration] CHECK CONSTRAINT [CKC_DataSign_TeacherDeclaration]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[Subscription].[CKC_NeedTextbook_TeacherDeclaration]') AND parent_object_id = OBJECT_ID(N'[Subscription].[TeacherDeclaration]'))
ALTER TABLE [Subscription].[TeacherDeclaration]  WITH CHECK ADD  CONSTRAINT [CKC_NeedTextbook_TeacherDeclaration] CHECK  (([NeedTextbook]='0' OR [NeedTextbook]='1'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[Subscription].[CKC_NeedTextbook_TeacherDeclaration]') AND parent_object_id = OBJECT_ID(N'[Subscription].[TeacherDeclaration]'))
ALTER TABLE [Subscription].[TeacherDeclaration] CHECK CONSTRAINT [CKC_NeedTextbook_TeacherDeclaration]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Teacher', N'COLUMN',N'TeacherNumID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'根据教师编号数字，格式化为6位标准编号，不足位在左侧用0填充' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teacher', @level2type=N'COLUMN',@level2name=N'TeacherNumID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Teacher', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Teacher'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'TeacherDepartment', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理教师与系教研室之间的1对多关系，即一名教师归属多个部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TeacherDepartment'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Textbook', N'COLUMN',N'TextbookNum'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'格式化后的教材编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Textbook', @level2type=N'COLUMN',@level2name=N'TextbookNum'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Textbook', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教材的信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Textbook'
GO
