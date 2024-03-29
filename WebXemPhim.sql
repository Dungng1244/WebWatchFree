USE [master]
GO
/****** Object:  Database [WebsitePhim]    Script Date: 4/4/2023 8:56:12 PM ******/
CREATE DATABASE [WebsitePhim]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebsitePhim', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\WebsitePhim.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebsitePhim_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\WebsitePhim_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [WebsitePhim] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebsitePhim].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebsitePhim] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebsitePhim] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebsitePhim] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebsitePhim] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebsitePhim] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebsitePhim] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebsitePhim] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebsitePhim] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebsitePhim] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebsitePhim] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebsitePhim] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebsitePhim] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebsitePhim] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebsitePhim] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebsitePhim] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebsitePhim] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebsitePhim] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebsitePhim] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebsitePhim] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebsitePhim] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebsitePhim] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebsitePhim] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebsitePhim] SET RECOVERY FULL 
GO
ALTER DATABASE [WebsitePhim] SET  MULTI_USER 
GO
ALTER DATABASE [WebsitePhim] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebsitePhim] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebsitePhim] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebsitePhim] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebsitePhim] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebsitePhim] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'WebsitePhim', N'ON'
GO
ALTER DATABASE [WebsitePhim] SET QUERY_STORE = ON
GO
ALTER DATABASE [WebsitePhim] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [WebsitePhim]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 4/4/2023 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[MaAdmin] [int] NOT NULL,
	[MaTKadmin] [int] NOT NULL,
	[Ten] [nvarchar](30) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[SDT] [varchar](10) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Quản trị viên] PRIMARY KEY CLUSTERED 
(
	[MaAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaoCao]    Script Date: 4/4/2023 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCao](
	[MaBC] [int] NOT NULL,
	[MaKhach] [int] NOT NULL,
	[NoiDung] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Báo cáo] PRIMARY KEY CLUSTERED 
(
	[MaBC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 4/4/2023 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBL] [int] NOT NULL,
	[MaPhim] [int] NOT NULL,
	[MaKhach] [int] NOT NULL,
	[NoiDung] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Bình luận] PRIMARY KEY CLUSTERED 
