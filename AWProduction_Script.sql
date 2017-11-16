/***********************************************************************************************
* This script creats the Adventure Works - Production database used for CSCI3432 Final Project *
***********************************************************************************************/

USE master;
GO

IF  DB_ID('AWProduction') IS NOT NULL
DROP DATABASE AWProduction;
GO

CREATE DATABASE AWProduction;
GO

USE AWProduction;


-- create the tables for the database

--DEPARTMENT--
CREATE TABLE [DEPARTMENT]
( 
	[DepartmentID]       integer  NOT NULL ,
	[DepartmentName]     varchar(100)  NOT NULL ,
	[DepartmentHead]     varchar(100)  NOT NULL ,
	[Rowguid]            uniqueidentifier NOT NULL ,
	[DateModified]       datetime2 NOT NULL  DEFAULT (SYSDATETIME())
)
go

ALTER TABLE [DEPARTMENT]
	ADD CONSTRAINT [XPKDEPARTMENT] PRIMARY KEY  CLUSTERED ([DepartmentID] ASC)
go

INSERT INTO [DEPARTMENT] ([DepartmentID], [DepartmentName], [DepartmentHead], [Rowguid] ) VALUES
(1001, 'DeptAlpha',	'John Smith', NEWID()),
(1002, 'DeptBeta',		'Sheri Brown', NEWID()),
(1003, 'DeptCharlie',	'Ken Johnson',NEWID());


--EMPLOYEE--
CREATE TABLE [EMPLOYEE]
( 
	[EmployeeID]         integer  NOT NULL ,
	[EmployeeName]       varchar(100)  NOT NULL ,
	[DepartmentID]       integer  NOT NULL ,
	[Rowguid]            uniqueidentifier  NOT NULL ,
	[DateModified]       datetime2 NOT NULL  DEFAULT (SYSDATETIME())
)
go

ALTER TABLE [EMPLOYEE]
	ADD CONSTRAINT [XPKEMPLOYEE] PRIMARY KEY  CLUSTERED ([EmployeeID] ASC)
go

INSERT INTO [EMPLOYEE] ([EmployeeID], [EmployeeName], [DepartmentID], [Rowguid] ) VALUES
(703, 'Bob One', 1001,  NEWID()),
(705, 'bob Two', 1001, NEWID()),
(706, 'bob Three', 1003 ,NEWID());


--PASSWORD--
CREATE TABLE [PASSWORD]
( 
	[PasswordID]         integer  NOT NULL ,
	[Password]           nvarchar(100)  NOT NULL ,
	[PasswordSalt]       nvarchar(100) NOT NULL ,
	[PasswordHash]       nvarchar(100)  NOT NULL 
)
go

ALTER TABLE [PASSWORD]
	ADD CONSTRAINT [XPKPASSWORD] PRIMARY KEY  CLUSTERED ([PasswordID] ASC)
go

INSERT INTO [PASSWORD] ([PasswordID], [Password], [PasswordSalt], [PasswordHash] ) VALUES
(1, 'password1', 'ksnfoowfnnslfjow30smdow03', 'invowo32'),
(2, 'password2', '93nfowuti33ifhie9rnov939h', 'oieif'),
(3, 'password3', 'nf93ubgj3i84btir983bi3fvv', 'i3jfi3bcvdi');


--EMPLOYEE ACCOUNT--
CREATE TABLE [EMPLOYEE_ACCOUNT]
( 
	[EmployeeID]         integer  NOT NULL ,
	[Username]           nvarchar(100)  NOT NULL ,
	[Email]              nvarchar(100)  NOT NULL ,
	[PasswordID]         integer  NOT NULL ,
	[StatusRights]       varchar(10)  NOT NULL ,
	[Rowguid]            uniqueidentifier  NOT NULL ,
	[DateModified]       datetime2 NOT NULL  DEFAULT (SYSDATETIME())
)
go

