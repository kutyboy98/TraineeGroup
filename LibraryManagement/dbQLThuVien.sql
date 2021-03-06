USE [dbQLThuVien]
GO
/****** Object:  Table [dbo].[tbDauSach]    Script Date: 7/31/2019 8:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbDauSach](
	[bookId] [int] IDENTITY(1000,1) NOT NULL,
	[bookName] [nvarchar](100) NULL,
	[categoryId] [int] NULL,
	[publishId] [int] NULL,
	[bookImage] [varchar](200) NULL,
	[bookAmount] [int] NULL,
	[placeId] [int] NULL,
	[pageNumber] [int] NULL,
	[publishYear] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[bookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbDauSach_TacGia]    Script Date: 7/31/2019 8:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbDauSach_TacGia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[authorId] [int] NULL,
	[bookId] [int] NULL,
	[isMain] [bit] NULL CONSTRAINT [DF__tbDauSach__isMai__2739D489]  DEFAULT ((0)),
 CONSTRAINT [PK__tbDauSac__3213E83F9523FAB1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbDiaDiem]    Script Date: 7/31/2019 8:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbDiaDiem](
	[placeId] [int] IDENTITY(1,1) NOT NULL,
	[placeName] [nvarchar](50) NULL,
	[placeSpace] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[placeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbDocGia]    Script Date: 7/31/2019 8:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbDocGia](
	[readerId] [int] IDENTITY(10000000,1) NOT NULL,
	[readerName] [nvarchar](50) NULL,
	[readerDate] [date] NULL,
	[readerSex] [nvarchar](5) NULL CONSTRAINT [DF__tbDocGia__reader__1DE57479]  DEFAULT (N'Nam'),
	[readerHometown] [int] NULL,
	[readerNumberPhone] [varchar](50) NULL,
	[readerAddress] [nvarchar](50) NULL,
	[readerTown] [int] NULL,
 CONSTRAINT [PK__tbDocGia__4A173E836C289256] PRIMARY KEY CLUSTERED 
(
	[readerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbLoaiSach]    Script Date: 7/31/2019 8:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbLoaiSach](
	[categoryId] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbNXB]    Script Date: 7/31/2019 8:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbNXB](
	[publisherId] [int] IDENTITY(1,1) NOT NULL,
	[publisherName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[publisherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbTacGia]    Script Date: 7/31/2019 8:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbTacGia](
	[authorId] [int] IDENTITY(1,1) NOT NULL,
	[authorName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[authorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbTaiKhoan]    Script Date: 7/31/2019 8:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbTaiKhoan](
	[accountId] [int] IDENTITY(100,1) NOT NULL,
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
 CONSTRAINT [PK__tbTaiKho__F267251E3B82A7E3] PRIMARY KEY CLUSTERED 
(
	[accountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbTaiKhoan_CuonSach_DocGia]    Script Date: 7/31/2019 8:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbTaiKhoan_CuonSach_DocGia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[accountId] [int] NULL,
	[readerId] [int] NULL,
	[borrowDay] [date] NULL,
	[returnDay] [date] NULL CONSTRAINT [DF__tbTaiKhoa__retur__22AA2996]  DEFAULT ('1-1-1998'),
	[returnTrue] [bit] NULL,
	[bookId] [int] NULL,
	[paymentTerm] [date] NULL,
 CONSTRAINT [PK__tbTaiKho__3213E83F6F8EA855] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tbDauSach] ON 

INSERT [dbo].[tbDauSach] ([bookId], [bookName], [categoryId], [publishId], [bookImage], [bookAmount], [placeId], [pageNumber], [publishYear]) VALUES (1000, N'Giải tích 1', 1, 1, N'/Data/images/Book/Maths/Giai_Tich_1.jpg', 10, 1, 70, CAST(N'2014-01-01' AS Date))
INSERT [dbo].[tbDauSach] ([bookId], [bookName], [categoryId], [publishId], [bookImage], [bookAmount], [placeId], [pageNumber], [publishYear]) VALUES (1001, N'Giải tích 2', 1, 1, N'/Data/images/Book/Maths/Giai_Tich_2.jpg', 10, 1, NULL, NULL)
INSERT [dbo].[tbDauSach] ([bookId], [bookName], [categoryId], [publishId], [bookImage], [bookAmount], [placeId], [pageNumber], [publishYear]) VALUES (1002, N'Xác suất thông kê', 1, 1, N'/Data/images/Book/Maths/Xac_Suat_Thong_Ke.jpg', 10, 1, NULL, NULL)
INSERT [dbo].[tbDauSach] ([bookId], [bookName], [categoryId], [publishId], [bookImage], [bookAmount], [placeId], [pageNumber], [publishYear]) VALUES (1003, N'Vật lý 1', 5, 1, N'/Data/images/Book/Physics/Vat_Ly_Dai_Cuong_1.jpg', 10, 2, NULL, NULL)
INSERT [dbo].[tbDauSach] ([bookId], [bookName], [categoryId], [publishId], [bookImage], [bookAmount], [placeId], [pageNumber], [publishYear]) VALUES (1004, N'Vật lý 2', 5, 1, N'/Data/images/Book/Physics/Vat_Ly_Dai_Cuong_2.jpg', 10, 2, NULL, NULL)
INSERT [dbo].[tbDauSach] ([bookId], [bookName], [categoryId], [publishId], [bookImage], [bookAmount], [placeId], [pageNumber], [publishYear]) VALUES (1008, N'Vật lý 3', 5, 1, N'/Data/images/Book/Physics/Vat_Ly_Dai_Cuong_3.jpg', 10, 2, NULL, NULL)
INSERT [dbo].[tbDauSach] ([bookId], [bookName], [categoryId], [publishId], [bookImage], [bookAmount], [placeId], [pageNumber], [publishYear]) VALUES (1009, N'Đại số tuyến tính', 1, 1, N'/Data/images/Book/Maths/Dai_So_Tuyen_Tinh.PNG', 10, 1, NULL, NULL)
INSERT [dbo].[tbDauSach] ([bookId], [bookName], [categoryId], [publishId], [bookImage], [bookAmount], [placeId], [pageNumber], [publishYear]) VALUES (1010, N'Số đỏ', 2, 2, N'/Data/images/Book/Literary/So-do.jpg', 10, 3, NULL, NULL)
INSERT [dbo].[tbDauSach] ([bookId], [bookName], [categoryId], [publishId], [bookImage], [bookAmount], [placeId], [pageNumber], [publishYear]) VALUES (1011, N'Tắt đèn', 2, 2, N'/Data/images/Book/Literary/Tat_den.jpg', 10, 3, NULL, NULL)
INSERT [dbo].[tbDauSach] ([bookId], [bookName], [categoryId], [publishId], [bookImage], [bookAmount], [placeId], [pageNumber], [publishYear]) VALUES (1012, N'Dế mèn phiêu lưu ký', 2, 3, N'/Data/images/Book/Literary/De-men-phieu-luu-ky.jpg', 20, 3, 150, NULL)
SET IDENTITY_INSERT [dbo].[tbDauSach] OFF
SET IDENTITY_INSERT [dbo].[tbDauSach_TacGia] ON 

INSERT [dbo].[tbDauSach_TacGia] ([id], [authorId], [bookId], [isMain]) VALUES (12, 6, 1009, 1)
INSERT [dbo].[tbDauSach_TacGia] ([id], [authorId], [bookId], [isMain]) VALUES (14, 5, 1002, 1)
INSERT [dbo].[tbDauSach_TacGia] ([id], [authorId], [bookId], [isMain]) VALUES (15, 4, 1003, 1)
INSERT [dbo].[tbDauSach_TacGia] ([id], [authorId], [bookId], [isMain]) VALUES (16, 4, 1004, 1)
INSERT [dbo].[tbDauSach_TacGia] ([id], [authorId], [bookId], [isMain]) VALUES (17, 4, 1008, 1)
INSERT [dbo].[tbDauSach_TacGia] ([id], [authorId], [bookId], [isMain]) VALUES (18, 2, 1001, 1)
INSERT [dbo].[tbDauSach_TacGia] ([id], [authorId], [bookId], [isMain]) VALUES (19, 3, 1001, NULL)
INSERT [dbo].[tbDauSach_TacGia] ([id], [authorId], [bookId], [isMain]) VALUES (20, 1, 1001, NULL)
INSERT [dbo].[tbDauSach_TacGia] ([id], [authorId], [bookId], [isMain]) VALUES (21, 7, 1010, 1)
INSERT [dbo].[tbDauSach_TacGia] ([id], [authorId], [bookId], [isMain]) VALUES (22, 8, 1011, 1)
INSERT [dbo].[tbDauSach_TacGia] ([id], [authorId], [bookId], [isMain]) VALUES (30, 9, 1012, 1)
INSERT [dbo].[tbDauSach_TacGia] ([id], [authorId], [bookId], [isMain]) VALUES (34, 1, 1000, 1)
SET IDENTITY_INSERT [dbo].[tbDauSach_TacGia] OFF
SET IDENTITY_INSERT [dbo].[tbDiaDiem] ON 

INSERT [dbo].[tbDiaDiem] ([placeId], [placeName], [placeSpace]) VALUES (1, N'Kệ 001', 1000)
INSERT [dbo].[tbDiaDiem] ([placeId], [placeName], [placeSpace]) VALUES (2, N'Kệ 002', 500)
INSERT [dbo].[tbDiaDiem] ([placeId], [placeName], [placeSpace]) VALUES (3, N'Kệ 003', 1000)
INSERT [dbo].[tbDiaDiem] ([placeId], [placeName], [placeSpace]) VALUES (4, N'Kệ 004', 750)
SET IDENTITY_INSERT [dbo].[tbDiaDiem] OFF
SET IDENTITY_INSERT [dbo].[tbDocGia] ON 

INSERT [dbo].[tbDocGia] ([readerId], [readerName], [readerDate], [readerSex], [readerHometown], [readerNumberPhone], [readerAddress], [readerTown]) VALUES (10000000, N'Ninh Thị Hoa', CAST(N'1998-06-10' AS Date), N'Nữ', NULL, N'03333333333', N'Xóm 3', 616)
INSERT [dbo].[tbDocGia] ([readerId], [readerName], [readerDate], [readerSex], [readerHometown], [readerNumberPhone], [readerAddress], [readerTown]) VALUES (10000004, N'Trần Trọng Long', CAST(N'1998-12-09' AS Date), N'Nam', NULL, N'0582343726', N'Khối 4', 14623)
SET IDENTITY_INSERT [dbo].[tbDocGia] OFF
SET IDENTITY_INSERT [dbo].[tbLoaiSach] ON 

INSERT [dbo].[tbLoaiSach] ([categoryId], [categoryName]) VALUES (1, N'Toán học')
INSERT [dbo].[tbLoaiSach] ([categoryId], [categoryName]) VALUES (2, N'Văn học')
INSERT [dbo].[tbLoaiSach] ([categoryId], [categoryName]) VALUES (3, N'Ngoại ngữ')
INSERT [dbo].[tbLoaiSach] ([categoryId], [categoryName]) VALUES (4, N'Lập trình')
INSERT [dbo].[tbLoaiSach] ([categoryId], [categoryName]) VALUES (5, N'Vật lý')
SET IDENTITY_INSERT [dbo].[tbLoaiSach] OFF
SET IDENTITY_INSERT [dbo].[tbNXB] ON 

INSERT [dbo].[tbNXB] ([publisherId], [publisherName]) VALUES (1, N'Giáo Dục Việt Nam')
INSERT [dbo].[tbNXB] ([publisherId], [publisherName]) VALUES (2, N'Nhà xuất bản văn học')
INSERT [dbo].[tbNXB] ([publisherId], [publisherName]) VALUES (3, N'Phương Nam')
SET IDENTITY_INSERT [dbo].[tbNXB] OFF
SET IDENTITY_INSERT [dbo].[tbTacGia] ON 

INSERT [dbo].[tbTacGia] ([authorId], [authorName]) VALUES (1, N'Nguyễn Đình Trí')
INSERT [dbo].[tbTacGia] ([authorId], [authorName]) VALUES (2, N'Trần Việt Dũng')
INSERT [dbo].[tbTacGia] ([authorId], [authorName]) VALUES (3, N'Nguyễn Xuân Thảo')
INSERT [dbo].[tbTacGia] ([authorId], [authorName]) VALUES (4, N'Lương Duyên Bình')
INSERT [dbo].[tbTacGia] ([authorId], [authorName]) VALUES (5, N'Lê Sĩ Đồng')
INSERT [dbo].[tbTacGia] ([authorId], [authorName]) VALUES (6, N'Trần Trọng Huệ')
INSERT [dbo].[tbTacGia] ([authorId], [authorName]) VALUES (7, N'Vũ Trọng Phụng')
INSERT [dbo].[tbTacGia] ([authorId], [authorName]) VALUES (8, N'Ngô Tất Tố')
INSERT [dbo].[tbTacGia] ([authorId], [authorName]) VALUES (9, N'Tô Hoài')
SET IDENTITY_INSERT [dbo].[tbTacGia] OFF
SET IDENTITY_INSERT [dbo].[tbTaiKhoan] ON 

INSERT [dbo].[tbTaiKhoan] ([accountId], [accountName], [accountDate], [accountSex], [accountHometown], [accountNumberPhone], [accountAddress], [accountTown], [userName], [passWord], [accountImage]) VALUES (100, N'Trần Trọng Long', CAST(N'1998-12-09' AS Date), N'Nam', 14623, N'01672592144', N'số 9, ngõ 100', 14623, N'kutyboy98           ', N'5def7bfa5f0352d85a7db8259d5887ba', N'/Data/images/Avatar/kutyboy98.jpg')
SET IDENTITY_INSERT [dbo].[tbTaiKhoan] OFF
SET IDENTITY_INSERT [dbo].[tbTaiKhoan_CuonSach_DocGia] ON 

INSERT [dbo].[tbTaiKhoan_CuonSach_DocGia] ([id], [accountId], [readerId], [borrowDay], [returnDay], [returnTrue], [bookId], [paymentTerm]) VALUES (2, NULL, 10000000, CAST(N'2019-02-08' AS Date), CAST(N'2019-02-28' AS Date), 1, 1001, CAST(N'2019-03-09' AS Date))
INSERT [dbo].[tbTaiKhoan_CuonSach_DocGia] ([id], [accountId], [readerId], [borrowDay], [returnDay], [returnTrue], [bookId], [paymentTerm]) VALUES (3, NULL, 10000000, CAST(N'2019-02-08' AS Date), CAST(N'2019-02-28' AS Date), 1, 1002, CAST(N'2019-03-09' AS Date))
INSERT [dbo].[tbTaiKhoan_CuonSach_DocGia] ([id], [accountId], [readerId], [borrowDay], [returnDay], [returnTrue], [bookId], [paymentTerm]) VALUES (4, NULL, 10000000, CAST(N'2019-02-08' AS Date), NULL, 0, 1011, CAST(N'2019-04-01' AS Date))
INSERT [dbo].[tbTaiKhoan_CuonSach_DocGia] ([id], [accountId], [readerId], [borrowDay], [returnDay], [returnTrue], [bookId], [paymentTerm]) VALUES (5, NULL, 10000000, CAST(N'2019-02-06' AS Date), CAST(N'2019-02-11' AS Date), 1, 1012, CAST(N'2019-02-07' AS Date))
INSERT [dbo].[tbTaiKhoan_CuonSach_DocGia] ([id], [accountId], [readerId], [borrowDay], [returnDay], [returnTrue], [bookId], [paymentTerm]) VALUES (6, NULL, 10000004, CAST(N'2019-02-08' AS Date), NULL, 0, 1000, CAST(N'2019-02-28' AS Date))
INSERT [dbo].[tbTaiKhoan_CuonSach_DocGia] ([id], [accountId], [readerId], [borrowDay], [returnDay], [returnTrue], [bookId], [paymentTerm]) VALUES (7, 100, 10000004, CAST(N'2019-02-11' AS Date), NULL, 0, 1010, CAST(N'2019-02-28' AS Date))
INSERT [dbo].[tbTaiKhoan_CuonSach_DocGia] ([id], [accountId], [readerId], [borrowDay], [returnDay], [returnTrue], [bookId], [paymentTerm]) VALUES (8, 100, 10000004, CAST(N'2019-02-12' AS Date), CAST(N'2019-02-12' AS Date), 1, 1008, CAST(N'2019-02-28' AS Date))
INSERT [dbo].[tbTaiKhoan_CuonSach_DocGia] ([id], [accountId], [readerId], [borrowDay], [returnDay], [returnTrue], [bookId], [paymentTerm]) VALUES (9, 100, 10000004, CAST(N'2019-04-13' AS Date), NULL, 0, 1012, CAST(N'2019-04-28' AS Date))
INSERT [dbo].[tbTaiKhoan_CuonSach_DocGia] ([id], [accountId], [readerId], [borrowDay], [returnDay], [returnTrue], [bookId], [paymentTerm]) VALUES (10, 100, 10000004, CAST(N'2019-05-18' AS Date), NULL, 0, 1001, CAST(N'2019-07-05' AS Date))
SET IDENTITY_INSERT [dbo].[tbTaiKhoan_CuonSach_DocGia] OFF
ALTER TABLE [dbo].[tbDauSach]  WITH CHECK ADD FOREIGN KEY([categoryId])
REFERENCES [dbo].[tbLoaiSach] ([categoryId])
GO
ALTER TABLE [dbo].[tbDauSach]  WITH CHECK ADD FOREIGN KEY([placeId])
REFERENCES [dbo].[tbDiaDiem] ([placeId])
GO
ALTER TABLE [dbo].[tbDauSach]  WITH CHECK ADD FOREIGN KEY([publishId])
REFERENCES [dbo].[tbNXB] ([publisherId])
GO
ALTER TABLE [dbo].[tbDauSach_TacGia]  WITH CHECK ADD  CONSTRAINT [FK__tbDauSach__autho__3D2915A8] FOREIGN KEY([authorId])
REFERENCES [dbo].[tbTacGia] ([authorId])
GO
ALTER TABLE [dbo].[tbDauSach_TacGia] CHECK CONSTRAINT [FK__tbDauSach__autho__3D2915A8]
GO
ALTER TABLE [dbo].[tbDauSach_TacGia]  WITH CHECK ADD  CONSTRAINT [FK__tbDauSach__autho__3E1D39E1] FOREIGN KEY([authorId])
REFERENCES [dbo].[tbTacGia] ([authorId])
GO
ALTER TABLE [dbo].[tbDauSach_TacGia] CHECK CONSTRAINT [FK__tbDauSach__autho__3E1D39E1]
GO
ALTER TABLE [dbo].[tbDauSach_TacGia]  WITH CHECK ADD FOREIGN KEY([bookId])
REFERENCES [dbo].[tbDauSach] ([bookId])
GO
ALTER TABLE [dbo].[tbTaiKhoan_CuonSach_DocGia]  WITH CHECK ADD FOREIGN KEY([accountId])
REFERENCES [dbo].[tbTaiKhoan] ([accountId])
GO
ALTER TABLE [dbo].[tbTaiKhoan_CuonSach_DocGia]  WITH CHECK ADD FOREIGN KEY([bookId])
REFERENCES [dbo].[tbDauSach] ([bookId])
GO
ALTER TABLE [dbo].[tbTaiKhoan_CuonSach_DocGia]  WITH CHECK ADD FOREIGN KEY([readerId])
REFERENCES [dbo].[tbDocGia] ([readerId])
GO
