USE [dbQLKhachSan]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 4/9/2019 8:41:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](20) NULL,
	[parentId] [int] NULL,
	[icon] [varchar](20) NULL,
	[url] [varchar](30) NULL,
	[i] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbCT_PhieuDichVu]    Script Date: 4/9/2019 8:41:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCT_PhieuDichVu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ServiceTicket] [int] NULL,
	[Service] [int] NULL,
	[Amount] [int] NULL,
	[Price] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbDichVu]    Script Date: 4/9/2019 8:41:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbDichVu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Price] [int] NULL DEFAULT ((100000)),
	[Unit] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbHoaDon]    Script Date: 4/9/2019 8:41:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbHoaDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreateDay] [datetime] NULL DEFAULT (getdate()),
	[TotalPrice] [int] NULL,
	[RoomTicket] [int] NULL,
	[Employee] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbKhachHang]    Script Date: 4/9/2019 8:41:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbKhachHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Gender] [nvarchar](5) NULL,
	[Address] [nvarchar](100) NULL,
	[NumberPhone] [char](13) NULL,
	[Card] [char](10) NULL,
	[Country] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbLoaiPhong]    Script Date: 4/9/2019 8:41:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbLoaiPhong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](250) NULL,
	[Price] [int] NULL CONSTRAINT [DF__tbLoaiPho__Price__164452B1]  DEFAULT ((500000)),
 CONSTRAINT [PK__tbLoaiPh__3214EC07181B7085] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbNhanVien]    Script Date: 4/9/2019 8:41:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbNhanVien](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Gender] [nvarchar](5) NULL,
	[Date] [date] NULL,
	[Address] [nvarchar](50) NULL,
	[Town] [int] NULL,
	[NumberPhone] [char](13) NULL,
	[Salary] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbPhieuDatPhong]    Script Date: 4/9/2019 8:41:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbPhieuDatPhong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreateDay] [date] NULL,
	[ComeDay] [datetime] NULL,
	[ReturnDay] [datetime] NULL,
	[Status] [bit] NULL,
	[Employee] [int] NULL,
	[Customer] [int] NULL,
	[Room] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbPhieuDichVu]    Script Date: 4/9/2019 8:41:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbPhieuDichVu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreateDay] [datetime] NULL DEFAULT (getdate()),
	[TotalPrice] [int] NULL,
	[RoomTicket] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbPhong]    Script Date: 4/9/2019 8:41:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbPhong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [int] NULL,
	[Floor] [int] NULL,
	[Status] [bit] NULL,
	[Category] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbTaiKhoan]    Script Date: 4/9/2019 8:41:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbTaiKhoan](
	[accountName] [nvarchar](50) NULL,
	[accountDate] [date] NULL,
	[accountSex] [nvarchar](5) NULL,
	[accountHometown] [int] NULL,
	[accountNumberPhone] [varchar](15) NULL,
	[accountAddress] [nvarchar](50) NULL,
	[accountTown] [int] NULL,
	[userName] [varchar](20) NULL,
	[passWord] [varchar](100) NULL,
	[accountImage] [varchar](200) NULL,
	[accountId] [int] IDENTITY(100000,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[accountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([id], [name], [parentId], [icon], [url], [i]) VALUES (1, N'Phòng', NULL, N'ti-home', NULL, 1)
INSERT [dbo].[Menu] ([id], [name], [parentId], [icon], [url], [i]) VALUES (2, N'Khách hàng', NULL, N'ti-crown', NULL, 2)
INSERT [dbo].[Menu] ([id], [name], [parentId], [icon], [url], [i]) VALUES (3, N'Nhân viên', NULL, N'ti-user', NULL, 3)
INSERT [dbo].[Menu] ([id], [name], [parentId], [icon], [url], [i]) VALUES (4, N'Đặt trả phòng', NULL, N'ti-key', NULL, 4)
INSERT [dbo].[Menu] ([id], [name], [parentId], [icon], [url], [i]) VALUES (6, N'Thêm phòng', 1, NULL, N'roomAddView', 1)
INSERT [dbo].[Menu] ([id], [name], [parentId], [icon], [url], [i]) VALUES (7, N'Danh sách', 1, NULL, N'roomListView', 2)
INSERT [dbo].[Menu] ([id], [name], [parentId], [icon], [url], [i]) VALUES (8, N'Thêm khách hàng', 2, NULL, N'customerAddView', 1)
INSERT [dbo].[Menu] ([id], [name], [parentId], [icon], [url], [i]) VALUES (9, N'Danh sách', 2, NULL, N'customerListView', 2)
INSERT [dbo].[Menu] ([id], [name], [parentId], [icon], [url], [i]) VALUES (10, N'Thêm nhân viên', 3, NULL, N'employeeAddView', 1)
INSERT [dbo].[Menu] ([id], [name], [parentId], [icon], [url], [i]) VALUES (11, N'Danh sách', 3, NULL, N'employeeListView', 2)
INSERT [dbo].[Menu] ([id], [name], [parentId], [icon], [url], [i]) VALUES (13, N'Dịch vụ', NULL, N'ti-face-smile', NULL, 6)
INSERT [dbo].[Menu] ([id], [name], [parentId], [icon], [url], [i]) VALUES (14, N'Thêm phiếu đặt', 4, NULL, N'borrowRoomAddView', 1)
INSERT [dbo].[Menu] ([id], [name], [parentId], [icon], [url], [i]) VALUES (15, N'Danh sách phiếu', 4, NULL, N'borrowRoomListView', 2)
INSERT [dbo].[Menu] ([id], [name], [parentId], [icon], [url], [i]) VALUES (18, N'Thêm dịch vụ', 13, NULL, N'serviceAddView', 1)
INSERT [dbo].[Menu] ([id], [name], [parentId], [icon], [url], [i]) VALUES (19, N'Danh sách dịch vụ', 13, NULL, N'serviceListView', 2)
SET IDENTITY_INSERT [dbo].[Menu] OFF
SET IDENTITY_INSERT [dbo].[tbCT_PhieuDichVu] ON 

INSERT [dbo].[tbCT_PhieuDichVu] ([Id], [ServiceTicket], [Service], [Amount], [Price]) VALUES (6, 11, 1, 1, 500000)
INSERT [dbo].[tbCT_PhieuDichVu] ([Id], [ServiceTicket], [Service], [Amount], [Price]) VALUES (7, 11, 2, 1, 600000)
INSERT [dbo].[tbCT_PhieuDichVu] ([Id], [ServiceTicket], [Service], [Amount], [Price]) VALUES (8, 11, 3, 1, 1000000)
INSERT [dbo].[tbCT_PhieuDichVu] ([Id], [ServiceTicket], [Service], [Amount], [Price]) VALUES (9, 12, 1, 1, 500000)
INSERT [dbo].[tbCT_PhieuDichVu] ([Id], [ServiceTicket], [Service], [Amount], [Price]) VALUES (10, 12, 2, 1, 600000)
INSERT [dbo].[tbCT_PhieuDichVu] ([Id], [ServiceTicket], [Service], [Amount], [Price]) VALUES (11, 12, 3, 1, 1000000)
INSERT [dbo].[tbCT_PhieuDichVu] ([Id], [ServiceTicket], [Service], [Amount], [Price]) VALUES (12, 12, 4, 1, 1200000)
INSERT [dbo].[tbCT_PhieuDichVu] ([Id], [ServiceTicket], [Service], [Amount], [Price]) VALUES (15, 11, 4, 2, 1200000)
INSERT [dbo].[tbCT_PhieuDichVu] ([Id], [ServiceTicket], [Service], [Amount], [Price]) VALUES (17, 14, 1, 1, 500000)
INSERT [dbo].[tbCT_PhieuDichVu] ([Id], [ServiceTicket], [Service], [Amount], [Price]) VALUES (21, 15, 1, 1, 500000)
INSERT [dbo].[tbCT_PhieuDichVu] ([Id], [ServiceTicket], [Service], [Amount], [Price]) VALUES (22, 15, 2, 2, 600000)
SET IDENTITY_INSERT [dbo].[tbCT_PhieuDichVu] OFF
SET IDENTITY_INSERT [dbo].[tbDichVu] ON 

INSERT [dbo].[tbDichVu] ([Id], [Name], [Price], [Unit]) VALUES (1, N'Gà nướng', 500000, N'đ/con')
INSERT [dbo].[tbDichVu] ([Id], [Name], [Price], [Unit]) VALUES (2, N'Gà quay', 600000, N'đ/con')
INSERT [dbo].[tbDichVu] ([Id], [Name], [Price], [Unit]) VALUES (3, N'Tôm hùm luộc', 1000000, N'đ/cân')
INSERT [dbo].[tbDichVu] ([Id], [Name], [Price], [Unit]) VALUES (4, N'Tôm hùm hấp', 1200000, N'đ/cân')
SET IDENTITY_INSERT [dbo].[tbDichVu] OFF
SET IDENTITY_INSERT [dbo].[tbHoaDon] ON 

INSERT [dbo].[tbHoaDon] ([Id], [CreateDay], [TotalPrice], [RoomTicket], [Employee]) VALUES (3, CAST(N'2019-03-13 23:28:24.637' AS DateTime), 8950000, 1, NULL)
INSERT [dbo].[tbHoaDon] ([Id], [CreateDay], [TotalPrice], [RoomTicket], [Employee]) VALUES (4, CAST(N'2019-03-13 23:32:23.077' AS DateTime), 2250000, 2, NULL)
INSERT [dbo].[tbHoaDon] ([Id], [CreateDay], [TotalPrice], [RoomTicket], [Employee]) VALUES (5, CAST(N'2019-03-14 16:10:40.690' AS DateTime), 800000, 3, NULL)
SET IDENTITY_INSERT [dbo].[tbHoaDon] OFF
SET IDENTITY_INSERT [dbo].[tbKhachHang] ON 

INSERT [dbo].[tbKhachHang] ([Id], [Name], [Gender], [Address], [NumberPhone], [Card], [Country]) VALUES (1, N'Ninh Thị Hoa', N'Nữ', N'Cổ Nhuế, Bắc Từ Liêm, Hà Nội', N'01234567891  ', N'123456789 ', N'Việt Nam')
INSERT [dbo].[tbKhachHang] ([Id], [Name], [Gender], [Address], [NumberPhone], [Card], [Country]) VALUES (3, N'Đỗ Thị Quyên', N'Nữ', N'Hưng Yên', N'0123654789   ', N'123666999 ', N'Việt Nam')
SET IDENTITY_INSERT [dbo].[tbKhachHang] OFF
SET IDENTITY_INSERT [dbo].[tbLoaiPhong] ON 

INSERT [dbo].[tbLoaiPhong] ([Id], [Name], [Description], [Price]) VALUES (1, N'Đơn - Vip1', N'Phòng bao gồm một giường, một phòng tắm kết hợp vệ sinh, có điều hòa.', 50000)
INSERT [dbo].[tbLoaiPhong] ([Id], [Name], [Description], [Price]) VALUES (2, N'Đơn - Vip2', N'Phòng bao gồm một giường, một nhà tắm, một nhà vệ sinh, có tivi, có điều hòa, có máy giặt.', 70000)
INSERT [dbo].[tbLoaiPhong] ([Id], [Name], [Description], [Price]) VALUES (3, N'Đôi - Vip1', N'Phòng bao gồm 2 giường, một nhà tắm kết hợp vệ sinh, có điều hòa ', 70000)
INSERT [dbo].[tbLoaiPhong] ([Id], [Name], [Description], [Price]) VALUES (4, N'Đôi - Vip2', N'Phòng bao gồm hai giường, một nhà tắm, một nhà vệ sinh, có tivi, có điều hòa, có máy giặt.', 90000)
INSERT [dbo].[tbLoaiPhong] ([Id], [Name], [Description], [Price]) VALUES (5, N'Đôi - Vip3', N'Phòng bao gồm hai giường, một phòng tắm, một phòng vệ sinh, một máy chơi game 2 người, có tivi , có rạp chiếu phim mini, có máy giặt, có điều hòa, có máy giặt.', 120000)
SET IDENTITY_INSERT [dbo].[tbLoaiPhong] OFF
SET IDENTITY_INSERT [dbo].[tbNhanVien] ON 

INSERT [dbo].[tbNhanVien] ([Id], [Name], [Gender], [Date], [Address], [Town], [NumberPhone], [Salary]) VALUES (1, N'Nguyễn Văn A', N'Nam', CAST(N'1997-03-08' AS Date), N'Ngõ 84', 616, N'0123456789   ', 2.3)
INSERT [dbo].[tbNhanVien] ([Id], [Name], [Gender], [Date], [Address], [Town], [NumberPhone], [Salary]) VALUES (2, N'Nguyễn Văn B', N'Nam', CAST(N'1994-03-11' AS Date), N'Xóm 3', 712, N'0987654321   ', 2.4)
INSERT [dbo].[tbNhanVien] ([Id], [Name], [Gender], [Date], [Address], [Town], [NumberPhone], [Salary]) VALUES (4, N'Trần Văn C', N'Nam', CAST(N'1992-03-14' AS Date), N'Xóm 9', 205, N'0111111111   ', 2.3)
SET IDENTITY_INSERT [dbo].[tbNhanVien] OFF
SET IDENTITY_INSERT [dbo].[tbPhieuDatPhong] ON 

INSERT [dbo].[tbPhieuDatPhong] ([Id], [CreateDay], [ComeDay], [ReturnDay], [Status], [Employee], [Customer], [Room]) VALUES (1, CAST(N'2019-03-12' AS Date), CAST(N'2019-03-12 00:00:00.000' AS DateTime), CAST(N'2019-03-13 23:28:24.600' AS DateTime), 1, 2, 1, 5)
INSERT [dbo].[tbPhieuDatPhong] ([Id], [CreateDay], [ComeDay], [ReturnDay], [Status], [Employee], [Customer], [Room]) VALUES (2, CAST(N'2019-03-12' AS Date), CAST(N'2019-03-12 00:00:00.000' AS DateTime), CAST(N'2019-03-13 23:32:11.827' AS DateTime), 1, 1, 1, 6)
INSERT [dbo].[tbPhieuDatPhong] ([Id], [CreateDay], [ComeDay], [ReturnDay], [Status], [Employee], [Customer], [Room]) VALUES (3, CAST(N'2019-03-13' AS Date), CAST(N'2019-03-13 00:00:00.000' AS DateTime), CAST(N'2019-03-14 16:10:40.633' AS DateTime), 1, 2, 1, 10)
INSERT [dbo].[tbPhieuDatPhong] ([Id], [CreateDay], [ComeDay], [ReturnDay], [Status], [Employee], [Customer], [Room]) VALUES (4, CAST(N'2019-03-14' AS Date), CAST(N'2019-03-14 00:00:00.000' AS DateTime), NULL, 0, 4, 3, 11)
SET IDENTITY_INSERT [dbo].[tbPhieuDatPhong] OFF
SET IDENTITY_INSERT [dbo].[tbPhieuDichVu] ON 

INSERT [dbo].[tbPhieuDichVu] ([Id], [CreateDay], [TotalPrice], [RoomTicket]) VALUES (11, CAST(N'2019-03-13 19:29:10.640' AS DateTime), 4500000, 1)
INSERT [dbo].[tbPhieuDichVu] ([Id], [CreateDay], [TotalPrice], [RoomTicket]) VALUES (12, CAST(N'2019-03-13 19:35:10.987' AS DateTime), 3300000, 1)
INSERT [dbo].[tbPhieuDichVu] ([Id], [CreateDay], [TotalPrice], [RoomTicket]) VALUES (14, CAST(N'2019-03-13 22:23:32.217' AS DateTime), 500000, 2)
INSERT [dbo].[tbPhieuDichVu] ([Id], [CreateDay], [TotalPrice], [RoomTicket]) VALUES (15, CAST(N'2019-03-14 16:10:21.720' AS DateTime), 1700000, 4)
SET IDENTITY_INSERT [dbo].[tbPhieuDichVu] OFF
SET IDENTITY_INSERT [dbo].[tbPhong] ON 

INSERT [dbo].[tbPhong] ([Id], [Number], [Floor], [Status], [Category]) VALUES (5, 1, 1, 1, 1)
INSERT [dbo].[tbPhong] ([Id], [Number], [Floor], [Status], [Category]) VALUES (6, 2, 1, 1, 1)
INSERT [dbo].[tbPhong] ([Id], [Number], [Floor], [Status], [Category]) VALUES (7, 3, 1, 1, 1)
INSERT [dbo].[tbPhong] ([Id], [Number], [Floor], [Status], [Category]) VALUES (8, 4, 1, 1, 1)
INSERT [dbo].[tbPhong] ([Id], [Number], [Floor], [Status], [Category]) VALUES (9, 5, 1, 1, 1)
INSERT [dbo].[tbPhong] ([Id], [Number], [Floor], [Status], [Category]) VALUES (10, 6, 1, 1, 1)
INSERT [dbo].[tbPhong] ([Id], [Number], [Floor], [Status], [Category]) VALUES (11, 1, 2, 0, 2)
SET IDENTITY_INSERT [dbo].[tbPhong] OFF
SET IDENTITY_INSERT [dbo].[tbTaiKhoan] ON 

INSERT [dbo].[tbTaiKhoan] ([accountName], [accountDate], [accountSex], [accountHometown], [accountNumberPhone], [accountAddress], [accountTown], [userName], [passWord], [accountImage], [accountId]) VALUES (N'Trần Trọng Long', CAST(N'1998-09-12' AS Date), N'Nữ', 14623, N'01672592144', N'số 9, ngõ 100', 1, N'kutyboy98           ', N'900150983cd24fb0d6963f7d28e17f72', N'/Jker/Data/images/Avatar/kutyboy98.jpg', 100000)
SET IDENTITY_INSERT [dbo].[tbTaiKhoan] OFF
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD FOREIGN KEY([parentId])
REFERENCES [dbo].[Menu] ([id])
GO
ALTER TABLE [dbo].[tbCT_PhieuDichVu]  WITH CHECK ADD FOREIGN KEY([ServiceTicket])
REFERENCES [dbo].[tbPhieuDichVu] ([Id])
GO
ALTER TABLE [dbo].[tbCT_PhieuDichVu]  WITH CHECK ADD FOREIGN KEY([Service])
REFERENCES [dbo].[tbDichVu] ([Id])
GO
ALTER TABLE [dbo].[tbHoaDon]  WITH CHECK ADD FOREIGN KEY([Employee])
REFERENCES [dbo].[tbNhanVien] ([Id])
GO
ALTER TABLE [dbo].[tbHoaDon]  WITH CHECK ADD FOREIGN KEY([RoomTicket])
REFERENCES [dbo].[tbPhieuDatPhong] ([Id])
GO
ALTER TABLE [dbo].[tbPhieuDatPhong]  WITH CHECK ADD FOREIGN KEY([Customer])
REFERENCES [dbo].[tbKhachHang] ([Id])
GO
ALTER TABLE [dbo].[tbPhieuDatPhong]  WITH CHECK ADD FOREIGN KEY([Employee])
REFERENCES [dbo].[tbNhanVien] ([Id])
GO
ALTER TABLE [dbo].[tbPhieuDatPhong]  WITH CHECK ADD FOREIGN KEY([Room])
REFERENCES [dbo].[tbPhong] ([Id])
GO
ALTER TABLE [dbo].[tbPhieuDichVu]  WITH CHECK ADD FOREIGN KEY([RoomTicket])
REFERENCES [dbo].[tbPhieuDatPhong] ([Id])
GO
ALTER TABLE [dbo].[tbPhong]  WITH CHECK ADD  CONSTRAINT [FK__tbPhong__Categor__1920BF5C] FOREIGN KEY([Category])
REFERENCES [dbo].[tbLoaiPhong] ([Id])
GO
ALTER TABLE [dbo].[tbPhong] CHECK CONSTRAINT [FK__tbPhong__Categor__1920BF5C]
GO