ALTER TABLE [EMPLOYEE_ACCOUNT]
	ADD CONSTRAINT [XPKEMPLOYEE_ACCOUNT] PRIMARY KEY  CLUSTERED ([EmployeeID] ASC)
go

INSERT INTO [EMPLOYEE_ACCOUNT] ([EmployeeID], [Username], [Email], [PasswordID], [StatusRights], [Rowguid] ) VALUES
(703, 'BobOne@company', 'BobOne@company.gmail.com', 1, 'Admin',  NEWID()),
(705, 'bobtwo@company', 'bobTwo@company.gmail.com', 2, 'Edit', NEWID()),
(706, 'bobthree@company', 'bobThree@company.gmail.com', 3, 'View', NEWID());


--PRIDUCT MODEL--
CREATE TABLE [PRODUCT_MODEL]
( 
	[ModelCode]          nvarchar(100)  NOT NULL ,
	[ModelName]          varchar(100)  NOT NULL ,
	[SizeCode]           nvarchar(100)  NOT NULL ,
	[WeightCode]         nvarchar(100)  NOT NULL ,
	[Description]        nvarchar(150)  NULL ,
	[Rowguid]            uniqueidentifier  NOT NULL ,
	[DateModified]       datetime2 NOT NULL  DEFAULT (SYSDATETIME())
)
go

ALTER TABLE [PRODUCT_MODEL]
	ADD CONSTRAINT [XPKPRODUCT_MODEL] PRIMARY KEY  CLUSTERED ([ModelCode] ASC)
go

INSERT INTO [PRODUCT_MODEL] ([ModelCode], [ModelName], [SizeCode], [WeightCode], [Description], [Rowguid] ) VALUES
('M-34', 'ModelOne', 4050, 5860, 'Model One Description',  NEWID()),
('M-35', 'ModelTwo', 4080, 5865, 'Model Two Description', NEWID()),
('M-36' , 'ModelThree', 4020, 5000, 'Model Three Description', NEWID());


--SPECS--
CREATE TABLE [MODEL_SPECS]
( 
	[ModelCode]          nvarchar(100)  NOT NULL ,
	[Color]              varchar(100)  NULL ,
	[Class]              varchar(100)  NULL ,
	[Style]              varchar(100)  NULL ,
	[Weight]             nvarchar(100)  NULL ,
	[Size]               nvarchar(100)  NULL ,
	[Rowguid]            uniqueidentifier  NOT NULL ,
	[DateModified]       datetime2 NOT NULL  DEFAULT (SYSDATETIME())
)
go

ALTER TABLE [MODEL_SPECS]
	ADD CONSTRAINT [XPKMODEL_SPECS] PRIMARY KEY  CLUSTERED ([ModelCode] ASC)
go

INSERT INTO [MODEL_SPECS] ([ModelCode], [Color], [Class], [Style], [Weight], [Size], [Rowguid] ) VALUES
('M-34', 'Silver', 'ClassB', 'Fluted', 400, 100,  NEWID()),
('M-35', 'Black', 'ClassB', 'Standard', 375, 120, NEWID()),
('M-36', 'Green', 'ClassG', 'Round', 270, 60, NEWID());


--LOCATION--
CREATE TABLE [LOCATION]
( 
	[LocationID]         integer  NOT NULL ,
	[Name]               varchar(100)  NOT NULL ,
	[Capacity]           integer  NOT NULL ,
	[Rowguid]            uniqueidentifier  NOT NULL ,
	[DateModified]       datetime2 NOT NULL  DEFAULT (SYSDATETIME())
)
go

ALTER TABLE [LOCATION]
	ADD CONSTRAINT [XPKLOCATION] PRIMARY KEY  CLUSTERED ([LocationID] ASC)
go

INSERT INTO [LOCATION] ([LocationID], [Name], [Capacity], [Rowguid] ) VALUES
(11, 'LocationAlpha', 100000, NEWID()),
(12, 'LocationBeta', 20000, NEWID()),
(13, 'LocationCharlie', 20000, NEWID());