(
	[MaBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTPhim]    Script Date: 4/4/2023 8:56:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPhim](
	[MaPhim] [int] NOT NULL,
	[MaDV] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DienVien]    Script Date: 4/4/2023 8:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DienVien](
	[MaDV] [int] NOT NULL,
	[TenDV] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Diễn viên] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoYeuThich]    Script Date: 4/4/2023 8:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoYeuThich](
	[MaPhimYT] [int] NOT NULL,
	[MaPhim] [int] NOT NULL,
	[MaTK] [int] NOT NULL,
 CONSTRAINT [PK_KhoYeuThich] PRIMARY KEY CLUSTERED 
(
	[MaPhimYT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KieuPhim]    Script Date: 4/4/2023 8:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KieuPhim](
	[MaKieu] [int] NOT NULL,
	[TenKieu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KieuPhim] PRIMARY KEY CLUSTERED 
(
	[MaKieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LienHe]    Script Date: 4/4/2023 8:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienHe](
	[MaLH] [int] NOT NULL,
	[TenLH] [nvarchar](30) NOT NULL,
	[Email] [nvarchar](30) NOT NULL,
	[SDT] [int] NOT NULL,
 CONSTRAINT [PK_Liên hệ] PRIMARY KEY CLUSTERED 
(
	[MaLH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 4/4/2023 8:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaKhach] [int] NOT NULL,
	[MaTK] [int] NOT NULL,
	[TenKhach] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[SDT] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Người dùng] PRIMARY KEY CLUSTERED 
(
	[MaKhach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 4/4/2023 8:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] NOT NULL,
	[TenNSX] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Nhà sản xuất] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 4/4/2023 8:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[Maphim] [int] NOT NULL,
	[MaQG] [int] NOT NULL,
	[MaKieu] [int] NOT NULL,
	[MaNSX] [int] NOT NULL,
	[MaTL] [int] NOT NULL,
	[TenPhim] [nvarchar](50) NOT NULL,
	[NamSX] [int] NOT NULL,
	[SoTap] [int] NOT NULL,
	[Ngaycapnhat] [date] NOT NULL,
	[Anhbia] [varchar](50) NOT NULL,
	[Mota] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Phim] PRIMARY KEY CLUSTERED 
(
	[Maphim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuangCao]    Script Date: 4/4/2023 8:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuangCao](
	[MaQC] [int] NOT NULL,
	[TenQC] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Quảng cáo] PRIMARY KEY CLUSTERED 
(
	[MaQC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuocGia]    Script Date: 4/4/2023 8:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuocGia](
	[MaQG] [int] NOT NULL,
	[TenQG] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Quốc gia] PRIMARY KEY CLUSTERED 
(
	[MaQG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 4/4/2023 8:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTL] [int] NOT NULL,
	[TenTL] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TKAdmin]    Script Date: 4/4/2023 8:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TKAdmin](
	[MaTKadmin] [int] NOT NULL,
	[TenTK] [nvarchar](20) NOT NULL,
	[MatKhauTK] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_TaiKhoanAdmin] PRIMARY KEY CLUSTERED 
(
	[MaTKadmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TKNguoiDung]    Script Date: 4/4/2023 8:56:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TKNguoiDung](
	[MaTK] [int] NOT NULL,
	[TenDN] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TKNguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DienVien] ([MaDV], [TenDV]) VALUES (123, N'abc')
INSERT [dbo].[DienVien] ([MaDV], [TenDV]) VALUES (124, N'def')
INSERT [dbo].[DienVien] ([MaDV], [TenDV]) VALUES (125, N'ghi')
INSERT [dbo].[DienVien] ([MaDV], [TenDV]) VALUES (126, N'klm')
INSERT [dbo].[DienVien] ([MaDV], [TenDV]) VALUES (127, N'qwe')
INSERT [dbo].[DienVien] ([MaDV], [TenDV]) VALUES (128, N'ytu')
INSERT [dbo].[DienVien] ([MaDV], [TenDV]) VALUES (129, N'ops')
INSERT [dbo].[DienVien] ([MaDV], [TenDV]) VALUES (130, N'asd')
GO
INSERT [dbo].[KieuPhim] ([MaKieu], [TenKieu]) VALUES (1, N'Series movie')
INSERT [dbo].[KieuPhim] ([MaKieu], [TenKieu]) VALUES (2, N'Short movie')
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (123, N'Marvel Studios')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (124, N'Warner Bros')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (125, N'Universal Pictures')
GO
INSERT [dbo].[Phim] ([Maphim], [MaQG], [MaKieu], [MaNSX], [MaTL], [TenPhim], [NamSX], [SoTap], [Ngaycapnhat], [Anhbia], [Mota]) VALUES (1, 127, 1, 123, 1, N'raya and the last dragon', 2000, 1, CAST(N'2010-06-08' AS Date), N'raya1.jpg', N'raya and the last dragon')
INSERT [dbo].[Phim] ([Maphim], [MaQG], [MaKieu], [MaNSX], [MaTL], [TenPhim], [NamSX], [SoTap], [Ngaycapnhat], [Anhbia], [Mota]) VALUES (2, 127, 1, 123, 1, N'black widow', 2001, 1, CAST(N'2009-06-08' AS Date), N'black widow.jpg', N'black widow')
INSERT [dbo].[Phim] ([Maphim], [MaQG], [MaKieu], [MaNSX], [MaTL], [TenPhim], [NamSX], [SoTap], [Ngaycapnhat], [Anhbia], [Mota]) VALUES (3, 128, 1, 123, 1, N'venon: let there be carnage', 2002, 1, CAST(N'2008-07-08' AS Date), N'venon.jpg', N'venon: let there be carnage')
INSERT [dbo].[Phim] ([Maphim], [MaQG], [MaKieu], [MaNSX], [MaTL], [TenPhim], [NamSX], [SoTap], [Ngaycapnhat], [Anhbia], [Mota]) VALUES (4, 128, 2, 123, 1, N'dealpool 2', 2003, 8, CAST(N'2007-07-12' AS Date), N'dealpool-2.jpg', N'dealpool 2')
INSERT [dbo].[Phim] ([Maphim], [MaQG], [MaKieu], [MaNSX], [MaTL], [TenPhim], [NamSX], [SoTap], [Ngaycapnhat], [Anhbia], [Mota]) VALUES (5, 129, 2, 123, 2, N'The tomorrow war', 2004, 4, CAST(N'2006-04-12' AS Date), N'The-tomorrow-war.jpg', N'The tomorrow war')
INSERT [dbo].[Phim] ([Maphim], [MaQG], [MaKieu], [MaNSX], [MaTL], [TenPhim], [NamSX], [SoTap], [Ngaycapnhat], [Anhbia], [Mota]) VALUES (6, 129, 2, 123, 2, N'jungle cruise', 2005, 5, CAST(N'2005-03-18' AS Date), N'jungle-cruise.jpg', N'jungle cruise')
INSERT [dbo].[Phim] ([Maphim], [MaQG], [MaKieu], [MaNSX], [MaTL], [TenPhim], [NamSX], [SoTap], [Ngaycapnhat], [Anhbia], [Mota]) VALUES (7, 130, 1, 123, 2, N'dune', 2003, 1, CAST(N'2004-09-08' AS Date), N'dune.jpg', N'dune')
INSERT [dbo].[Phim] ([Maphim], [MaQG], [MaKieu], [MaNSX], [MaTL], [TenPhim], [NamSX], [SoTap], [Ngaycapnhat], [Anhbia], [Mota]) VALUES (8, 130, 1, 123, 2, N'The suicide squad', 2000, 1, CAST(N'2003-07-20' AS Date), N'The-suicide-squad.jpg', N'The suicide squad')
INSERT [dbo].[Phim] ([Maphim], [MaQG], [MaKieu], [MaNSX], [MaTL], [TenPhim], [NamSX], [SoTap], [Ngaycapnhat], [Anhbia], [Mota]) VALUES (9, 131, 1, 123, 3, N'no time to die', 2004, 1, CAST(N'2002-05-26' AS Date), N'no-time-to-die.jpg', N'no time to die')
INSERT [dbo].[Phim] ([Maphim], [MaQG], [MaKieu], [MaNSX], [MaTL], [TenPhim], [NamSX], [SoTap], [Ngaycapnhat], [Anhbia], [Mota]) VALUES (10, 131, 2, 123, 3, N'prisoner of the ghostland', 2000, 12, CAST(N'2001-12-03' AS Date), N'prisoner-of-he-ghostland.jpg', N'prisoner of the ghostland')
INSERT [dbo].[Phim] ([Maphim], [MaQG], [MaKieu], [MaNSX], [MaTL], [TenPhim], [NamSX], [SoTap], [Ngaycapnhat], [Anhbia], [Mota]) VALUES (11, 132, 2, 123, 3, N'peaky-blinders', 1988, 6, CAST(N'2000-05-13' AS Date), N'peaky-blinders.jpg', N'peaky-blinders')
INSERT [dbo].[Phim] ([Maphim], [MaQG], [MaKieu], [MaNSX], [MaTL], [TenPhim], [NamSX], [SoTap], [Ngaycapnhat], [Anhbia], [Mota]) VALUES (12, 132, 1, 123, 3, N'john-wick', 1990, 1, CAST(N'2000-05-12' AS Date), N'john-wick.jpg', N'john-wick')
GO
INSERT [dbo].[QuangCao] ([MaQC], [TenQC]) VALUES (123456, N'abcdef')
GO
INSERT [dbo].[QuocGia] ([MaQG], [TenQG]) VALUES (127, N'America ')
INSERT [dbo].[QuocGia] ([MaQG], [TenQG]) VALUES (128, N'England')
INSERT [dbo].[QuocGia] ([MaQG], [TenQG]) VALUES (129, N'VietNam')
INSERT [dbo].[QuocGia] ([MaQG], [TenQG]) VALUES (130, N'ThaiLand')
INSERT [dbo].[QuocGia] ([MaQG], [TenQG]) VALUES (131, N'India')
INSERT [dbo].[QuocGia] ([MaQG], [TenQG]) VALUES (132, N'Singapore ')
INSERT [dbo].[QuocGia] ([MaQG], [TenQG]) VALUES (133, N'China ')
INSERT [dbo].[QuocGia] ([MaQG], [TenQG]) VALUES (134, N'Japan ')
INSERT [dbo].[QuocGia] ([MaQG], [TenQG]) VALUES (135, N'France ')
INSERT [dbo].[QuocGia] ([MaQG], [TenQG]) VALUES (136, N'Canada ')
INSERT [dbo].[QuocGia] ([MaQG], [TenQG]) VALUES (137, N'Russia ')
INSERT [dbo].[QuocGia] ([MaQG], [TenQG]) VALUES (138, N'Germany ')
GO
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (1, N'Crime ')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (2, N'History ')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (3, N'War ')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (4, N'Sci-Fi ')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (5, N'Sport ')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (6, N'Western ')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (7, N'Swashbuckling ')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (8, N'Action ')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (9, N'Adventure ')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (10, N'Mystery ')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (11, N'Comedy ')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (12, N'Horror ')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (13, N'Thriller ')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (14, N'Fantasy ')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (15, N'Drama ')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (16, N'Romance ')
GO
INSERT [dbo].[TKAdmin] ([MaTKadmin], [TenTK], [MatKhauTK]) VALUES (12, N'admin1', N'0376829437')
GO
INSERT [dbo].[TKNguoiDung] ([MaTK], [TenDN], [MatKhau]) VALUES (123, N'dungng12421', N'0376829437')
INSERT [dbo].[TKNguoiDung] ([MaTK], [TenDN], [MatKhau]) VALUES (124, N'dungng124', N'0376829437a')
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_Admin_TKAdmin] FOREIGN KEY([MaTKadmin])
REFERENCES [dbo].[TKAdmin] ([MaTKadmin])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK_Admin_TKAdmin]
GO
ALTER TABLE [dbo].[BaoCao]  WITH CHECK ADD  CONSTRAINT [FK_BaoCao_NguoiDung] FOREIGN KEY([MaKhach])
REFERENCES [dbo].[NguoiDung] ([MaKhach])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BaoCao] CHECK CONSTRAINT [FK_BaoCao_NguoiDung]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_NguoiDung] FOREIGN KEY([MaKhach])
REFERENCES [dbo].[NguoiDung] ([MaKhach])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_NguoiDung]
GO
ALTER TABLE [dbo].[CTPhim]  WITH CHECK ADD  CONSTRAINT [FK_CTPhim_DienVien] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DienVien] ([MaDV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTPhim] CHECK CONSTRAINT [FK_CTPhim_DienVien]
GO
ALTER TABLE [dbo].[CTPhim]  WITH CHECK ADD  CONSTRAINT [FK_CTPhim_Phim1] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([Maphim])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTPhim] CHECK CONSTRAINT [FK_CTPhim_Phim1]
GO
ALTER TABLE [dbo].[KhoYeuThich]  WITH CHECK ADD  CONSTRAINT [FK_KhoYeuThich_Phim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([Maphim])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhoYeuThich] CHECK CONSTRAINT [FK_KhoYeuThich_Phim]
GO
ALTER TABLE [dbo].[KhoYeuThich]  WITH CHECK ADD  CONSTRAINT [FK_KhoYeuThich_TKNguoiDung] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TKNguoiDung] ([MaTK])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhoYeuThich] CHECK CONSTRAINT [FK_KhoYeuThich_TKNguoiDung]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_TKNguoiDung] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TKNguoiDung] ([MaTK])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_TKNguoiDung]
GO
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_KieuPhim] FOREIGN KEY([MaKieu])
REFERENCES [dbo].[KieuPhim] ([MaKieu])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_KieuPhim]
GO
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_NhaSanXuat] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_NhaSanXuat]
GO
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_QuocGia] FOREIGN KEY([MaQG])
REFERENCES [dbo].[QuocGia] ([MaQG])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_QuocGia]
GO
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_TheLoai] FOREIGN KEY([MaTL])
REFERENCES [dbo].[TheLoai] ([MaTL])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_TheLoai]
GO
USE [master]
GO
ALTER DATABASE [WebsitePhim] SET  READ_WRITE 
GO
