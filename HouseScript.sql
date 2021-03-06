USE [HOUSEDB]
GO
/****** Object:  Table [dbo].[CONTRACTS]    Script Date: 3/27/2019 5:31:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONTRACTS](
	[ContractNo] [nchar](10) NOT NULL,
	[HouseID] [nchar](10) NULL,
	[EmpID] [nchar](10) NULL,
	[CustomerID] [nchar](10) NULL,
	[SignedDate] [date] NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Duration] [int] NULL,hjbhj
	[ContractValue] [int] NULL,
	[PrePaid] [int] NULL,
 CONSTRAINT [PK_CONTRACT] PRIMARY KEY CLUSTERED 
(
	[ContractNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CUSTOMERS]    Script Date: 3/27/2019 5:31:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMERS](
	[CustomerID] [nchar](10) NOT NULL,
	[Gender] [bit] NULL,
	[Cname] [nvarchar](50) NULL,
	[Caddress] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_CUSTOMER] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMPLOYEES]    Script Date: 3/27/2019 5:31:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEES](
	[EmpID] [nchar](10) NOT NULL,
	[Ename] [nchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[Salary] [int] NULL,
	[Gender] [bit] NULL,
 CONSTRAINT [PK_EMPLOYEE] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOUSES]    Script Date: 3/27/2019 5:31:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOUSES](
	[HouseID] [nchar](10) NOT NULL,
	[HouseType] [nchar](10) NULL,
	[Area_m2] [int] NULL,
	[Price] [int] NULL,
	[Floor] [int] NULL,
	[BedRoom] [int] NULL,
 CONSTRAINT [PK_HOUSE] PRIMARY KEY CLUSTERED 
(
	[HouseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[CONTRACTS] ([ContractNo], [HouseID], [EmpID], [CustomerID], [SignedDate], [StartDate], [EndDate], [Duration], [ContractValue], [PrePaid]) VALUES (N'CT001     ', N'A201      ', N'E001      ', N'VN001     ', CAST(N'2018-10-01' AS Date), CAST(N'2018-10-01' AS Date), CAST(N'2019-10-01' AS Date), 12, 12000, 8400)
INSERT [dbo].[CONTRACTS] ([ContractNo], [HouseID], [EmpID], [CustomerID], [SignedDate], [StartDate], [EndDate], [Duration], [ContractValue], [PrePaid]) VALUES (N'CT002     ', N'C301      ', N'E002      ', N'VN002     ', CAST(N'2018-01-01' AS Date), CAST(N'2018-01-01' AS Date), CAST(N'2018-06-01' AS Date), 5, 3000, 3000)
INSERT [dbo].[CONTRACTS] ([ContractNo], [HouseID], [EmpID], [CustomerID], [SignedDate], [StartDate], [EndDate], [Duration], [ContractValue], [PrePaid]) VALUES (N'CT003     ', N'B301      ', N'E001      ', N'VN003     ', CAST(N'2017-10-01' AS Date), CAST(N'2017-10-01' AS Date), CAST(N'2018-06-01' AS Date), 8, 6400, 4480)
INSERT [dbo].[CONTRACTS] ([ContractNo], [HouseID], [EmpID], [CustomerID], [SignedDate], [StartDate], [EndDate], [Duration], [ContractValue], [PrePaid]) VALUES (N'CT004     ', N'B302      ', N'E003      ', N'VN004     ', CAST(N'2018-09-01' AS Date), CAST(N'2018-09-01' AS Date), CAST(N'2019-09-01' AS Date), 12, 9600, 6720)
INSERT [dbo].[CONTRACTS] ([ContractNo], [HouseID], [EmpID], [CustomerID], [SignedDate], [StartDate], [EndDate], [Duration], [ContractValue], [PrePaid]) VALUES (N'CT005     ', N'A202      ', N'E002      ', N'VN005     ', CAST(N'2017-12-30' AS Date), CAST(N'2017-12-30' AS Date), CAST(N'2018-12-30' AS Date), 12, 12000, 8400)
INSERT [dbo].[CONTRACTS] ([ContractNo], [HouseID], [EmpID], [CustomerID], [SignedDate], [StartDate], [EndDate], [Duration], [ContractValue], [PrePaid]) VALUES (N'CT006     ', N'C303      ', N'E004      ', N'VN006     ', CAST(N'2018-09-01' AS Date), CAST(N'2018-09-01' AS Date), CAST(N'2019-12-01' AS Date), 15, 9000, 4500)
INSERT [dbo].[CONTRACTS] ([ContractNo], [HouseID], [EmpID], [CustomerID], [SignedDate], [StartDate], [EndDate], [Duration], [ContractValue], [PrePaid]) VALUES (N'CT007     ', N'A203      ', N'E001      ', N'VN007     ', CAST(N'2017-07-31' AS Date), CAST(N'2017-07-31' AS Date), CAST(N'2018-01-31' AS Date), 6, 6000, 6000)
INSERT [dbo].[CUSTOMERS] ([CustomerID], [Gender], [Cname], [Caddress], [Email]) VALUES (N'VN001     ', 1, N'Khoa', N'Hanoi', N'khoa@gmail.com')
INSERT [dbo].[CUSTOMERS] ([CustomerID], [Gender], [Cname], [Caddress], [Email]) VALUES (N'VN002     ', 0, N'Nga', N'Hue', N'nga@gmail.com')
INSERT [dbo].[CUSTOMERS] ([CustomerID], [Gender], [Cname], [Caddress], [Email]) VALUES (N'VN003     ', 1, N'Chung', N'Quangnam', N'chung@gmail.com')
INSERT [dbo].[CUSTOMERS] ([CustomerID], [Gender], [Cname], [Caddress], [Email]) VALUES (N'VN004     ', 1, N'Thai', N'Danang', N'thai@gmail.com')
INSERT [dbo].[CUSTOMERS] ([CustomerID], [Gender], [Cname], [Caddress], [Email]) VALUES (N'VN005     ', 0, N'Hanh', N'Quangnam', NULL)
INSERT [dbo].[CUSTOMERS] ([CustomerID], [Gender], [Cname], [Caddress], [Email]) VALUES (N'VN006     ', 0, N'Giang', N'Hue', NULL)
INSERT [dbo].[CUSTOMERS] ([CustomerID], [Gender], [Cname], [Caddress], [Email]) VALUES (N'VN007     ', 0, N'Hien', N'Danang', NULL)
INSERT [dbo].[EMPLOYEES] ([EmpID], [Ename], [Email], [Salary], [Gender]) VALUES (N'E001      ', N'Ha        ', N'ha@gmail.com', 1000, 0)
INSERT [dbo].[EMPLOYEES] ([EmpID], [Ename], [Email], [Salary], [Gender]) VALUES (N'E002      ', N'Liem      ', N'liem@gmail.com', 900, 1)
INSERT [dbo].[EMPLOYEES] ([EmpID], [Ename], [Email], [Salary], [Gender]) VALUES (N'E003      ', N'Linh      ', N'linh@gmail.com', 1100, 0)
INSERT [dbo].[EMPLOYEES] ([EmpID], [Ename], [Email], [Salary], [Gender]) VALUES (N'E004      ', N'Nam       ', N'nam@gmail.com', 800, 1)
INSERT [dbo].[EMPLOYEES] ([EmpID], [Ename], [Email], [Salary], [Gender]) VALUES (N'E005      ', N'Nhan      ', N'nhan@gmail.com', 900, 1)
INSERT [dbo].[EMPLOYEES] ([EmpID], [Ename], [Email], [Salary], [Gender]) VALUES (N'E006      ', N'Nguyet    ', N'nguyet@gmail.com', 900, 0)
INSERT [dbo].[HOUSES] ([HouseID], [HouseType], [Area_m2], [Price], [Floor], [BedRoom]) VALUES (N'A201      ', N'VIP       ', 90, 1000, 2, 2)
INSERT [dbo].[HOUSES] ([HouseID], [HouseType], [Area_m2], [Price], [Floor], [BedRoom]) VALUES (N'A202      ', N'VIP       ', 70, 1000, 2, 1)
INSERT [dbo].[HOUSES] ([HouseID], [HouseType], [Area_m2], [Price], [Floor], [BedRoom]) VALUES (N'A203      ', N'VIP       ', 70, 1000, 2, 1)
INSERT [dbo].[HOUSES] ([HouseID], [HouseType], [Area_m2], [Price], [Floor], [BedRoom]) VALUES (N'B301      ', N'Luxury    ', 90, 800, 3, 3)
INSERT [dbo].[HOUSES] ([HouseID], [HouseType], [Area_m2], [Price], [Floor], [BedRoom]) VALUES (N'B302      ', N'Luxury    ', 90, 800, 3, 3)
INSERT [dbo].[HOUSES] ([HouseID], [HouseType], [Area_m2], [Price], [Floor], [BedRoom]) VALUES (N'C301      ', N'Economic  ', 90, 600, 3, 3)
INSERT [dbo].[HOUSES] ([HouseID], [HouseType], [Area_m2], [Price], [Floor], [BedRoom]) VALUES (N'C302      ', N'Economic  ', 100, 600, 2, 2)
INSERT [dbo].[HOUSES] ([HouseID], [HouseType], [Area_m2], [Price], [Floor], [BedRoom]) VALUES (N'C303      ', N'Economic  ', 90, 600, 3, 2)
ALTER TABLE [dbo].[CONTRACTS]  WITH CHECK ADD  CONSTRAINT [FK_CONTRACT_CUSTOMER] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CUSTOMERS] ([CustomerID])
GO
ALTER TABLE [dbo].[CONTRACTS] CHECK CONSTRAINT [FK_CONTRACT_CUSTOMER]
GO
ALTER TABLE [dbo].[CONTRACTS]  WITH CHECK ADD  CONSTRAINT [FK_CONTRACT_HOUSE] FOREIGN KEY([HouseID])
REFERENCES [dbo].[HOUSES] ([HouseID])
GO
ALTER TABLE [dbo].[CONTRACTS] CHECK CONSTRAINT [FK_CONTRACT_HOUSE]
GO
ALTER TABLE [dbo].[CONTRACTS]  WITH CHECK ADD  CONSTRAINT [FK_CONTRACTS_EMPLOYEES] FOREIGN KEY([EmpID])
REFERENCES [dbo].[EMPLOYEES] ([EmpID])
GO
ALTER TABLE [dbo].[CONTRACTS] CHECK CONSTRAINT [FK_CONTRACTS_EMPLOYEES]
GO