--PROCUCTS--
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
	[Rowguid]            uniqueidentifier  NOT NULL ,
	[DateModified]       datetime2 NOT NULL  DEFAULT (SYSDATETIME())
)
go

ALTER TABLE [PRODUCT]
	ADD CONSTRAINT [XPKPRODUCT] PRIMARY KEY  CLUSTERED ([ProductNumber] ASC)
go

INSERT INTO [PRODUCT] ([ProductNumber], [Name], [ModelCode], [DaysToProduce], [CostToProduce], [StartSellDate], [EndSellDate], [DiscountinuedDate], [Rowguid] ) VALUES
('CD-2323', 'Bearing', 'M-35', 15, 100.00, '2016-10-14 00:00:00.000', null, '2017-10-14 00:00:00.000', NEWID()),
('AR-5381', 'Adjustable Race', 'M-34', 21, 150.00, '2017-10-14 00:00:00.000', null, null, NEWID()),
('BA-8327', 'Bearing Ball', 'M-35', 45, 250.00, '2017-10-14 00:00:00.000', null, null, NEWID()),
('BE-2349', 'BB Ball Bearing', 'M-36', 30, 200.00, '2017-10-14 00:00:00.000', null, null, NEWID());


--INVENTORY--
CREATE TABLE [INVENTORY]
( 
	[InventoryID]        integer  NOT NULL ,
	[ProductNumber]      nvarchar(100)  NOT NULL ,
	[LocationID]         integer  NOT NULL ,
	[ListPrice]          money  NOT NULL ,
	[Quantity]           integer  NOT NULL ,
	[Shelf]              char(3)  NULL ,
	[Rowguid]            uniqueidentifier  NOT NULL ,
	[DateModified]       datetime2 NOT NULL  DEFAULT (SYSDATETIME())
)
go

ALTER TABLE [INVENTORY]
	ADD CONSTRAINT [XPKINVENTORY] PRIMARY KEY  CLUSTERED ([InventoryID] ASC)
go

INSERT INTO [INVENTORY] ([InventoryID], [ProductNumber], [LocationID], [ListPrice], [Quantity], [Shelf], [Rowguid] ) VALUES
(0001, 'AR-5381', 11, 200.00, 150, 'AR',  NEWID()),
(0002, 'BA-8327', 11, 300.00, 100, 'BA', NEWID()),
(0003, 'BE-2349', 11, 250.00, 100, 'BE', NEWID());


--WORK ORDER--
CREATE TABLE [WORK_ORDER]
( 
	[WorkOrderID]        integer  NOT NULL ,
	[WorkOrderDate]      datetime  NOT NULL ,
	[EmployeeID]         integer  NOT NULL ,
	[DepartmentHead]     varchar(100)  NOT NULL ,
	[ProductNumber]      nvarchar(100)  NOT NULL ,
	[MaterialList]       nvarchar(200)  NOT NULL ,
	[StartDate]          datetime  NOT NULL ,
	[CompletionDate]     datetime  NOT NULL ,
	[Rowguid]            uniqueidentifier  NOT NULL ,
	[DateModified]       datetime2 NOT NULL  DEFAULT (SYSDATETIME())
)
go

ALTER TABLE [WORK_ORDER]
	ADD CONSTRAINT [XPKWORK_ORDER] PRIMARY KEY  CLUSTERED ([WorkOrderID] ASC)
go

INSERT INTO [WORK_ORDER] ([WorkOrderID], [WorkOrderDate], [EmployeeID], [DepartmentHead], [ProductNumber], [MaterialList], [StartDate], [CompletionDate], [Rowguid] ) VALUES
(1101, '2017-10-14 00:00:00.000', 703, 'John Smith', 'AR-5381', 'Steel, nuts, bolts', '2017-9-14 00:00:00.000', '2017-11-14 00:00:00.000', NEWID()),
(1102, '2017-10-14 00:00:00.000', 703, 'John Smith', 'BA-8327', 'Steel, steel balls', '2017-9-14 00:00:00.000', '2017-11-14 00:00:00.000', NEWID()),
(1103, '2017-10-14 00:00:00.000', 705, 'John Smith', 'BE-2349', 'Steel, steel balls', '2017-9-14 00:00:00.000', '2017-11-14 00:00:00.000', NEWID());


