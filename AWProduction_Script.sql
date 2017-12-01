/***********************************************************************************************
* This script creats the Adventure Works - Production database used for CSCI3432 Final Project *
***********************************************************************************************/

USE master;
GO

IF exists (SELECT * FROM sysdatabases WHERE name='AWProduction')
BEGIN
  raiserror('Dropping existing AWProduction database ....',0,1)
  DROP DATABASE AWProduction
END

CREATE DATABASE AWProduction
GO

USE AWProduction;

CREATE TABLE [DEPARTMENT]
( 
	[DepartmentID]       integer  NOT NULL  IDENTITY ( 1,1 ) ,
	[DepartmentName]     varchar(100)  NOT NULL ,
	[DepartmentHead]     varchar(100)  NOT NULL ,
	[DateModified]       datetime  NOT NULL 
	CONSTRAINT [Default_Value_174_1402703423]
		 DEFAULT  (SYSDATETIME())
)
go

ALTER TABLE [DEPARTMENT]
	ADD CONSTRAINT [XPKDEPARTMENT] PRIMARY KEY  CLUSTERED ([DepartmentID] ASC)
go

INSERT INTO [DEPARTMENT] ([DepartmentName], [DepartmentHead] ) VALUES
('DeptAlpha',	'John Smith'),
('DeptBeta',	'Sheri Brown'),
('DeptCharlie',	'Ken Johnson'),
('DeptDelta',	'John Moore'),
('DeptEcho',	'Ken Smith');
go


CREATE TABLE [EMPLOYEE]
( 
	[EmployeeID]         integer  NOT NULL  IDENTITY ( 1,1 ) ,
	[EmployeeName]       varchar(100)  NOT NULL ,
	[DepartmentID]       integer  NOT NULL ,
	[DateModified]       datetime  NOT NULL 
	CONSTRAINT [Default_Value_183_1934373685]
		 DEFAULT  (SYSDATETIME())
)
go

ALTER TABLE [EMPLOYEE]
	ADD CONSTRAINT [XPKEMPLOYEE] PRIMARY KEY  CLUSTERED ([EmployeeID] ASC)
go

INSERT INTO [EMPLOYEE] ([EmployeeName], [DepartmentID] ) VALUES
('Bob One', 1),
('Sam Two', 2),
('Steve Three', 3 ),
('David Four', 4),
('Bill Five', 5),
('John Six', 1 ),
('Jim Seven', 2),
('Ed Eight', 3),
('Nancy Nine', 4 ),
('Ashley Ten', 5);
go


CREATE TABLE [PASSWORD]
( 
	[PasswordID]         integer  NOT NULL  IDENTITY ( 1,1 ) ,
	[Password]           nvarchar(100)  NOT NULL ,
	[PasswordSalt]       nvarchar(100)  NOT NULL ,
	[PasswordHash]       nvarchar(100)  NOT NULL 
)
go

ALTER TABLE [PASSWORD]
	ADD CONSTRAINT [XPKPASSWORD] PRIMARY KEY  CLUSTERED ([PasswordID] ASC)
go

INSERT INTO [PASSWORD] ([Password], [PasswordSalt], [PasswordHash] ) VALUES
('password1', 'ksnfoowfnnslfjow30smdow03', 'invowo32'),
('password2', '93nfowuti33ifhie9rnov939h', 'oieif'),
('password3', 'nf93ubgj3i84btir983bi3fvv', 'i3jfi3bcvdi'),
('password4', 't8ls954jh3k5jo5pzdzujd6sf', 'kjhgjklvh'),
('password5', '0x2kopn4mvuxd0nst1m4d74sw', 'ghk6r64'),
('password6', 'txz18p04kqg6wm9lusarsqk2c', 'jtgdyu41'),
('password7', 'tnkpjemaqg6hospr9c585s6na', '54ljuhgbv'),
('password8', '075irro29mi6nywedu9yhdt3d', '5f5ggtfg');
go


CREATE TABLE [EMPLOYEE_ACCOUNT]
( 
	[EmployeeID]         integer  NOT NULL ,
	[Username]           nvarchar(100)  NOT NULL ,
	[Email]              nvarchar(100)  NOT NULL ,
	[PasswordID]         integer  NOT NULL ,
	[StatusRights]       varchar(10)  NOT NULL ,
	[DateModified]       datetime  NOT NULL 
	CONSTRAINT [Default_Value_202_165593827]
		 DEFAULT  (SYSDATETIME())
)
go

ALTER TABLE [EMPLOYEE_ACCOUNT]
	ADD CONSTRAINT [XPKEMPLOYEE_ACCOUNT] PRIMARY KEY  CLUSTERED ([EmployeeID] ASC)
go

INSERT INTO [EMPLOYEE_ACCOUNT] ([EmployeeID], [Username], [Email], [PasswordID], [StatusRights] ) VALUES
(1, 'BobOne@company', 'BobOne@company.gmail.com', 1, 'Admin'),
(2, 'SamTwo@company', 'SamTwo@company.gmail.com', 2, 'Edit'),
(3, 'SteveThree@company', 'SteveThree@company.gmail.com', 3, 'View'),
(4, 'DavidFour@company', 'DavidFour@company.gmail.com', 4, 'View'),
(5, 'BillFive@company', 'BillFive@company.gmail.com', 5, 'View'),
(6, 'JohnSix@company', 'JohnSix@company.gmail.com', 6, 'View'),
(7, 'JimSeven@company', 'JimSeven@company.gmail.com', 7, 'View'),
(8, 'EdEight@company', 'bEdEight@company.gmail.com', 8, 'Edit');
go


CREATE TABLE [PRODUCT_MODEL]
( 
	[ModelCode]          nvarchar(100)  NOT NULL ,
	[ModelName]          varchar(100)  NOT NULL ,
	[SizeCode]           nvarchar(100)  NOT NULL ,
	[WeightCode]         nvarchar(100)  NOT NULL ,
	[Description]        nvarchar(150)  NULL ,
	[DateModified]       datetime  NOT NULL 
	CONSTRAINT [Default_Value_213_1264526971]
		 DEFAULT  (SYSDATETIME())
)
go

ALTER TABLE [PRODUCT_MODEL]
	ADD CONSTRAINT [XPKPRODUCT_MODEL] PRIMARY KEY  CLUSTERED ([ModelCode] ASC)
go

INSERT INTO [PRODUCT_MODEL] ([ModelCode], [ModelName], [SizeCode], [WeightCode], [Description]) VALUES
('MC', 'ModelOne', 4050, 5860, 'Model One Description'),
('M-35', 'ModelTwo', 4080, 5865, 'Model Two Description'),
('M-36' , 'ModelThree', 4020, 5000, 'Model Three Description');
go


