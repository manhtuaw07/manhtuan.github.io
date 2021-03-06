USE [TracNghiem.Net]
GO
/****** Object:  Table [dbo].[CaThi]    Script Date: 21/04/09 1:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaThi](
	[MaCaThi] [nvarchar](11) NOT NULL,
	[TenKiThi] [nvarchar](50) NULL,
	[MaMon] [nchar](4) NULL,
	[TGbatdau] [datetime] NULL,
	[TGketthuc] [datetime] NULL,
	[TenCaThi] [nvarchar](50) NULL,
	[SoCau] [int] NULL,
	[SoCauKho] [int] NULL,
 CONSTRAINT [PK_CaThi] PRIMARY KEY CLUSTERED 
(
	[MaCaThi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CauHoi]    Script Date: 21/04/09 1:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CauHoi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NoiDungCauHoi] [nvarchar](max) NULL,
	[MaNguoiDung] [nchar](4) NULL,
	[MaMon] [nchar](4) NULL,
	[DapAn1] [nvarchar](255) NULL,
	[DapAn2] [nvarchar](250) NULL,
	[DapAn3] [nvarchar](250) NULL,
	[DapAn4] [nvarchar](250) NULL,
	[DapAnDung] [nvarchar](250) NULL,
	[created_time] [nvarchar](50) NULL,
	[lastest_update] [nvarchar](50) NULL,
 CONSTRAINT [PK_CauHoi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_KetQua]    Script Date: 21/04/09 1:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_KetQua](
	[MaThiSinh] [nchar](10) NOT NULL,
	[Diem] [float] NULL,
	[MaMon] [nchar](4) NOT NULL,
	[NgayThi] [nchar](12) NOT NULL,
	[MaCaThi] [nvarchar](11) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_MonThi]    Script Date: 21/04/09 1:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_MonThi](
	[MaMon] [nchar](4) NOT NULL,
	[TenMon] [nvarchar](50) NOT NULL,
	[SoCauHoi] [int] NULL,
	[ThoiGianLamBai] [int] NULL,
 CONSTRAINT [PK_Table_MonThi] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_NguoiDung]    Script Date: 21/04/09 1:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_NguoiDung](
	[MaNguoiDung] [nchar](4) NOT NULL,
	[TenNguoiDung] [nvarchar](50) NOT NULL,
	[MatKhauNguoiDung] [nchar](20) NOT NULL,
	[LoaiNguoiDung] [nchar](1) NOT NULL,
	[MaNhanVien] [nchar](4) NOT NULL,
 CONSTRAINT [PK_Table_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_NhanVien]    Script Date: 21/04/09 1:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_NhanVien](
	[MaNhanVien] [nchar](4) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDienThoai] [nvarchar](20) NULL,
	[NgaySinh] [varchar](20) NOT NULL,
	[ChucVu] [nvarchar](20) NULL,
	[MatKhau] [nvarchar](250) NULL,
 CONSTRAINT [PK_Table_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_ThiSinh]    Script Date: 21/04/09 1:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_ThiSinh](
	[MaThiSinh] [nchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[NgaySinh] [nvarchar](20) NULL,
	[TenDangNhap] [nchar](20) NOT NULL,
	[MatKhau] [nchar](10) NOT NULL,
	[Truong] [nvarchar](50) NOT NULL,
	[Lop] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Table_ThiSinh] PRIMARY KEY CLUSTERED 
(
	[MaThiSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_CauHoi]    Script Date: 21/04/09 1:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CauHoi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NoiDungCauHoi] [nvarchar](max) NULL,
	[MaNguoiDung] [nchar](4) NULL,
	[MaMon] [nchar](4) NULL,
	[DapAn1] [nvarchar](max) NULL,
	[DapAn2] [nvarchar](max) NULL,
	[DapAn3] [nvarchar](max) NULL,
	[DapAn4] [nvarchar](max) NULL,
	[DapAnDung] [nvarchar](max) NULL,
	[created_time] [nvarchar](255) NULL,
	[lastest_update] [nvarchar](250) NULL,
	[Chuong] [int] NULL,
	[CapDo] [nvarchar](10) NULL,
 CONSTRAINT [PK_tbl_CauHoi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_DapAn]    Script Date: 21/04/09 1:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_DapAn](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dapan1] [nvarchar](50) NULL,
	[dapan2] [nvarchar](50) NULL,
	[dapan3] [nvarchar](50) NULL,
	[dapan4] [nvarchar](50) NULL,
	[dapandung] [nvarchar](50) NULL,
	[MaCauHoi] [nchar](4) NULL,
 CONSTRAINT [PK_tbl_DapAn] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[CaThi] ([MaCaThi], [TenKiThi], [MaMon], [TGbatdau], [TGketthuc], [TenCaThi], [SoCau], [SoCauKho]) VALUES (N'1111', N'HocKyI', N'MMT ', CAST(N'2021-03-04 09:00:00.000' AS DateTime), CAST(N'2021-03-04 10:00:00.000' AS DateTime), N'Ca1', 40, 20)
INSERT [dbo].[CaThi] ([MaCaThi], [TenKiThi], [MaMon], [TGbatdau], [TGketthuc], [TenCaThi], [SoCau], [SoCauKho]) VALUES (N'c1', N'HocKyI', N'MMT ', CAST(N'2021-03-04 10:00:00.000' AS DateTime), CAST(N'2021-03-04 11:00:00.000' AS DateTime), N'Ca2', 40, 20)
INSERT [dbo].[CaThi] ([MaCaThi], [TenKiThi], [MaMon], [TGbatdau], [TGketthuc], [TenCaThi], [SoCau], [SoCauKho]) VALUES (N'c2', N'h?c kì', N'MMT ', CAST(N'2021-03-04 10:00:00.000' AS DateTime), CAST(N'2021-03-04 11:00:00.000' AS DateTime), N'á', 40, 20)
INSERT [dbo].[CaThi] ([MaCaThi], [TenKiThi], [MaMon], [TGbatdau], [TGketthuc], [TenCaThi], [SoCau], [SoCauKho]) VALUES (N'ca1hocki1', N'HocKyI', N'MMT ', CAST(N'2021-03-04 10:00:00.000' AS DateTime), CAST(N'2021-03-04 11:00:00.000' AS DateTime), N'Ca 1 h?c k? 1', 40, 30)
SET IDENTITY_INSERT [dbo].[CauHoi] ON 

INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (24, N'I’m surprised... you. You’re not normally as rude as you were tonight.', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (26, N'12345', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (27, N'2', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (28, N'3', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (29, N'4', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (30, N'5', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (31, N'6', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (32, N'7', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (33, N'8', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (34, N'9', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (35, N'12', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (36, N'13', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (37, N'14', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (38, N'15', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (39, N'16', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (40, N'17', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (41, N'18', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (42, N'19', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (43, N'22', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (44, N'23', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (45, N'24', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (46, N'25', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (47, N'26', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (48, N'27', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (49, N'28', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (50, N'29', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (51, N'30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (52, N'I’m surprised... you. You’re not normally as rude as you were tonight.', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (53, N'12345', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (54, N'2', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (55, N'3', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (56, N'4', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (57, N'5', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (58, N'6', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (59, N'7', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (60, N'8', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (61, N'9', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (62, N'12', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (63, N'13', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (64, N'14', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (65, N'15', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (66, N'16', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (67, N'17', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (68, N'18', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (69, N'19', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (70, N'22', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (71, N'23', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (72, N'24', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (73, N'25', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (74, N'26', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (75, N'27', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (76, N'28', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (77, N'29', N'ND01', N'TACN', N'by', N'with', N'to', N'at', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM')
INSERT [dbo].[CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update]) VALUES (78, N'Mạng máy tính là', N'ND01', N'1   ', N'1', N'1', N'1', N'1', N'3', N'22/11/2020', N'20/11/2020')
SET IDENTITY_INSERT [dbo].[CauHoi] OFF
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'1710310044', 9, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'1710310044', 9, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'1710310044', 8, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'1710310044', 8, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'1710310044', 9, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'1710310044', 9, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'1710310044', 9, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'1710310044', 7, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'1710310044', 7, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'1710310044', 7, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'1710310044', 7, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 5, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 5, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 5, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 5, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 5, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 5, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 5, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 5, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 3, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 5, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 5, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 5, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 3, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 2, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 1, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 4, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 9, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 9, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 9, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 9, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 9, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 6.5, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 9, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 6.5, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 6.5, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 6.5, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 6.5, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 6.4, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 6.4, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 6.4, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 6.4, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 6.4, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_KetQua] ([MaThiSinh], [Diem], [MaMon], [NgayThi], [MaCaThi]) VALUES (N'0014      ', 6.4, N'MMT ', N'4/4/2021    ', N'ca1hocki1')
INSERT [dbo].[Table_MonThi] ([MaMon], [TenMon], [SoCauHoi], [ThoiGianLamBai]) VALUES (N'HDH ', N'Hệ Điều Hành', 40, 60)
INSERT [dbo].[Table_MonThi] ([MaMon], [TenMon], [SoCauHoi], [ThoiGianLamBai]) VALUES (N'MMT ', N'Mạng Máy Tính', 40, 60)
INSERT [dbo].[Table_MonThi] ([MaMon], [TenMon], [SoCauHoi], [ThoiGianLamBai]) VALUES (N'TACN', N'Tiếng Anh', 40, 60)
INSERT [dbo].[Table_NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [ChucVu], [MatKhau]) VALUES (N'111 ', N'Huỳnh Lê Bảo                                      ', N'Tp. Hồ Chí Minh                                   ', N'1222000056', N'91/01/12 12:00:00 AM', N'Nhân Viên           ', N'1111')
INSERT [dbo].[Table_NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [ChucVu], [MatKhau]) VALUES (N'123 ', N'Jenny Phạm                                        ', N'30 Lê Đức Thọ Q.Gò Vấp                            ', N'1223456780', N'20/10/1992', N'Nhan Vien           ', N'1111')
INSERT [dbo].[Table_NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [ChucVu], [MatKhau]) VALUES (N'ad01', N'Nguyễn Văn A', N'Hà Nội', N'023323333', N'10/10/1988', N'Quản Lý', N'1111')
INSERT [dbo].[Table_NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [ChucVu], [MatKhau]) VALUES (N'ND01', N'Nguyễn Quang Trung                                ', N'Hà Nội                                            ', N'01212000812         ', N'10/08/1991', N'Giảng Viên          ', N'1111')
INSERT [dbo].[Table_NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [ChucVu], [MatKhau]) VALUES (N'ND02', N'Nguyễn Thị Huế', N'Hà Nội', N'023234032', N'1/1/1992', N'Giảng Viên', N'1111')
INSERT [dbo].[Table_NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [ChucVu], [MatKhau]) VALUES (N'NV01', N'Nguyễn Quang Trung                                ', N'Hà Nội                                            ', N'01212000812         ', N'10/08/1991', N'Giảng Viên          ', N'1111')
INSERT [dbo].[Table_NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [ChucVu], [MatKhau]) VALUES (N'NV03', N'Huỳnh Lê Bảo                                      ', N'Tp. Hồ Chí Minh                                   ', N'01222000056         ', N'01/12/1991', N'Giảng Viên          ', N'1111')
INSERT [dbo].[Table_NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [ChucVu], [MatKhau]) VALUES (N'NV04', N'Đặng Thị Hằng                                     ', N'Hà Nội                                            ', N'012212000332        ', N'21/01/1993', N'Giảng Viên          ', N'1111')
INSERT [dbo].[Table_NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [ChucVu], [MatKhau]) VALUES (N'NV05', N'Lê Thị Hoài                                       ', N'Hải Dương                                         ', N'012212000441        ', N'21/06/1992', N'Giảng Viên          ', N'1111')
INSERT [dbo].[Table_NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [ChucVu], [MatKhau]) VALUES (N'NV08', N'Nguyễn Đỗ Ngọc Hương                              ', N'Đồng Nai                                          ', N'01212000522         ', N'14/10/1993', N'Giảng Viên          ', N'1111')
INSERT [dbo].[Table_NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [ChucVu], [MatKhau]) VALUES (N'NV09', N'Trần Thị Thu Kim                                  ', N'Bà Rịa Vũng Tàu                                   ', N'01212000526         ', N'18/10/1990', N'Giảng Viên          ', N'1111')
INSERT [dbo].[Table_NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [ChucVu], [MatKhau]) VALUES (N'NV10', N'Phạm Thị Thu Hồng                                 ', N'Hà Nội                                            ', N'01212000551         ', N'28/08/1990', N'Giảng Viên          ', N'1111')
INSERT [dbo].[Table_NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [ChucVu], [MatKhau]) VALUES (N'NV11', N'Nguyễn Văn Lượng                                  ', N'Tây Ninh                                          ', N'01212000574         ', N'13/02/1989', N'Giảng Viên          ', N'1111')
INSERT [dbo].[Table_NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [ChucVu], [MatKhau]) VALUES (N'NV12', N'Nguyễn Thị Kim Ánh                                ', N'Quảng Ngãi                                        ', N'01212000706         ', N'10/09/1992', N'Giảng Viên          ', N'1111')
INSERT [dbo].[Table_NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [ChucVu], [MatKhau]) VALUES (N'NV14', N'Phan Thị Phương                                   ', N'Bình Định                                         ', N'01212000716         ', N'10/04/1992', N'Giảng Viên          ', N'1111')
INSERT [dbo].[Table_NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [ChucVu], [MatKhau]) VALUES (N'NV15', N'Lê Vũ Hoàng                                       ', N'Tp. Hồ Chí Minh                                   ', N'01212000723         ', N'26/11/1992', N'Giảng Viên          ', N'1111')
INSERT [dbo].[Table_NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [ChucVu], [MatKhau]) VALUES (N'NV16', N'Hoàng Thị Bình                                    ', N'Hà Nội                                            ', N'01212000740         ', N'14/01/1990', N'Giảng Viên          ', N'1111')
INSERT [dbo].[Table_NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [ChucVu], [MatKhau]) VALUES (N'NV17', N'Nguyễn Thị Ánh Tuyết                              ', N'Thanh Hóa                                         ', N'01212000795         ', N'11/12/1987', N'Giảng Viên          ', N'1111')
INSERT [dbo].[Table_NhanVien] ([MaNhanVien], [HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [ChucVu], [MatKhau]) VALUES (N'NV18', N'Nguyễn Quang Trung                                ', N'Hà Nội                                            ', N'01212000812         ', N'10/08/1991', N'Giảng Viên          ', N'1111')
INSERT [dbo].[Table_ThiSinh] ([MaThiSinh], [HoTen], [DiaChi], [NgaySinh], [TenDangNhap], [MatKhau], [Truong], [Lop]) VALUES (N'0002      ', N'Phạm Thành Tiến', N'Nam Định', N'10/10/1999          ', N'11113333            ', N'4321      ', N'Uneti', N'Tin11a4')
INSERT [dbo].[Table_ThiSinh] ([MaThiSinh], [HoTen], [DiaChi], [NgaySinh], [TenDangNhap], [MatKhau], [Truong], [Lop]) VALUES (N'0003      ', N'Huỳnh Văn Bánh', N'Hà Nội', N'16/09/1992          ', N'44889911            ', N'thiladau  ', N'Uneti', N'Tin11a3')
INSERT [dbo].[Table_ThiSinh] ([MaThiSinh], [HoTen], [DiaChi], [NgaySinh], [TenDangNhap], [MatKhau], [Truong], [Lop]) VALUES (N'0004      ', N'Trần Tấn Hoàng', N'Bắc Ninh', N'25/07/1984          ', N'11557654            ', N'thilarot  ', N'Uneti', N'Tin11a2')
INSERT [dbo].[Table_ThiSinh] ([MaThiSinh], [HoTen], [DiaChi], [NgaySinh], [TenDangNhap], [MatKhau], [Truong], [Lop]) VALUES (N'0005      ', N'Phan Văn Len', N'Hải Dương', N'16/09/1992          ', N'12345543            ', N'chuachac  ', N'Uneti', N'Tin11a1')
INSERT [dbo].[Table_ThiSinh] ([MaThiSinh], [HoTen], [DiaChi], [NgaySinh], [TenDangNhap], [MatKhau], [Truong], [Lop]) VALUES (N'0006      ', N'Phạm Thành Ti', N'Nam Định', N'10/10/1999          ', N'Phạm Thành Ti       ', N'1111      ', N'Uneti', N'Tin11a4')
INSERT [dbo].[Table_ThiSinh] ([MaThiSinh], [HoTen], [DiaChi], [NgaySinh], [TenDangNhap], [MatKhau], [Truong], [Lop]) VALUES (N'0007      ', N'Phan Văn A', N'Hải Dương', N'16/09/1993          ', N'Phan Văn A          ', N'1111      ', N'Uneti', N'Tin11a1')
INSERT [dbo].[Table_ThiSinh] ([MaThiSinh], [HoTen], [DiaChi], [NgaySinh], [TenDangNhap], [MatKhau], [Truong], [Lop]) VALUES (N'0008      ', N'Phạm Thành Tiến', N'Nam Định', N'10/10/1999          ', N'Phạm Thành Tiến     ', N'1111      ', N'Uneti', N'Tin11a4')
INSERT [dbo].[Table_ThiSinh] ([MaThiSinh], [HoTen], [DiaChi], [NgaySinh], [TenDangNhap], [MatKhau], [Truong], [Lop]) VALUES (N'0009      ', N'Phạm Thành Ti', N'Nam Định', N'10/10/1999          ', N'Phạm Thành Ti       ', N'1111      ', N'Uneti', N'Tin11a4')
INSERT [dbo].[Table_ThiSinh] ([MaThiSinh], [HoTen], [DiaChi], [NgaySinh], [TenDangNhap], [MatKhau], [Truong], [Lop]) VALUES (N'0011      ', N'Phạm Thành DA', N'Nam Định', N'10/10/1999          ', N'Phạm Thành DA       ', N'1111      ', N'Uneti', N'Tin11a4')
INSERT [dbo].[Table_ThiSinh] ([MaThiSinh], [HoTen], [DiaChi], [NgaySinh], [TenDangNhap], [MatKhau], [Truong], [Lop]) VALUES (N'0012      ', N'Phạm Thành DAD', N'Nam Định', N'10/10/1999          ', N'Phạm Thành DAD      ', N'1111      ', N'Uneti', N'Tin11a4')
INSERT [dbo].[Table_ThiSinh] ([MaThiSinh], [HoTen], [DiaChi], [NgaySinh], [TenDangNhap], [MatKhau], [Truong], [Lop]) VALUES (N'0013      ', N'Phạm Thành Đạt', N'Nam Định', N'10/10/1999          ', N'Phạm Thành Đạt      ', N'1111      ', N'Uneti', N'Tin11a4')
INSERT [dbo].[Table_ThiSinh] ([MaThiSinh], [HoTen], [DiaChi], [NgaySinh], [TenDangNhap], [MatKhau], [Truong], [Lop]) VALUES (N'0014      ', N'Phạm Long', N'Nam Định', N'10/10/1999          ', N'Phạm Long           ', N'1111      ', N'Uneti', N'Tin11a4')
INSERT [dbo].[Table_ThiSinh] ([MaThiSinh], [HoTen], [DiaChi], [NgaySinh], [TenDangNhap], [MatKhau], [Truong], [Lop]) VALUES (N'0015      ', N'Phạm Long Khá', N'Nam Định', N'10/10/1999          ', N'Phạm Long Khá       ', N'1111      ', N'Uneti', N'Tin11a4')
INSERT [dbo].[Table_ThiSinh] ([MaThiSinh], [HoTen], [DiaChi], [NgaySinh], [TenDangNhap], [MatKhau], [Truong], [Lop]) VALUES (N'0016      ', N'Phạm Long Bảnh', N'Nam Định', N'10/10/1999          ', N'Phạm Long Bảnh      ', N'1111      ', N'Uneti', N'Tin11a4')
INSERT [dbo].[Table_ThiSinh] ([MaThiSinh], [HoTen], [DiaChi], [NgaySinh], [TenDangNhap], [MatKhau], [Truong], [Lop]) VALUES (N'0701      ', N'Hứa Mạnh Tuấn', N'Kim Thành - Hải Dương', N'07/01/1997          ', N'Hứa Mạnh Tuấn       ', N'1111      ', N'UNETI', N'TIN 11A5')
INSERT [dbo].[Table_ThiSinh] ([MaThiSinh], [HoTen], [DiaChi], [NgaySinh], [TenDangNhap], [MatKhau], [Truong], [Lop]) VALUES (N'11113     ', N'Huỳnh Văn Bánh', N'Hà Nội', N'16/09/1992          ', N'                    ', N'1111      ', N'Uneti', N'Tin11a3')
INSERT [dbo].[Table_ThiSinh] ([MaThiSinh], [HoTen], [DiaChi], [NgaySinh], [TenDangNhap], [MatKhau], [Truong], [Lop]) VALUES (N'11114     ', N'Trần Tấn Hoàng', N'Bắc Ninh', N'25/07/1984          ', N'                    ', N'1111      ', N'Uneti', N'Tin11a2')
INSERT [dbo].[Table_ThiSinh] ([MaThiSinh], [HoTen], [DiaChi], [NgaySinh], [TenDangNhap], [MatKhau], [Truong], [Lop]) VALUES (N'1710310044', N'Lê Thị Thu', N'Bắc Ninh', N'24/06/1999          ', N'ltt                 ', N'1111      ', N'Uneti', N'TIn11A5')
INSERT [dbo].[Table_ThiSinh] ([MaThiSinh], [HoTen], [DiaChi], [NgaySinh], [TenDangNhap], [MatKhau], [Truong], [Lop]) VALUES (N'1710310046', N'Hứa Mạnh Tuấn', N'Hà Nội', N'10/10/1999          ', N'11009922            ', N'1111      ', N'Uneti', N'Tin11a5')
SET IDENTITY_INSERT [dbo].[tbl_CauHoi] ON 

INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (1, N'Mạng máy tính là:', N'ND01', N'HDH ', N'Các máy tính kết nối với nhau qua hệ thống cáp để trao đổi thông tin', N'Các máy tính trao đổi thông tin với nhau theo tập giao thức mạng', N'Các máy tính kết nối qua môi trường truyền tin và trao đổi thông tin theo một kiến trúc mạng xác định', N'Các máy tính kết nối với nhau chia sẻ nguồn thông tin chung', N'3', N'20/11/22 12:19:21 AM', N'21/04/09 1:15:05 AM', 1, N'Dễ')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (2, N'Cấu hình mạng (Topology) được hiểu là', N'ND01', N'MMT ', N'Các qui ước truyền thông trên mạng', N'Sơ đồ kết nối vật lý các máy tính trong mạng', N'Cách kết nối các thiết bị vật lý trong mạng', N'Các phần mềm điều khiển mạng', N'2', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 1, N'Dễ')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (3, N'DTE là khái niệm chỉ', N'ND01', N'MMT ', N'Các thiết bị đầu cuối dữ liệu', N'Modem, Multiplexer', N'Terminal, Transducer', N'Các thiết bị cuối kênh dữ liệu', N'1', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 1, N'Dễ')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (7, N'DCE là khái niệm chỉ', N'ND01', N'MMT ', N'Máy tính Main Frame, Máy in', N'Modem, máy tính', N' Multiplexer, Transducer', N'Repeater, Terminal', N'3', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 1, N'Dễ')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (8, N'	
Chuẩn RS-232-C định nghĩa giao diện tầng vật lý giữa', N'ND02', N'HDH ', N'Máy tính và Modem', N'Modem và Repeater', N'Máy tính và DTE', N'DCE và DCE', N'1', N'20/11/22 12:19:21 AM', N'20/12/18 7:29:09 PM', 1, N'Dễ')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (9, N'	
Chuẩn RS-449, RS-422-A, RS-423-A định nghĩa giao diện tầng vật lý giữa', N'ND01', N'MMT ', N'Máy tính và DTE', N'Modem và DCE', N'Máy tính và DCE', N'DTE và DTE', N'3', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 1, N'Dễ')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (10, N'Chọn phát biểu sai về mạng cục bộ', N'ND01', N'MMT ', N'Quản lý khai thác mạng hòan tòan tập trung, thống nhất', N'Hiện nay, mạng cục bộ chỉ dùng cấu hình sao', N'Mạng cục bộ có tốc độ cao và ít lỗi', N'Không cần dùng các thiết bị dẫn đường với các mối liên hệ phức tạp', N'2', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 1, N'Dễ')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (11, N'Câu nào sau đây không phải là ưu điểm của mạng hình sao', N'ND01', N'MMT ', N'Các thiết bị hub, repeater,… được chế tạo bằng công nghệ tân tiến hơn, thường xuyên ra đời những thế hệ sản phẩm mới', N'Việc lắp đặt, bảo trì, mở rộng rất dễ dàng, mạng khộng bị gián đoạn', N'Sự cố xảy ra trên đoạn cáp của máy nào thì chỉ có riêng máy đó bị cô lập khỏi mạng, mạng vẫn hoạt động bình thường', N'Chi phí thấp hơn các kiểu khác do giá thành các thiết bị ngày càng hạ', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 1, N'Dễ')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (15, N'Mạng máy tính là', N'ND01', N'MMT ', N'Các máy tính kết nối với nhau qua hệ thống cáp để trao đổi thông tin', N'Các máy tính trao đổi thông tin với nhau theo tập giao thức mạng', N'Các máy tính kết nối qua môi trường truyền tin và trao đổi thông tin theo một kiến trúc mạng xác định', N'Các máy tính kết nối với nhau chia sẻ nguồn thông tin chung', N'3', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 1, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (16, N'Cấu hình mạng (Topology) được hiểu là', N'ND01', N'MMT ', N'Các qui ước truyền thông trên mạng', N'Sơ đồ kết nối vật lý các máy tính trong mạng', N'Cách kết nối các thiết bị vật lý trong mạng', N'Các phần mềm điều khiển mạng', N'2', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 1, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (17, N'DTE là khái niệm chỉ', N'ND01', N'MMT ', N'Các thiết bị đầu cuối dữ liệu', N'Modem, Multiplexer', N'Terminal, Transducer', N'Các thiết bị cuối kênh dữ liệu', N'1', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 2, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (18, N'DCE là khái niệm chỉ', N'ND01', N'MMT ', N'Máy tính Main Frame, Máy in', N'Modem, máy tính', N' Multiplexer, Transducer', N'Repeater, Terminal', N'3', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 2, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (23, N'Chọn phát biểu sai về mạng cục bộ', N'ND01', N'MMT ', N'Quản lý khai thác mạng hòan tòan tập trung, thống nhất', N'Hiện nay, mạng cục bộ chỉ dùng cấu hình sao', N'Mạng cục bộ có tốc độ cao và ít lỗi', N'Không cần dùng các thiết bị dẫn đường với các mối liên hệ phức tạp', N'2', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 2, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (24, N'Câu nào sau đây không phải là ưu điểm của mạng hình sao', N'ND01', N'MMT ', N'Các thiết bị hub, repeater,… được chế tạo bằng công nghệ tân tiến hơn, thường xuyên ra đời những thế hệ sản phẩm mới', N'Việc lắp đặt, bảo trì, mở rộng rất dễ dàng, mạng khộng bị gián đoạn', N'Sự cố xảy ra trên đoạn cáp của máy nào thì chỉ có riêng máy đó bị cô lập khỏi mạng, mạng vẫn hoạt động bình thường', N'Chi phí thấp hơn các kiểu khác do giá thành các thiết bị ngày càng hạ', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 2, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (25, N'Mạng máy tính là', N'ND01', N'MMT ', N'Các máy tính kết nối với nhau qua hệ thống cáp để trao đổi thông tin', N'Các máy tính trao đổi thông tin với nhau theo tập giao thức mạng', N'Các máy tính kết nối qua môi trường truyền tin và trao đổi thông tin theo một kiến trúc mạng xác định', N'Các máy tính kết nối với nhau chia sẻ nguồn thông tin chung', N'3', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 2, N'Dễ')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (26, N'Cấu hình mạng (Topology) được hiểu là', N'ND01', N'MMT ', N'Các qui ước truyền thông trên mạng', N'Sơ đồ kết nối vật lý các máy tính trong mạng', N'Cách kết nối các thiết bị vật lý trong mạng', N'Các phần mềm điều khiển mạng', N'2', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 2, N'Dễ')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (27, N'DTE là khái niệm chỉ', N'ND01', N'MMT ', N'Các thiết bị đầu cuối dữ liệu', N'Modem, Multiplexer', N'Terminal, Transducer', N'Các thiết bị cuối kênh dữ liệu', N'1', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 2, N'Dễ')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (28, N'DCE là khái niệm chỉ', N'ND01', N'MMT ', N'Máy tính Main Frame, Máy in', N'Modem, máy tính', N' Multiplexer, Transducer', N'Repeater, Terminal', N'3', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 2, N'Dễ')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (33, N'Chọn phát biểu sai về mạng cục bộ', N'ND01', N'MMT ', N'Quản lý khai thác mạng hòan tòan tập trung, thống nhất', N'Hiện nay, mạng cục bộ chỉ dùng cấu hình sao', N'Mạng cục bộ có tốc độ cao và ít lỗi', N'Không cần dùng các thiết bị dẫn đường với các mối liên hệ phức tạp', N'2', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 2, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (34, N'Câu nào sau đây không phải là ưu điểm của mạng hình sao', N'ND01', N'MMT ', N'Các thiết bị hub, repeater,… được chế tạo bằng công nghệ tân tiến hơn, thường xuyên ra đời những thế hệ sản phẩm mới', N'Việc lắp đặt, bảo trì, mở rộng rất dễ dàng, mạng khộng bị gián đoạn', N'Sự cố xảy ra trên đoạn cáp của máy nào thì chỉ có riêng máy đó bị cô lập khỏi mạng, mạng vẫn hoạt động bình thường', N'Chi phí thấp hơn các kiểu khác do giá thành các thiết bị ngày càng hạ', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 2, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (35, N'Mạng máy tính là', N'ND01', N'MMT ', N'Các máy tính kết nối với nhau qua hệ thống cáp để trao đổi thông tin', N'Các máy tính trao đổi thông tin với nhau theo tập giao thức mạng', N'Các máy tính kết nối qua môi trường truyền tin và trao đổi thông tin theo một kiến trúc mạng xác định', N'Các máy tính kết nối với nhau chia sẻ nguồn thông tin chung', N'3', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 3, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (36, N'Cấu hình mạng (Topology) được hiểu là', N'ND01', N'MMT ', N'Các qui ước truyền thông trên mạng', N'Sơ đồ kết nối vật lý các máy tính trong mạng', N'Cách kết nối các thiết bị vật lý trong mạng', N'Các phần mềm điều khiển mạng', N'2', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 3, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (37, N'DTE là khái niệm chỉ', N'ND01', N'MMT ', N'Các thiết bị đầu cuối dữ liệu', N'Modem, Multiplexer', N'Terminal, Transducer', N'Các thiết bị cuối kênh dữ liệu', N'1', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 3, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (38, N'DCE là khái niệm chỉ', N'ND01', N'MMT ', N'Máy tính Main Frame, Máy in', N'Modem, máy tính', N' Multiplexer, Transducer', N'Repeater, Terminal', N'3', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 3, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (39, N'Chọn phát biểu sai về mạng cục bộ', N'ND01', N'MMT ', N'Quản lý khai thác mạng hòan tòan tập trung, thống nhất', N'Hiện nay, mạng cục bộ chỉ dùng cấu hình sao', N'Mạng cục bộ có tốc độ cao và ít lỗi', N'Không cần dùng các thiết bị dẫn đường với các mối liên hệ phức tạp', N'2', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 3, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (40, N'Câu nào sau đây không phải là ưu điểm của mạng hình sao', N'ND01', N'MMT ', N'Các thiết bị hub, repeater,… được chế tạo bằng công nghệ tân tiến hơn, thường xuyên ra đời những thế hệ sản phẩm mới', N'Việc lắp đặt, bảo trì, mở rộng rất dễ dàng, mạng khộng bị gián đoạn', N'Sự cố xảy ra trên đoạn cáp của máy nào thì chỉ có riêng máy đó bị cô lập khỏi mạng, mạng vẫn hoạt động bình thường', N'Chi phí thấp hơn các kiểu khác do giá thành các thiết bị ngày càng hạ', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 3, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (43, N'Chọn phát biểu sai về mạng cục bộ', N'ND01', N'MMT ', N'Quản lý khai thác mạng hòan tòan tập trung, thống nhất', N'Hiện nay, mạng cục bộ chỉ dùng cấu hình sao', N'Mạng cục bộ có tốc độ cao và ít lỗi', N'Không cần dùng các thiết bị dẫn đường với các mối liên hệ phức tạp', N'2', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 3, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (44, N'Câu nào sau đây không phải là ưu điểm của mạng hình sao', N'ND01', N'MMT ', N'Các thiết bị hub, repeater,… được chế tạo bằng công nghệ tân tiến hơn, thường xuyên ra đời những thế hệ sản phẩm mới', N'Việc lắp đặt, bảo trì, mở rộng rất dễ dàng, mạng khộng bị gián đoạn', N'Sự cố xảy ra trên đoạn cáp của máy nào thì chỉ có riêng máy đó bị cô lập khỏi mạng, mạng vẫn hoạt động bình thường', N'Chi phí thấp hơn các kiểu khác do giá thành các thiết bị ngày càng hạ', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 3, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (45, N'Mạng máy tính là', N'ND01', N'MMT ', N'Các máy tính kết nối với nhau qua hệ thống cáp để trao đổi thông tin', N'Các máy tính trao đổi thông tin với nhau theo tập giao thức mạng', N'Các máy tính kết nối qua môi trường truyền tin và trao đổi thông tin theo một kiến trúc mạng xác định', N'Các máy tính kết nối với nhau chia sẻ nguồn thông tin chung', N'3', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 3, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (46, N'Cấu hình mạng (Topology) được hiểu là', N'ND01', N'MMT ', N'Các qui ước truyền thông trên mạng', N'Sơ đồ kết nối vật lý các máy tính trong mạng', N'Cách kết nối các thiết bị vật lý trong mạng', N'Các phần mềm điều khiển mạng', N'2', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 3, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (47, N'DTE là khái niệm chỉ', N'ND01', N'MMT ', N'Các thiết bị đầu cuối dữ liệu', N'Modem, Multiplexer', N'Terminal, Transducer', N'Các thiết bị cuối kênh dữ liệu', N'1', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 4, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (48, N'DCE là khái niệm chỉ', N'ND01', N'MMT ', N'Máy tính Main Frame, Máy in', N'Modem, máy tính', N' Multiplexer, Transducer', N'Repeater, Terminal', N'3', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 4, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (49, N'Câu nào sau đây không phải là ưu điểm của mạng hình sao', N'ND01', N'MMT ', N'Các thiết bị hub, repeater,… được chế tạo bằng công nghệ tân tiến hơn, thường xuyên ra đời những thế hệ sản phẩm mới', N'Việc lắp đặt, bảo trì, mở rộng rất dễ dàng, mạng khộng bị gián đoạn', N'Sự cố xảy ra trên đoạn cáp của máy nào thì chỉ có riêng máy đó bị cô lập khỏi mạng, mạng vẫn hoạt động bình thường', N'Chi phí thấp hơn các kiểu khác do giá thành các thiết bị ngày càng hạ', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 4, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (50, N'Mạng máy tính là', N'ND01', N'MMT ', N'Các máy tính kết nối với nhau qua hệ thống cáp để trao đổi thông tin', N'Các máy tính trao đổi thông tin với nhau theo tập giao thức mạng', N'Các máy tính kết nối qua môi trường truyền tin và trao đổi thông tin theo một kiến trúc mạng xác định', N'Các máy tính kết nối với nhau chia sẻ nguồn thông tin chung', N'3', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 4, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (51, N'Cấu hình mạng (Topology) được hiểu là', N'ND01', N'MMT ', N'Các qui ước truyền thông trên mạng', N'Sơ đồ kết nối vật lý các máy tính trong mạng', N'Cách kết nối các thiết bị vật lý trong mạng', N'Các phần mềm điều khiển mạng', N'2', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 4, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (52, N'DTE là khái niệm chỉ', N'ND01', N'MMT ', N'Các thiết bị đầu cuối dữ liệu', N'Modem, Multiplexer', N'Terminal, Transducer', N'Các thiết bị cuối kênh dữ liệu', N'1', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 4, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (53, N'DCE là khái niệm chỉ', N'ND01', N'MMT ', N'Máy tính Main Frame, Máy in', N'Modem, máy tính', N' Multiplexer, Transducer', N'Repeater, Terminal', N'3', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 4, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (54, N'Chọn phát biểu sai về mạng cục bộ', N'ND01', N'MMT ', N'Quản lý khai thác mạng hòan tòan tập trung, thống nhất', N'Hiện nay, mạng cục bộ chỉ dùng cấu hình sao', N'Mạng cục bộ có tốc độ cao và ít lỗi', N'Không cần dùng các thiết bị dẫn đường với các mối liên hệ phức tạp', N'2', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 4, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (55, N'Câu nào sau đây không phải là ưu điểm của mạng hình sao', N'ND01', N'MMT ', N'Các thiết bị hub, repeater,… được chế tạo bằng công nghệ tân tiến hơn, thường xuyên ra đời những thế hệ sản phẩm mới', N'Việc lắp đặt, bảo trì, mở rộng rất dễ dàng, mạng khộng bị gián đoạn', N'Sự cố xảy ra trên đoạn cáp của máy nào thì chỉ có riêng máy đó bị cô lập khỏi mạng, mạng vẫn hoạt động bình thường', N'Chi phí thấp hơn các kiểu khác do giá thành các thiết bị ngày càng hạ', N'4', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 4, N'Dễ')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (56, N'Mạng máy tính là', N'ND01', N'MMT ', N'Các máy tính kết nối với nhau qua hệ thống cáp để trao đổi thông tin', N'Các máy tính trao đổi thông tin với nhau theo tập giao thức mạng', N'Các máy tính kết nối qua môi trường truyền tin và trao đổi thông tin theo một kiến trúc mạng xác định', N'Các máy tính kết nối với nhau chia sẻ nguồn thông tin chung', N'3', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 4, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (57, N'Cấu hình mạng (Topology) được hiểu là', N'ND01', N'MMT ', N'Các qui ước truyền thông trên mạng', N'Sơ đồ kết nối vật lý các máy tính trong mạng', N'Cách kết nối các thiết bị vật lý trong mạng', N'Các phần mềm điều khiển mạng', N'2', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 4, N'Dễ')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (58, N'DTE là khái niệm chỉ', N'ND01', N'MMT ', N'Các thiết bị đầu cuối dữ liệu', N'Modem, Multiplexer', N'Terminal, Transducer', N'Các thiết bị cuối kênh dữ liệu', N'1', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 4, N'Dễ')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (59, N'DCE là khái niệm chỉ', N'ND01', N'MMT ', N'Máy tính Main Frame, Máy in', N'Modem, máy tính', N' Multiplexer, Transducer', N'Repeater, Terminal', N'3', N'20/11/22 12:19:21 AM', N'20/11/22 12:19:21 AM', 4, N'Dễ')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (62, N'Mạng máy tính là:', N'ND02', N'HDH ', N'Các máy tính kết nối với nhau qua hệ thống cáp để trao đổi thông tin', N'Các máy tính trao đổi thông tin với nhau theo tập giao thức mạng', N'Các máy tính kết nối qua môi trường truyền tin và trao đổi thông tin theo một kiến trúc mạng xác định', N'Các máy tính kết nối với nhau chia sẻ nguồn thông tin chung', N'1', N'20/12/08 12:39:16 AM', N'20/12/08 12:40:17 AM', 4, N'Dễ')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (64, N'Cấu hình mạng (Topology) được hiểu là', N'ND02', N'HDH ', N'Các qui ước truyền thông trên mạng', N'Sơ đồ kết nối vật lý các máy tính trong mạng', N'Cách kết nối các thiết bị vật lý trong mạng', N'Các phần mềm điều khiển mạng', N'2', N'20/12/18 5:47:09 PM', N'20/12/18 5:47:09 PM', 2, N'Dễ')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (68, N'Mạng máy tính là:', N'ND01', N'MMT ', N'Các máy tính kết nối với nhau qua hệ thống cáp để trao đổi thông tin', N'Các máy tính trao đổi thông tin với nhau theo tập giao thức mạng', N'Các máy tính kết nối qua môi trường truyền tin và trao đổi thông tin theo một kiến trúc mạng xác định', N'Các máy tính kết nối với nhau chia sẻ nguồn thông tin chung', N'', N'21/04/03 11:47:54 PM', N'21/04/03 11:47:54 PM', 2, N'Dễ')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (69, N'Cấu hình mạng (Topology) được hiểu là', N'ND01', N'MMT ', N'Các qui ước truyền thông trên mạng', N'Sơ đồ kết nối vật lý các máy tính trong mạng', N'Cách kết nối các thiết bị vật lý trong mạng', N'Các phần mềm điều khiển mạng', N'2', N'21/04/03 11:47:57 PM', N'21/04/03 11:47:57 PM', 2, N'Dễ')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (70, N'DTE là khái niệm chỉ', N'ND01', N'MMT ', N'Các thiết bị đầu cuối dữ liệu', N'Modem, Multiplexer', N'Terminal, Transducer', N'Các thiết bị cuối kênh dữ liệu', N'1', N'21/04/03 11:47:59 PM', N'21/04/03 11:47:59 PM', 2, N'Dễ')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (71, N'DCE là khái niệm chỉ', N'ND01', N'MMT ', N'Máy tính Main Frame, Máy in', N'Modem, máy tính', N' Multiplexer, Transducer', N'Repeater, Terminal', N'3', N'21/04/03 11:48:01 PM', N'21/04/03 11:48:01 PM', 2, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (1065, N'Cấu hình mạng (Topology) được hiểu là', N'ND02', N'HDH ', N'Các qui ước truyền thông trên mạng', N'Sơ đồ kết nối vật lý các máy tính trong mạng', N'Cách kết nối các thiết bị vật lý trong mạng', N'Các phần mềm điều khiển mạng', N'2', N'21/04/08 11:36:57 PM', N'21/04/08 11:36:57 PM', 2, N'Trung Bình')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (1072, N'DCE là khái niệm chỉ', N'ND01', N'MMT ', N'Máy tính Main Frame, Máy in', N'Modem, máy tính', N' Multiplexer, Transducer', N'Repeater, Terminal', N'3', N'21/04/09 1:32:26 AM', N'21/04/09 1:32:26 AM', 2, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (1073, N'DCE là khái niệm chỉ', N'ND01', N'MMT ', N'Máy tính Main Frame, Máy in', N'Modem, máy tính', N' Multiplexer, Transducer', N'Repeater, Terminal', N'3', N'21/04/09 1:38:16 AM', N'21/04/09 1:38:16 AM', 2, N'Khó')
INSERT [dbo].[tbl_CauHoi] ([id], [NoiDungCauHoi], [MaNguoiDung], [MaMon], [DapAn1], [DapAn2], [DapAn3], [DapAn4], [DapAnDung], [created_time], [lastest_update], [Chuong], [CapDo]) VALUES (1074, N'Cấu hình mạng (Topology) được hiểu là', N'ND02', N'HDH ', N'Các qui ước truyền thông trên mạng', N'Sơ đồ kết nối vật lý các máy tính trong mạng', N'Cách kết nối các thiết bị vật lý trong mạng', N'Các phần mềm điều khiển mạng', N'2', N'21/04/09 1:38:16 AM', N'21/04/09 1:38:16 AM', 2, N'Trung Bình')
SET IDENTITY_INSERT [dbo].[tbl_CauHoi] OFF
SET IDENTITY_INSERT [dbo].[tbl_DapAn] ON 

INSERT [dbo].[tbl_DapAn] ([id], [dapan1], [dapan2], [dapan3], [dapan4], [dapandung], [MaCauHoi]) VALUES (1, N'by', N'for', N'at', N'with', N'at', N'0002')
INSERT [dbo].[tbl_DapAn] ([id], [dapan1], [dapan2], [dapan3], [dapan4], [dapandung], [MaCauHoi]) VALUES (2, N'stunning', N'staggering', N'amazing', N'shattering', N'shattering', N'0003')
SET IDENTITY_INSERT [dbo].[tbl_DapAn] OFF
ALTER TABLE [dbo].[Table_KetQua]  WITH CHECK ADD  CONSTRAINT [FK_Table_KetQua_Table_MonThi] FOREIGN KEY([MaMon])
REFERENCES [dbo].[Table_MonThi] ([MaMon])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Table_KetQua] CHECK CONSTRAINT [FK_Table_KetQua_Table_MonThi]
GO
ALTER TABLE [dbo].[Table_KetQua]  WITH CHECK ADD  CONSTRAINT [FK_Table_KetQua_Table_ThiSinh] FOREIGN KEY([MaThiSinh])
REFERENCES [dbo].[Table_ThiSinh] ([MaThiSinh])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Table_KetQua] CHECK CONSTRAINT [FK_Table_KetQua_Table_ThiSinh]
GO
ALTER TABLE [dbo].[Table_NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_Table_NguoiDung_Table_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[Table_NhanVien] ([MaNhanVien])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Table_NguoiDung] CHECK CONSTRAINT [FK_Table_NguoiDung_Table_NhanVien]
GO