--HISTORY--
CREATE TABLE [LISTPRICE_HISTORY]
( 
	[InventoryID]        integer  NOT NULL ,
	[ListPrice]          money  NULL ,
	[StartDate]          datetime  NULL ,
	[EndDate]            datetime  NULL ,
	[Rowguid]            uniqueidentifier  NOT NULL ,
	[DateModified]       datetime2 NOT NULL  DEFAULT (SYSDATETIME())
)
go

ALTER TABLE [LISTPRICE_HISTORY]
	ADD CONSTRAINT [XPKLISTPRICE_HISTORY] PRIMARY KEY  CLUSTERED ([InventoryID] ASC)
go

INSERT INTO [LISTPRICE_HISTORY] ([InventoryID], [ListPrice], [StartDate], [EndDate], [Rowguid] ) VALUES
(0001, 200.00, '2017-10-14 00:00:00.000', null, NEWID()),
(0002, 300.00, '2017-10-14 00:00:00.000', null, NEWID()),
(0003, 250.00, '2017-10-14 00:00:00.000', null, NEWID());


--ARCHIVE--
CREATE TABLE [PRODUCT_ARCHIVE]
( 
	[ArchiveID]          integer  NOT NULL ,
	[ProductNumber]      nvarchar(100)  NOT NULL ,
	[LocationID]         integer  NOT NULL ,
	[ArchiveDate]        datetime  NULL ,
	[Quantity]           integer  NULL ,
	[RowGuid]            uniqueidentifier  NOT NULL ,
	[DateModified]       datetime2 NOT NULL  DEFAULT (SYSDATETIME())
)
go

ALTER TABLE [PRODUCT_ARCHIVE]
	ADD CONSTRAINT [XPKPRODUCT_ARCHIVE] PRIMARY KEY  CLUSTERED ([ArchiveID] ASC)
go

INSERT INTO [PRODUCT_ARCHIVE] ([ArchiveID], [ProductNumber], [LocationID], [ArchiveDate], [Quantity], [Rowguid] ) VALUES
(9001, 'CD-2323', 13, null, 50, NEWID());

ALTER TABLE [EMPLOYEE]
	ADD CONSTRAINT [R_23] FOREIGN KEY ([DepartmentID]) REFERENCES [DEPARTMENT]([DepartmentID])
		ON UPDATE NO ACTION
go


ALTER TABLE [EMPLOYEE_ACCOUNT]
	ADD CONSTRAINT [R_24] FOREIGN KEY ([EmployeeID]) REFERENCES [EMPLOYEE]([EmployeeID])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go

ALTER TABLE [EMPLOYEE_ACCOUNT]
	ADD CONSTRAINT [R_29] FOREIGN KEY ([PasswordID]) REFERENCES [PASSWORD]([PasswordID])
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
		ON DELETE CASCADE
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