CREATE TABLE [MODEL_SPECS]
( 
	[ModelCode]          nvarchar(100)  NOT NULL ,
	[Color]              varchar(100)  NULL ,
	[Class]              varchar(100)  NULL ,
	[Style]              varchar(100)  NULL ,
	[Weight]             nvarchar(100)  NULL ,
	[Size]               nvarchar(100)  NULL ,
	[DateModified]       datetime  NOT NULL 
	CONSTRAINT [Default_Value_225_1414953416]
		 DEFAULT  (SYSDATETIME())
)
go

ALTER TABLE [MODEL_SPECS]
	ADD CONSTRAINT [XPKMODEL_SPECS] PRIMARY KEY  CLUSTERED ([ModelCode] ASC)
go

INSERT INTO [MODEL_SPECS] ([ModelCode], [Color], [Class], [Style], [Weight], [Size] ) VALUES
('MC', 'Silver', 'ClassB', 'Fluted', 400, 100),
('M-35', 'Black', 'ClassB', 'Standard', 375, 120),
('M-36', 'Green', 'ClassG', 'Round', 270, 60);
go


CREATE TABLE [PRODUCT]
( 
	[ProductNumber]      nvarchar(100)  NOT NULL ,
	[Name]               varchar(100)  NOT NULL ,
	[ModelCode]          nvarchar(100)  NOT NULL ,
	[DaysToProduce]      integer  NOT NULL ,
	[CostToProduce]      money  NOT NULL ,
	[StartSellDate]      datetime  NOT NULL ,
	[EndSellDate]        datetime  NULL ,
	[DiscountinuedDate]  datetime  NULL ,
	[DateModified]       datetime  NOT NULL 
	CONSTRAINT [Default_Value_248_1917665514]
		 DEFAULT  (SYSDATETIME())
)
go

ALTER TABLE [PRODUCT]
	ADD CONSTRAINT [XPKPRODUCT] PRIMARY KEY  CLUSTERED ([ProductNumber] ASC)
go

INSERT INTO [PRODUCT] ([ProductNumber], [Name], [ModelCode], [DaysToProduce], [CostToProduce], [StartSellDate], [EndSellDate], [DiscountinuedDate] ) VALUES
('AR-5381', 'Adjustable Race', 'MC', 5, 100.00, '2008-04-30 00:00:00.000', NULL, NULL),
('BA-8327', 'Bearing Ball', 'MC', 3, 50.00, '2008-04-30 00:00:00.000', NULL, NULL),
('BE-2349', 'BB Ball Bearing','MC', 5, 50.00, '2008-04-30 00:00:00.000', NULL, NULL),
('BE-2908', 'Headset Ball Bearings','MC', 6, 70.00, '2008-04-30 00:00:00.000', NULL, NULL),
('BL-2036', 'Blade', 'MC', 2, 100.00, '2008-04-30 00:00:00.000', NULL, NULL),
('CA-5965', 'LL Crankarm', 'MC', 4, 120.00, '2008-04-30 00:00:00.000', NULL, NULL),
('CA-6738', 'ML Crankarm', 'MC', 3, 120.00, '2008-04-30 00:00:00.000', NULL, NULL),
('CA-7457', 'HL Crankarm', 'MC', 8, 120.00, '2008-04-30 00:00:00.000', NULL, NULL),
('CB-2903', 'Chainring Bolts', 'MC', 1, 10.00, '2008-04-30 00:00:00.000', NULL, NULL),
('CN-6137', 'Chainring Nut', 'MC', 1, 10.00, '2008-04-30 00:00:00.000', NULL, NULL),
('CR-7833', 'Chainring', 'MC', 2, 25.00, '2008-04-30 00:00:00.000', NULL, NULL),
('CR-9981', 'Crown Race', 'MC', 6, 15.00, '2008-04-30 00:00:00.000', NULL, NULL),
('CS-2812', 'Chain Stays', 'MC', 5, 20.00, '2008-04-30 00:00:00.000', NULL, NULL),
('DC-8732', 'Decal 1', 'MC', 1, 5.00, '2008-04-30 00:00:00.000', NULL, NULL),
('DC-9824', 'Decal 2', 'MC', 1, 5.00, '2008-04-30 00:00:00.000', NULL, NULL),
('DT-2377', 'Down Tube', 'MC', 3, 25.00, '2008-04-30 00:00:00.000', NULL, NULL),
('EC-M092', 'Mountain End Caps', 'MC', 5, 5.00, '2008-04-30 00:00:00.000', NULL, NULL),
('EC-R098', 'Road End Caps', 'MC', 5, 5.00, '2008-04-30 00:00:00.000', NULL, NULL),
('EC-T209', 'Touring End Caps', 'MC', 5, 5.00, '2008-04-30 00:00:00.000', NULL, '2008-09-30 00:00:00.000'),
('FE-3760', 'Fork End', 'MC', 4, 30.00, '2008-04-30 00:00:00.000', '2009-04-30 00:00:00.000', NULL);
go


CREATE TABLE [WORK_ORDER]
( 
	[WorkOrderID]        integer  NOT NULL  IDENTITY ( 1,1 ) ,
	[WorkOrderDate]      datetime  NOT NULL ,
	[EmployeeID]         integer  NOT NULL ,
	[DepartmentHead]     varchar(100)  NOT NULL ,
	[ProductNumber]      nvarchar(100)  NOT NULL ,
	[Quantity]           integer  NOT NULL ,
	[MaterialList]       nvarchar(200)  NOT NULL ,
	[StartDate]          datetime  NOT NULL ,
	[CompletionDate]     datetime  NOT NULL ,
	[DateModified]       datetime  NOT NULL 
	CONSTRAINT [Default_Value_274_1555272006]
		 DEFAULT  (SYSDATETIME())
)
go

ALTER TABLE [WORK_ORDER]
	ADD CONSTRAINT [XPKWORK_ORDER] PRIMARY KEY  CLUSTERED ([WorkOrderID] ASC)
go

INSERT INTO [WORK_ORDER] ([WorkOrderDate], [EmployeeID], [DepartmentHead], [ProductNumber], [Quantity], [MaterialList], [StartDate], [CompletionDate] ) VALUES
('2017-10-14 00:00:00.000', 1, 'John Smith', 'AR-5381', 150, 'Steel, nuts, bolts', '2017-9-14 00:00:00.000', '2017-11-14 00:00:00.000'),
('2017-10-14 00:00:00.000', 1, 'John Smith', 'BA-8327', 100 , 'Steel, steel balls', '2017-9-14 00:00:00.000', '2017-11-14 00:00:00.000'),
('2017-10-14 00:00:00.000', 3, 'John Smith', 'BE-2349', 100 , 'Steel, steel balls', '2017-9-14 00:00:00.000', '2017-11-14 00:00:00.000');
go


CREATE TABLE [LOCATION]
( 
	[LocationID]         integer  NOT NULL  IDENTITY ( 1,1 ) ,
	[Name]               varchar(100)  NOT NULL ,
	[Capacity]           integer  NOT NULL ,
	[DateModified]       datetime  NOT NULL 
	CONSTRAINT [Default_Value_234_1699359810]
		 DEFAULT  (SYSDATETIME())
)
go

ALTER TABLE [LOCATION]
	ADD CONSTRAINT [XPKLOCATION] PRIMARY KEY  CLUSTERED ([LocationID] ASC)
go

INSERT INTO [LOCATION] ([Name], [Capacity] ) VALUES
('LocationAlpha', 100000),
('LocationBeta', 100000),
('LocationCharlie', 100000),
('LocationDelta', 100000),
('LocationEcho', 100000);
go


CREATE TABLE [INVENTORY]
( 
	[InventoryID]        integer  NOT NULL  IDENTITY ( 1,1 ) ,
	[ProductNumber]      nvarchar(100)  NOT NULL ,
	[LocationID]         integer  NOT NULL ,
	[ListPrice]          money  NOT NULL ,
	[Quantity]           integer  NOT NULL ,
	[Shelf]              char(3)  NULL ,
	[DateModified]       datetime  NOT NULL 
	CONSTRAINT [Default_Value_260_1917816896]
		 DEFAULT  (SYSDATETIME())
)
go

ALTER TABLE [INVENTORY]
	ADD CONSTRAINT [XPKINVENTORY] PRIMARY KEY  CLUSTERED ([InventoryID] ASC)
go

INSERT INTO [INVENTORY] ([ProductNumber], [LocationID], [ListPrice], [Quantity], [Shelf] ) VALUES
('AR-5381', 1, 200.00, 150, 'AR'),
('BA-8327', 1, 300.00, 100, 'BA'),
('BE-2349', 1, 250.00, 100, 'BE');
go


CREATE TABLE [LISTPRICE_HISTORY]
( 
	[InventoryID]        integer  NOT NULL ,
	[ListPrice]          money  NULL ,
	[StartDate]          datetime  NULL ,
	[EndDate]            datetime  NULL ,
	[DateModified]       datetime  NOT NULL 
	CONSTRAINT [Default_Value_284_15413233]
		 DEFAULT  (SYSDATETIME())
)
go

ALTER TABLE [LISTPRICE_HISTORY]
	ADD CONSTRAINT [XPKLISTPRICE_HISTORY] PRIMARY KEY  CLUSTERED ([InventoryID] ASC)
go

INSERT INTO [LISTPRICE_HISTORY] ([InventoryID], [ListPrice], [StartDate], [EndDate] ) VALUES
(1, 200.00, '2017-10-14 00:00:00.000', null),
(2, 300.00, '2017-10-14 00:00:00.000', null),
(3, 250.00, '2017-10-14 00:00:00.000', null);
go


CREATE TABLE [PRODUCT_ARCHIVE]
( 
	[ArchiveID]          integer  NOT NULL  IDENTITY ( 1,1 ) ,
	[ProductNumber]      nvarchar(100)  NOT NULL ,
	[LocationID]         integer  NOT NULL ,
	[ArchiveDate]        datetime  NULL ,
	[Quantity]           integer  NULL ,
	[DateModified]       datetime  NOT NULL 
	CONSTRAINT [Default_Value_295_50999666]
		 DEFAULT  (SYSDATETIME())
)
go

ALTER TABLE [PRODUCT_ARCHIVE]
	ADD CONSTRAINT [XPKPRODUCT_ARCHIVE] PRIMARY KEY  CLUSTERED ([ArchiveID] ASC)
go

INSERT INTO [PRODUCT_ARCHIVE] ([ProductNumber], [LocationID], [ArchiveDate], [Quantity] ) VALUES
('FE-3760', 3, NULL, 50),
('EC-T209', 3, NULL, 40);
go


ALTER TABLE [EMPLOYEE]
	ADD CONSTRAINT [R_23] FOREIGN KEY ([DepartmentID]) REFERENCES [DEPARTMENT]([DepartmentID])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [EMPLOYEE_ACCOUNT]
	ADD CONSTRAINT [R_24] FOREIGN KEY ([EmployeeID]) REFERENCES [EMPLOYEE]([EmployeeID])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go

ALTER TABLE [EMPLOYEE_ACCOUNT]
	ADD CONSTRAINT [R_29] FOREIGN KEY ([PasswordID]) REFERENCES [PASSWORD]([PasswordID])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [INVENTORY]
	ADD CONSTRAINT [R_2] FOREIGN KEY ([LocationID]) REFERENCES [LOCATION]([LocationID])
		ON UPDATE NO ACTION
go

ALTER TABLE [INVENTORY]
	ADD CONSTRAINT [R_16] FOREIGN KEY ([ProductNumber]) REFERENCES [PRODUCT]([ProductNumber])
		ON UPDATE NO ACTION
go


ALTER TABLE [LISTPRICE_HISTORY]
	ADD CONSTRAINT [R_12] FOREIGN KEY ([InventoryID]) REFERENCES [INVENTORY]([InventoryID])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [MODEL_SPECS]
	ADD CONSTRAINT [R_9] FOREIGN KEY ([ModelCode]) REFERENCES [PRODUCT_MODEL]([ModelCode])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [PRODUCT]
	ADD CONSTRAINT [R_22] FOREIGN KEY ([ModelCode]) REFERENCES [MODEL_SPECS]([ModelCode])
		ON UPDATE NO ACTION
go


ALTER TABLE [PRODUCT_ARCHIVE]
	ADD CONSTRAINT [R_18] FOREIGN KEY ([LocationID]) REFERENCES [LOCATION]([LocationID])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [PRODUCT_ARCHIVE]
	ADD CONSTRAINT [R_21] FOREIGN KEY ([ProductNumber]) REFERENCES [PRODUCT]([ProductNumber])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [WORK_ORDER]
	ADD CONSTRAINT [R_5] FOREIGN KEY ([EmployeeID]) REFERENCES [EMPLOYEE]([EmployeeID])
		ON UPDATE NO ACTION
go

ALTER TABLE [WORK_ORDER]
	ADD CONSTRAINT [R_31] FOREIGN KEY ([ProductNumber]) REFERENCES [PRODUCT]([ProductNumber])
		ON UPDATE NO ACTION
go