CREATE TRIGGER tD_EMPLOYEE ON EMPLOYEE FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on EMPLOYEE */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* EMPLOYEE  EMPLOYEE_ACCOUNT on parent delete cascade */
    /* ERWIN_RELATION:CHECKSUM="00031e60", PARENT_OWNER="", PARENT_TABLE="EMPLOYEE"
    CHILD_OWNER="", CHILD_TABLE="EMPLOYEE_ACCOUNT"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_24", FK_COLUMNS="EmployeeID" */
    DELETE EMPLOYEE_ACCOUNT
      FROM EMPLOYEE_ACCOUNT,deleted
      WHERE
        /*  %JoinFKPK(EMPLOYEE_ACCOUNT,deleted," = "," AND") */
        EMPLOYEE_ACCOUNT.EmployeeID = deleted.EmployeeID

    /* erwin Builtin Trigger */
    /* EMPLOYEE  WORK_ORDER on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="EMPLOYEE"
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
  /* EMPLOYEE  EMPLOYEE_ACCOUNT on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000385ab", PARENT_OWNER="", PARENT_TABLE="EMPLOYEE"
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
  /* EMPLOYEE  WORK_ORDER on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="EMPLOYEE"
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
    /* MODEL_SPECS  PRODUCT on parent delete cascade */
    /* ERWIN_RELATION:CHECKSUM="0002281f", PARENT_OWNER="", PARENT_TABLE="MODEL_SPECS"
    CHILD_OWNER="", CHILD_TABLE="PRODUCT"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_22", FK_COLUMNS="ModelCode" */
    DELETE PRODUCT
      FROM PRODUCT,deleted
      WHERE
        /*  %JoinFKPK(PRODUCT,deleted," = "," AND") */
        PRODUCT.ModelCode = deleted.ModelCode

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
           @insModelCode nvarchar,
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
    /* PASSWORD  EMPLOYEE_ACCOUNT on parent delete restrict */
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
           @insProductNumber nvarchar,
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
           @insModelCode nvarchar,
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




CREATE TRIGGER tD_WORK_ORDER ON WORK_ORDER FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on WORK_ORDER */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* PRODUCT  WORK_ORDER on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00028c6c", PARENT_OWNER="", PARENT_TABLE="PRODUCT"
    CHILD_OWNER="", CHILD_TABLE="WORK_ORDER"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_31", FK_COLUMNS="ProductNumber" */
    IF EXISTS (SELECT * FROM deleted,PRODUCT
      WHERE
        /* %JoinFKPK(deleted,PRODUCT," = "," AND") */
        deleted.ProductNumber = PRODUCT.ProductNumber AND
        NOT EXISTS (
          SELECT * FROM WORK_ORDER
          WHERE
            /* %JoinFKPK(WORK_ORDER,PRODUCT," = "," AND") */
            WORK_ORDER.ProductNumber = PRODUCT.ProductNumber
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last WORK_ORDER because PRODUCT exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* EMPLOYEE  WORK_ORDER on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="EMPLOYEE"
    CHILD_OWNER="", CHILD_TABLE="WORK_ORDER"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_5", FK_COLUMNS="EmployeeID" */
    IF EXISTS (SELECT * FROM deleted,EMPLOYEE
      WHERE
        /* %JoinFKPK(deleted,EMPLOYEE," = "," AND") */
        deleted.EmployeeID = EMPLOYEE.EmployeeID AND
        NOT EXISTS (
          SELECT * FROM WORK_ORDER
          WHERE
            /* %JoinFKPK(WORK_ORDER,EMPLOYEE," = "," AND") */
            WORK_ORDER.EmployeeID = EMPLOYEE.EmployeeID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last WORK_ORDER because EMPLOYEE exists.'
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


CREATE TRIGGER tU_WORK_ORDER ON WORK_ORDER FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on WORK_ORDER */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insWorkOrderID integer,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* PRODUCT  WORK_ORDER on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002c48c", PARENT_OWNER="", PARENT_TABLE="PRODUCT"
    CHILD_OWNER="", CHILD_TABLE="WORK_ORDER"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_31", FK_COLUMNS="ProductNumber" */
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
             @errmsg = 'Cannot update WORK_ORDER because PRODUCT does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* EMPLOYEE  WORK_ORDER on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="EMPLOYEE"
    CHILD_OWNER="", CHILD_TABLE="WORK_ORDER"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_5", FK_COLUMNS="EmployeeID" */
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
             @errmsg = 'Cannot update WORK_ORDER because EMPLOYEE does not exist.'
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