CREATE TRIGGER tD_DEPARTMENT ON DEPARTMENT FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on DEPARTMENT */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* DEPARTMENT  EMPLOYEE on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000111ae", PARENT_OWNER="", PARENT_TABLE="DEPARTMENT"
    CHILD_OWNER="", CHILD_TABLE="EMPLOYEE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_23", FK_COLUMNS="DepartmentID" */
    IF EXISTS (
      SELECT * FROM deleted,EMPLOYEE
      WHERE
        /*  %JoinFKPK(EMPLOYEE,deleted," = "," AND") */
        EMPLOYEE.DepartmentID = deleted.DepartmentID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete DEPARTMENT because EMPLOYEE exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_DEPARTMENT ON DEPARTMENT FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on DEPARTMENT */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insDepartmentID integer,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* DEPARTMENT  EMPLOYEE on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00012d4d", PARENT_OWNER="", PARENT_TABLE="DEPARTMENT"
    CHILD_OWNER="", CHILD_TABLE="EMPLOYEE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_23", FK_COLUMNS="DepartmentID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(DepartmentID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,EMPLOYEE
      WHERE
        /*  %JoinFKPK(EMPLOYEE,deleted," = "," AND") */
        EMPLOYEE.DepartmentID = deleted.DepartmentID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update DEPARTMENT because EMPLOYEE exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_EMPLOYEE ON EMPLOYEE FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on EMPLOYEE */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* EMPLOYEE  WORK_ORDER on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="000328ce", PARENT_OWNER="", PARENT_TABLE="EMPLOYEE"
    CHILD_OWNER="", CHILD_TABLE="WORK_ORDER"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_5", FK_COLUMNS="EmployeeID" */
    IF EXISTS (
      SELECT * FROM deleted,WORK_ORDER
      WHERE
        /*  %JoinFKPK(WORK_ORDER,deleted," = "," AND") */
        WORK_ORDER.EmployeeID = deleted.EmployeeID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete EMPLOYEE because WORK_ORDER exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* EMPLOYEE  EMPLOYEE_ACCOUNT on parent delete cascade */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="EMPLOYEE"
    CHILD_OWNER="", CHILD_TABLE="EMPLOYEE_ACCOUNT"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_24", FK_COLUMNS="EmployeeID" */
    DELETE EMPLOYEE_ACCOUNT
      FROM EMPLOYEE_ACCOUNT,deleted
      WHERE
        /*  %JoinFKPK(EMPLOYEE_ACCOUNT,deleted," = "," AND") */
        EMPLOYEE_ACCOUNT.EmployeeID = deleted.EmployeeID

    /* erwin Builtin Trigger */
    /* DEPARTMENT  EMPLOYEE on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="DEPARTMENT"
    CHILD_OWNER="", CHILD_TABLE="EMPLOYEE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_23", FK_COLUMNS="DepartmentID" */
    IF EXISTS (SELECT * FROM deleted,DEPARTMENT
      WHERE
        /* %JoinFKPK(deleted,DEPARTMENT," = "," AND") */
        deleted.DepartmentID = DEPARTMENT.DepartmentID AND
        NOT EXISTS (
          SELECT * FROM EMPLOYEE
          WHERE
            /* %JoinFKPK(EMPLOYEE,DEPARTMENT," = "," AND") */
            EMPLOYEE.DepartmentID = DEPARTMENT.DepartmentID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last EMPLOYEE because DEPARTMENT exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_EMPLOYEE ON EMPLOYEE FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on EMPLOYEE */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insEmployeeID integer,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* EMPLOYEE  WORK_ORDER on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0003b3e7", PARENT_OWNER="", PARENT_TABLE="EMPLOYEE"
    CHILD_OWNER="", CHILD_TABLE="WORK_ORDER"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_5", FK_COLUMNS="EmployeeID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(EmployeeID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,WORK_ORDER
      WHERE
        /*  %JoinFKPK(WORK_ORDER,deleted," = "," AND") */
        WORK_ORDER.EmployeeID = deleted.EmployeeID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update EMPLOYEE because WORK_ORDER exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* EMPLOYEE  EMPLOYEE_ACCOUNT on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="EMPLOYEE"
    CHILD_OWNER="", CHILD_TABLE="EMPLOYEE_ACCOUNT"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_24", FK_COLUMNS="EmployeeID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(EmployeeID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,EMPLOYEE_ACCOUNT
      WHERE
        /*  %JoinFKPK(EMPLOYEE_ACCOUNT,deleted," = "," AND") */
        EMPLOYEE_ACCOUNT.EmployeeID = deleted.EmployeeID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update EMPLOYEE because EMPLOYEE_ACCOUNT exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DEPARTMENT  EMPLOYEE on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="DEPARTMENT"
    CHILD_OWNER="", CHILD_TABLE="EMPLOYEE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_23", FK_COLUMNS="DepartmentID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(DepartmentID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,DEPARTMENT
        WHERE
          /* %JoinFKPK(inserted,DEPARTMENT) */
          inserted.DepartmentID = DEPARTMENT.DepartmentID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update EMPLOYEE because DEPARTMENT does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_EMPLOYEE_ACCOUNT ON EMPLOYEE_ACCOUNT FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on EMPLOYEE_ACCOUNT */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* PASSWORD  EMPLOYEE_ACCOUNT on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002a6fc", PARENT_OWNER="", PARENT_TABLE="PASSWORD"
    CHILD_OWNER="", CHILD_TABLE="EMPLOYEE_ACCOUNT"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_29", FK_COLUMNS="PasswordID" */
    IF EXISTS (SELECT * FROM deleted,PASSWORD
      WHERE
        /* %JoinFKPK(deleted,PASSWORD," = "," AND") */
        deleted.PasswordID = PASSWORD.PasswordID AND
        NOT EXISTS (
          SELECT * FROM EMPLOYEE_ACCOUNT
          WHERE
            /* %JoinFKPK(EMPLOYEE_ACCOUNT,PASSWORD," = "," AND") */
            EMPLOYEE_ACCOUNT.PasswordID = PASSWORD.PasswordID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last EMPLOYEE_ACCOUNT because PASSWORD exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* EMPLOYEE  EMPLOYEE_ACCOUNT on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="EMPLOYEE"
    CHILD_OWNER="", CHILD_TABLE="EMPLOYEE_ACCOUNT"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_24", FK_COLUMNS="EmployeeID" */
    IF EXISTS (SELECT * FROM deleted,EMPLOYEE
      WHERE
        /* %JoinFKPK(deleted,EMPLOYEE," = "," AND") */
        deleted.EmployeeID = EMPLOYEE.EmployeeID AND
        NOT EXISTS (
          SELECT * FROM EMPLOYEE_ACCOUNT
          WHERE
            /* %JoinFKPK(EMPLOYEE_ACCOUNT,EMPLOYEE," = "," AND") */
            EMPLOYEE_ACCOUNT.EmployeeID = EMPLOYEE.EmployeeID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last EMPLOYEE_ACCOUNT because EMPLOYEE exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_EMPLOYEE_ACCOUNT ON EMPLOYEE_ACCOUNT FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on EMPLOYEE_ACCOUNT */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insEmployeeID integer,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* PASSWORD  EMPLOYEE_ACCOUNT on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002bf7c", PARENT_OWNER="", PARENT_TABLE="PASSWORD"
    CHILD_OWNER="", CHILD_TABLE="EMPLOYEE_ACCOUNT"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_29", FK_COLUMNS="PasswordID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(PasswordID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,PASSWORD
        WHERE
          /* %JoinFKPK(inserted,PASSWORD) */
          inserted.PasswordID = PASSWORD.PasswordID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update EMPLOYEE_ACCOUNT because PASSWORD does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* EMPLOYEE  EMPLOYEE_ACCOUNT on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="EMPLOYEE"
    CHILD_OWNER="", CHILD_TABLE="EMPLOYEE_ACCOUNT"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_24", FK_COLUMNS="EmployeeID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(EmployeeID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,EMPLOYEE
        WHERE
          /* %JoinFKPK(inserted,EMPLOYEE) */
          inserted.EmployeeID = EMPLOYEE.EmployeeID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update EMPLOYEE_ACCOUNT because EMPLOYEE does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_INVENTORY ON INVENTORY FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on INVENTORY */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* INVENTORY  LISTPRICE_HISTORY on parent delete cascade */
    /* ERWIN_RELATION:CHECKSUM="0003423a", PARENT_OWNER="", PARENT_TABLE="INVENTORY"
    CHILD_OWNER="", CHILD_TABLE="LISTPRICE_HISTORY"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_12", FK_COLUMNS="InventoryID" */
    DELETE LISTPRICE_HISTORY
      FROM LISTPRICE_HISTORY,deleted
      WHERE
        /*  %JoinFKPK(LISTPRICE_HISTORY,deleted," = "," AND") */
        LISTPRICE_HISTORY.InventoryID = deleted.InventoryID

    /* erwin Builtin Trigger */
    /* PRODUCT  INVENTORY on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="PRODUCT"
    CHILD_OWNER="", CHILD_TABLE="INVENTORY"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_16", FK_COLUMNS="ProductNumber" */
    IF EXISTS (SELECT * FROM deleted,PRODUCT
      WHERE
        /* %JoinFKPK(deleted,PRODUCT," = "," AND") */
        deleted.ProductNumber = PRODUCT.ProductNumber AND
        NOT EXISTS (
          SELECT * FROM INVENTORY
          WHERE
            /* %JoinFKPK(INVENTORY,PRODUCT," = "," AND") */
            INVENTORY.ProductNumber = PRODUCT.ProductNumber
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last INVENTORY because PRODUCT exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* LOCATION  INVENTORY on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="LOCATION"
    CHILD_OWNER="", CHILD_TABLE="INVENTORY"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="LocationID" */
    IF EXISTS (SELECT * FROM deleted,LOCATION
      WHERE
        /* %JoinFKPK(deleted,LOCATION," = "," AND") */
        deleted.LocationID = LOCATION.LocationID AND
        NOT EXISTS (
          SELECT * FROM INVENTORY
          WHERE
            /* %JoinFKPK(INVENTORY,LOCATION," = "," AND") */
            INVENTORY.LocationID = LOCATION.LocationID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last INVENTORY because LOCATION exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_INVENTORY ON INVENTORY FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on INVENTORY */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insInventoryID integer,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* INVENTORY  LISTPRICE_HISTORY on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0003cead", PARENT_OWNER="", PARENT_TABLE="INVENTORY"
    CHILD_OWNER="", CHILD_TABLE="LISTPRICE_HISTORY"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_12", FK_COLUMNS="InventoryID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(InventoryID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,LISTPRICE_HISTORY
      WHERE
        /*  %JoinFKPK(LISTPRICE_HISTORY,deleted," = "," AND") */
        LISTPRICE_HISTORY.InventoryID = deleted.InventoryID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update INVENTORY because LISTPRICE_HISTORY exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* PRODUCT  INVENTORY on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="PRODUCT"
    CHILD_OWNER="", CHILD_TABLE="INVENTORY"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_16", FK_COLUMNS="ProductNumber" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ProductNumber)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,PRODUCT
        WHERE
          /* %JoinFKPK(inserted,PRODUCT) */
          inserted.ProductNumber = PRODUCT.ProductNumber
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update INVENTORY because PRODUCT does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* LOCATION  INVENTORY on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="LOCATION"
    CHILD_OWNER="", CHILD_TABLE="INVENTORY"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="LocationID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(LocationID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,LOCATION
        WHERE
          /* %JoinFKPK(inserted,LOCATION) */
          inserted.LocationID = LOCATION.LocationID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update INVENTORY because LOCATION does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_LISTPRICE_HISTORY ON LISTPRICE_HISTORY FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on LISTPRICE_HISTORY */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* INVENTORY  LISTPRICE_HISTORY on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001706d", PARENT_OWNER="", PARENT_TABLE="INVENTORY"
    CHILD_OWNER="", CHILD_TABLE="LISTPRICE_HISTORY"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_12", FK_COLUMNS="InventoryID" */
    IF EXISTS (SELECT * FROM deleted,INVENTORY
      WHERE
        /* %JoinFKPK(deleted,INVENTORY," = "," AND") */
        deleted.InventoryID = INVENTORY.InventoryID AND
        NOT EXISTS (
          SELECT * FROM LISTPRICE_HISTORY
          WHERE
            /* %JoinFKPK(LISTPRICE_HISTORY,INVENTORY," = "," AND") */
            LISTPRICE_HISTORY.InventoryID = INVENTORY.InventoryID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last LISTPRICE_HISTORY because INVENTORY exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_LISTPRICE_HISTORY ON LISTPRICE_HISTORY FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on LISTPRICE_HISTORY */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insInventoryID integer,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* INVENTORY  LISTPRICE_HISTORY on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00017def", PARENT_OWNER="", PARENT_TABLE="INVENTORY"
    CHILD_OWNER="", CHILD_TABLE="LISTPRICE_HISTORY"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_12", FK_COLUMNS="InventoryID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(InventoryID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,INVENTORY
        WHERE
          /* %JoinFKPK(inserted,INVENTORY) */
          inserted.InventoryID = INVENTORY.InventoryID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update LISTPRICE_HISTORY because INVENTORY does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_LOCATION ON LOCATION FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on LOCATION */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* LOCATION  PRODUCT_ARCHIVE on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00021393", PARENT_OWNER="", PARENT_TABLE="LOCATION"
    CHILD_OWNER="", CHILD_TABLE="PRODUCT_ARCHIVE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_18", FK_COLUMNS="LocationID" */
    IF EXISTS (
      SELECT * FROM deleted,PRODUCT_ARCHIVE
      WHERE
        /*  %JoinFKPK(PRODUCT_ARCHIVE,deleted," = "," AND") */
        PRODUCT_ARCHIVE.LocationID = deleted.LocationID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete LOCATION because PRODUCT_ARCHIVE exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* LOCATION  INVENTORY on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="LOCATION"
    CHILD_OWNER="", CHILD_TABLE="INVENTORY"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="LocationID" */
    IF EXISTS (
      SELECT * FROM deleted,INVENTORY
      WHERE
        /*  %JoinFKPK(INVENTORY,deleted," = "," AND") */
        INVENTORY.LocationID = deleted.LocationID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete LOCATION because INVENTORY exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_LOCATION ON LOCATION FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on LOCATION */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insLocationID integer,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* LOCATION  PRODUCT_ARCHIVE on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000250f1", PARENT_OWNER="", PARENT_TABLE="LOCATION"
    CHILD_OWNER="", CHILD_TABLE="PRODUCT_ARCHIVE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_18", FK_COLUMNS="LocationID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(LocationID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,PRODUCT_ARCHIVE
      WHERE
        /*  %JoinFKPK(PRODUCT_ARCHIVE,deleted," = "," AND") */
        PRODUCT_ARCHIVE.LocationID = deleted.LocationID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update LOCATION because PRODUCT_ARCHIVE exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* LOCATION  INVENTORY on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="LOCATION"
    CHILD_OWNER="", CHILD_TABLE="INVENTORY"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="LocationID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(LocationID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,INVENTORY
      WHERE
        /*  %JoinFKPK(INVENTORY,deleted," = "," AND") */
        INVENTORY.LocationID = deleted.LocationID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update LOCATION because INVENTORY exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_MODEL_SPECS ON MODEL_SPECS FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on MODEL_SPECS */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* MODEL_SPECS  PRODUCT on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="000250d9", PARENT_OWNER="", PARENT_TABLE="MODEL_SPECS"
    CHILD_OWNER="", CHILD_TABLE="PRODUCT"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_22", FK_COLUMNS="ModelCode" */
    IF EXISTS (
      SELECT * FROM deleted,PRODUCT
      WHERE
        /*  %JoinFKPK(PRODUCT,deleted," = "," AND") */
        PRODUCT.ModelCode = deleted.ModelCode
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete MODEL_SPECS because PRODUCT exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* PRODUCT_MODEL  MODEL_SPECS on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="PRODUCT_MODEL"
    CHILD_OWNER="", CHILD_TABLE="MODEL_SPECS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_9", FK_COLUMNS="ModelCode" */
    IF EXISTS (SELECT * FROM deleted,PRODUCT_MODEL
      WHERE
        /* %JoinFKPK(deleted,PRODUCT_MODEL," = "," AND") */
        deleted.ModelCode = PRODUCT_MODEL.ModelCode AND
        NOT EXISTS (
          SELECT * FROM MODEL_SPECS
          WHERE
            /* %JoinFKPK(MODEL_SPECS,PRODUCT_MODEL," = "," AND") */
            MODEL_SPECS.ModelCode = PRODUCT_MODEL.ModelCode
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last MODEL_SPECS because PRODUCT_MODEL exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_MODEL_SPECS ON MODEL_SPECS FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on MODEL_SPECS */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insModelCode nvarchar(100),
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* MODEL_SPECS  PRODUCT on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00027df0", PARENT_OWNER="", PARENT_TABLE="MODEL_SPECS"
    CHILD_OWNER="", CHILD_TABLE="PRODUCT"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_22", FK_COLUMNS="ModelCode" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ModelCode)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,PRODUCT
      WHERE
        /*  %JoinFKPK(PRODUCT,deleted," = "," AND") */
        PRODUCT.ModelCode = deleted.ModelCode
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update MODEL_SPECS because PRODUCT exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* PRODUCT_MODEL  MODEL_SPECS on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="PRODUCT_MODEL"
    CHILD_OWNER="", CHILD_TABLE="MODEL_SPECS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_9", FK_COLUMNS="ModelCode" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ModelCode)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,PRODUCT_MODEL
        WHERE
          /* %JoinFKPK(inserted,PRODUCT_MODEL) */
          inserted.ModelCode = PRODUCT_MODEL.ModelCode
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update MODEL_SPECS because PRODUCT_MODEL does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_PASSWORD ON PASSWORD FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on PASSWORD */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* PASSWORD  EMPLOYEE_ACCOUNT on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000125bc", PARENT_OWNER="", PARENT_TABLE="PASSWORD"
    CHILD_OWNER="", CHILD_TABLE="EMPLOYEE_ACCOUNT"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_29", FK_COLUMNS="PasswordID" */
    IF EXISTS (
      SELECT * FROM deleted,EMPLOYEE_ACCOUNT
      WHERE
        /*  %JoinFKPK(EMPLOYEE_ACCOUNT,deleted," = "," AND") */
        EMPLOYEE_ACCOUNT.PasswordID = deleted.PasswordID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete PASSWORD because EMPLOYEE_ACCOUNT exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_PASSWORD ON PASSWORD FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on PASSWORD */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insPasswordID integer,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* PASSWORD  EMPLOYEE_ACCOUNT on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00013f25", PARENT_OWNER="", PARENT_TABLE="PASSWORD"
    CHILD_OWNER="", CHILD_TABLE="EMPLOYEE_ACCOUNT"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_29", FK_COLUMNS="PasswordID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(PasswordID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,EMPLOYEE_ACCOUNT
      WHERE
        /*  %JoinFKPK(EMPLOYEE_ACCOUNT,deleted," = "," AND") */
        EMPLOYEE_ACCOUNT.PasswordID = deleted.PasswordID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update PASSWORD because EMPLOYEE_ACCOUNT exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_PRODUCT ON PRODUCT FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on PRODUCT */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* PRODUCT  WORK_ORDER on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="000448ec", PARENT_OWNER="", PARENT_TABLE="PRODUCT"
    CHILD_OWNER="", CHILD_TABLE="WORK_ORDER"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_31", FK_COLUMNS="ProductNumber" */
    IF EXISTS (
      SELECT * FROM deleted,WORK_ORDER
      WHERE
        /*  %JoinFKPK(WORK_ORDER,deleted," = "," AND") */
        WORK_ORDER.ProductNumber = deleted.ProductNumber
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete PRODUCT because WORK_ORDER exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* PRODUCT  PRODUCT_ARCHIVE on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="PRODUCT"
    CHILD_OWNER="", CHILD_TABLE="PRODUCT_ARCHIVE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="ProductNumber" */
    IF EXISTS (
      SELECT * FROM deleted,PRODUCT_ARCHIVE
      WHERE
        /*  %JoinFKPK(PRODUCT_ARCHIVE,deleted," = "," AND") */
        PRODUCT_ARCHIVE.ProductNumber = deleted.ProductNumber
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete PRODUCT because PRODUCT_ARCHIVE exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* PRODUCT  INVENTORY on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="PRODUCT"
    CHILD_OWNER="", CHILD_TABLE="INVENTORY"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_16", FK_COLUMNS="ProductNumber" */
    IF EXISTS (
      SELECT * FROM deleted,INVENTORY
      WHERE
        /*  %JoinFKPK(INVENTORY,deleted," = "," AND") */
        INVENTORY.ProductNumber = deleted.ProductNumber
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete PRODUCT because INVENTORY exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* MODEL_SPECS  PRODUCT on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MODEL_SPECS"
    CHILD_OWNER="", CHILD_TABLE="PRODUCT"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_22", FK_COLUMNS="ModelCode" */
    IF EXISTS (SELECT * FROM deleted,MODEL_SPECS
      WHERE
        /* %JoinFKPK(deleted,MODEL_SPECS," = "," AND") */
        deleted.ModelCode = MODEL_SPECS.ModelCode AND
        NOT EXISTS (
          SELECT * FROM PRODUCT
          WHERE
            /* %JoinFKPK(PRODUCT,MODEL_SPECS," = "," AND") */
            PRODUCT.ModelCode = MODEL_SPECS.ModelCode
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last PRODUCT because MODEL_SPECS exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_PRODUCT ON PRODUCT FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on PRODUCT */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insProductNumber nvarchar(100),
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* PRODUCT  WORK_ORDER on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0004ab55", PARENT_OWNER="", PARENT_TABLE="PRODUCT"
    CHILD_OWNER="", CHILD_TABLE="WORK_ORDER"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_31", FK_COLUMNS="ProductNumber" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ProductNumber)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,WORK_ORDER
      WHERE
        /*  %JoinFKPK(WORK_ORDER,deleted," = "," AND") */
        WORK_ORDER.ProductNumber = deleted.ProductNumber
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update PRODUCT because WORK_ORDER exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* PRODUCT  PRODUCT_ARCHIVE on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="PRODUCT"
    CHILD_OWNER="", CHILD_TABLE="PRODUCT_ARCHIVE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="ProductNumber" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ProductNumber)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,PRODUCT_ARCHIVE
      WHERE
        /*  %JoinFKPK(PRODUCT_ARCHIVE,deleted," = "," AND") */
        PRODUCT_ARCHIVE.ProductNumber = deleted.ProductNumber
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update PRODUCT because PRODUCT_ARCHIVE exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* PRODUCT  INVENTORY on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="PRODUCT"
    CHILD_OWNER="", CHILD_TABLE="INVENTORY"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_16", FK_COLUMNS="ProductNumber" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ProductNumber)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,INVENTORY
      WHERE
        /*  %JoinFKPK(INVENTORY,deleted," = "," AND") */
        INVENTORY.ProductNumber = deleted.ProductNumber
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update PRODUCT because INVENTORY exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* MODEL_SPECS  PRODUCT on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MODEL_SPECS"
    CHILD_OWNER="", CHILD_TABLE="PRODUCT"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_22", FK_COLUMNS="ModelCode" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ModelCode)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,MODEL_SPECS
        WHERE
          /* %JoinFKPK(inserted,MODEL_SPECS) */
          inserted.ModelCode = MODEL_SPECS.ModelCode
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update PRODUCT because MODEL_SPECS does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_PRODUCT_ARCHIVE ON PRODUCT_ARCHIVE FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on PRODUCT_ARCHIVE */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* PRODUCT  PRODUCT_ARCHIVE on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002a3bd", PARENT_OWNER="", PARENT_TABLE="PRODUCT"
    CHILD_OWNER="", CHILD_TABLE="PRODUCT_ARCHIVE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="ProductNumber" */
    IF EXISTS (SELECT * FROM deleted,PRODUCT
      WHERE
        /* %JoinFKPK(deleted,PRODUCT," = "," AND") */
        deleted.ProductNumber = PRODUCT.ProductNumber AND
        NOT EXISTS (
          SELECT * FROM PRODUCT_ARCHIVE
          WHERE
            /* %JoinFKPK(PRODUCT_ARCHIVE,PRODUCT," = "," AND") */
            PRODUCT_ARCHIVE.ProductNumber = PRODUCT.ProductNumber
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last PRODUCT_ARCHIVE because PRODUCT exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* LOCATION  PRODUCT_ARCHIVE on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="LOCATION"
    CHILD_OWNER="", CHILD_TABLE="PRODUCT_ARCHIVE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_18", FK_COLUMNS="LocationID" */
    IF EXISTS (SELECT * FROM deleted,LOCATION
      WHERE
        /* %JoinFKPK(deleted,LOCATION," = "," AND") */
        deleted.LocationID = LOCATION.LocationID AND
        NOT EXISTS (
          SELECT * FROM PRODUCT_ARCHIVE
          WHERE
            /* %JoinFKPK(PRODUCT_ARCHIVE,LOCATION," = "," AND") */
            PRODUCT_ARCHIVE.LocationID = LOCATION.LocationID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last PRODUCT_ARCHIVE because LOCATION exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_PRODUCT_ARCHIVE ON PRODUCT_ARCHIVE FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on PRODUCT_ARCHIVE */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insArchiveID integer,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* PRODUCT  PRODUCT_ARCHIVE on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002b8e8", PARENT_OWNER="", PARENT_TABLE="PRODUCT"
    CHILD_OWNER="", CHILD_TABLE="PRODUCT_ARCHIVE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="ProductNumber" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ProductNumber)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,PRODUCT
        WHERE
          /* %JoinFKPK(inserted,PRODUCT) */
          inserted.ProductNumber = PRODUCT.ProductNumber
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update PRODUCT_ARCHIVE because PRODUCT does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* LOCATION  PRODUCT_ARCHIVE on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="LOCATION"
    CHILD_OWNER="", CHILD_TABLE="PRODUCT_ARCHIVE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_18", FK_COLUMNS="LocationID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(LocationID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,LOCATION
        WHERE
          /* %JoinFKPK(inserted,LOCATION) */
          inserted.LocationID = LOCATION.LocationID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update PRODUCT_ARCHIVE because LOCATION does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_PRODUCT_MODEL ON PRODUCT_MODEL FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on PRODUCT_MODEL */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* PRODUCT_MODEL  MODEL_SPECS on parent delete cascade */
    /* ERWIN_RELATION:CHECKSUM="0000f4f0", PARENT_OWNER="", PARENT_TABLE="PRODUCT_MODEL"
    CHILD_OWNER="", CHILD_TABLE="MODEL_SPECS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_9", FK_COLUMNS="ModelCode" */
    DELETE MODEL_SPECS
      FROM MODEL_SPECS,deleted
      WHERE
        /*  %JoinFKPK(MODEL_SPECS,deleted," = "," AND") */
        MODEL_SPECS.ModelCode = deleted.ModelCode


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_PRODUCT_MODEL ON PRODUCT_MODEL FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on PRODUCT_MODEL */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insModelCode nvarchar(100),
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* PRODUCT_MODEL  MODEL_SPECS on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00013745", PARENT_OWNER="", PARENT_TABLE="PRODUCT_MODEL"
    CHILD_OWNER="", CHILD_TABLE="MODEL_SPECS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_9", FK_COLUMNS="ModelCode" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ModelCode)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,MODEL_SPECS
      WHERE
        /*  %JoinFKPK(MODEL_SPECS,deleted," = "," AND") */
        MODEL_SPECS.ModelCode = deleted.ModelCode
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update PRODUCT_MODEL because MODEL_SPECS exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




--CREATE TRIGGER tD_WORK_ORDER ON WORK_ORDER FOR DELETE AS
--/* erwin Builtin Trigger */
--/* DELETE trigger on WORK_ORDER */
--BEGIN
--  DECLARE  @errno   int,
--           @severity int,
--           @state    int,
--           @errmsg  varchar(255)
--    /* erwin Builtin Trigger */
--    /* PRODUCT  WORK_ORDER on child delete no action */
--    /* ERWIN_RELATION:CHECKSUM="00028c6c", PARENT_OWNER="", PARENT_TABLE="PRODUCT"
--    CHILD_OWNER="", CHILD_TABLE="WORK_ORDER"
--    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
--    FK_CONSTRAINT="R_31", FK_COLUMNS="ProductNumber" */
--    IF EXISTS (SELECT * FROM deleted,PRODUCT
--      WHERE
--        /* %JoinFKPK(deleted,PRODUCT," = "," AND") */
--        deleted.ProductNumber = PRODUCT.ProductNumber AND
--        NOT EXISTS (
--          SELECT * FROM WORK_ORDER
--          WHERE
--            /* %JoinFKPK(WORK_ORDER,PRODUCT," = "," AND") */
--            WORK_ORDER.ProductNumber = PRODUCT.ProductNumber
--        )
--    )
--    BEGIN
--      SELECT @errno  = 30010,
--             @errmsg = 'Cannot delete last WORK_ORDER because PRODUCT exists.'
--      GOTO error
--    END

--    /* erwin Builtin Trigger */
--    /* EMPLOYEE  WORK_ORDER on child delete no action */
--    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="EMPLOYEE"
--    CHILD_OWNER="", CHILD_TABLE="WORK_ORDER"
--    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
--    FK_CONSTRAINT="R_5", FK_COLUMNS="EmployeeID" */
--    IF EXISTS (SELECT * FROM deleted,EMPLOYEE
--      WHERE
--        /* %JoinFKPK(deleted,EMPLOYEE," = "," AND") */
--        deleted.EmployeeID = EMPLOYEE.EmployeeID AND
--        NOT EXISTS (
--          SELECT * FROM WORK_ORDER
--          WHERE
--            /* %JoinFKPK(WORK_ORDER,EMPLOYEE," = "," AND") */
--            WORK_ORDER.EmployeeID = EMPLOYEE.EmployeeID
--        )
--    )
--    BEGIN
--      SELECT @errno  = 30010,
--             @errmsg = 'Cannot delete last WORK_ORDER because EMPLOYEE exists.'
--      GOTO error
--    END


--    /* erwin Builtin Trigger */
--    RETURN
--error:
--   RAISERROR (@errmsg, -- Message text.
--              @severity, -- Severity (0~25).
--              @state) -- State (0~255).
--    rollback transaction
--END

--go


--CREATE TRIGGER tU_WORK_ORDER ON WORK_ORDER FOR UPDATE AS
--/* erwin Builtin Trigger */
--/* UPDATE trigger on WORK_ORDER */
--BEGIN
--  DECLARE  @numrows int,
--           @nullcnt int,
--           @validcnt int,
--           @insWorkOrderID integer,
--           @errno   int,
--           @severity int,
--           @state    int,
--           @errmsg  varchar(255)

--  SELECT @numrows = @@rowcount
--  /* erwin Builtin Trigger */
--  /* PRODUCT  WORK_ORDER on child update no action */
--  /* ERWIN_RELATION:CHECKSUM="0002c48c", PARENT_OWNER="", PARENT_TABLE="PRODUCT"
--    CHILD_OWNER="", CHILD_TABLE="WORK_ORDER"
--    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
--    FK_CONSTRAINT="R_31", FK_COLUMNS="ProductNumber" */
--  IF
--    /* %ChildFK(" OR",UPDATE) */
--    UPDATE(ProductNumber)
--  BEGIN
--    SELECT @nullcnt = 0
--    SELECT @validcnt = count(*)
--      FROM inserted,PRODUCT
--        WHERE
--          /* %JoinFKPK(inserted,PRODUCT) */
--          inserted.ProductNumber = PRODUCT.ProductNumber
--    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
--    IF @validcnt + @nullcnt != @numrows
--    BEGIN
--      SELECT @errno  = 30007,
--             @errmsg = 'Cannot update WORK_ORDER because PRODUCT does not exist.'
--      GOTO error
--    END
--  END

--  /* erwin Builtin Trigger */
--  /* EMPLOYEE  WORK_ORDER on child update no action */
--  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="EMPLOYEE"
--    CHILD_OWNER="", CHILD_TABLE="WORK_ORDER"
--    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
--    FK_CONSTRAINT="R_5", FK_COLUMNS="EmployeeID" */
--  IF
--    /* %ChildFK(" OR",UPDATE) */
--    UPDATE(EmployeeID)
--  BEGIN
--    SELECT @nullcnt = 0
--    SELECT @validcnt = count(*)
--      FROM inserted,EMPLOYEE
--        WHERE
--          /* %JoinFKPK(inserted,EMPLOYEE) */
--          inserted.EmployeeID = EMPLOYEE.EmployeeID
--    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
--    IF @validcnt + @nullcnt != @numrows
--    BEGIN
--      SELECT @errno  = 30007,
--             @errmsg = 'Cannot update WORK_ORDER because EMPLOYEE does not exist.'
--      GOTO error
--    END
--  END


--  /* erwin Builtin Trigger */
--  RETURN
--error:
--   RAISERROR (@errmsg, -- Message text.
--              @severity, -- Severity (0~25).
--              @state) -- State (0~255).
--    rollback transaction
--END

--go