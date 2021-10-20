USE [master]
GO
/****** Object:  Database [ThuVien]    Script Date: 19/10/2021 14:42:53 ******/
CREATE DATABASE [ThuVien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ThuVien', FILENAME = N'D:\Document_F\Hoc ki 5\4-co so du lieu\Chương 4\database\ThuVien.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ThuVien_log', FILENAME = N'D:\Document_F\Hoc ki 5\4-co so du lieu\Chương 4\database\ThuVien_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ThuVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ThuVien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ThuVien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ThuVien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ThuVien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ThuVien] SET ARITHABORT OFF 
GO
ALTER DATABASE [ThuVien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ThuVien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ThuVien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ThuVien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ThuVien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ThuVien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ThuVien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ThuVien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ThuVien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ThuVien] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ThuVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ThuVien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ThuVien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ThuVien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ThuVien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ThuVien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ThuVien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ThuVien] SET RECOVERY FULL 
GO
ALTER DATABASE [ThuVien] SET  MULTI_USER 
GO
ALTER DATABASE [ThuVien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ThuVien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ThuVien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ThuVien] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ThuVien] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ThuVien', N'ON'
GO
USE [ThuVien]
GO
/****** Object:  Table [dbo].[CuonSach]    Script Date: 19/10/2021 14:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuonSach](
	[MaCuon] [int] NOT NULL,
	[ViTri] [varchar](40) NOT NULL,
	[MaSach] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DauSach]    Script Date: 19/10/2021 14:42:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DauSach](
	[MaSach] [int] NOT NULL,
	[Tua] [varchar](40) NOT NULL,
	[MaNXB] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocGia]    Script Date: 19/10/2021 14:42:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocGia](
	[MaDG] [int] NOT NULL,
	[TenDG] [varchar](40) NOT NULL,
	[DiaChi] [varchar](40) NOT NULL,
	[SoDt] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Muon]    Script Date: 19/10/2021 14:42:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Muon](
	[NgayMuon] [date] NOT NULL,
	[NgayTra] [date] NOT NULL,
	[MaCuon] [int] NOT NULL,
	[MaDG] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCuon] ASC,
	[MaDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NXB]    Script Date: 19/10/2021 14:42:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NXB](
	[MaNXB] [int] NOT NULL,
	[TenNXB] [varchar](40) NOT NULL,
	[DiaChi] [varchar](40) NOT NULL,
	[SoDt] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 19/10/2021 14:42:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[TenTacGia] [varchar](40) NOT NULL,
	[MaSach] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TenTacGia] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CuonSach] ([MaCuon], [ViTri], [MaSach]) VALUES (1, N'Shelf1', 2)
INSERT [dbo].[CuonSach] ([MaCuon], [ViTri], [MaSach]) VALUES (2, N'Shelf2', 3)
INSERT [dbo].[CuonSach] ([MaCuon], [ViTri], [MaSach]) VALUES (3, N'Shelf3', 1)
INSERT [dbo].[CuonSach] ([MaCuon], [ViTri], [MaSach]) VALUES (4, N'Shelf4', 5)
INSERT [dbo].[CuonSach] ([MaCuon], [ViTri], [MaSach]) VALUES (5, N'Shelf5', 6)
INSERT [dbo].[CuonSach] ([MaCuon], [ViTri], [MaSach]) VALUES (6, N'Shelf6', 4)
GO
INSERT [dbo].[DauSach] ([MaSach], [Tua], [MaNXB]) VALUES (1, N'Book1', 2)
INSERT [dbo].[DauSach] ([MaSach], [Tua], [MaNXB]) VALUES (2, N'Book2', 3)
INSERT [dbo].[DauSach] ([MaSach], [Tua], [MaNXB]) VALUES (3, N'Book3', 1)
INSERT [dbo].[DauSach] ([MaSach], [Tua], [MaNXB]) VALUES (4, N'Book4', 1)
INSERT [dbo].[DauSach] ([MaSach], [Tua], [MaNXB]) VALUES (5, N'Book5', 2)
INSERT [dbo].[DauSach] ([MaSach], [Tua], [MaNXB]) VALUES (6, N'Book6', 3)
GO
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [DiaChi], [SoDt]) VALUES (1, N'Nguyen Van A', N'Da Lat', N'123456')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [DiaChi], [SoDt]) VALUES (2, N'Tran Van B', N'Kien Giang', N'456789')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [DiaChi], [SoDt]) VALUES (3, N'Ho Thi C', N'Nghe An', N'258456')
GO
INSERT [dbo].[Muon] ([NgayMuon], [NgayTra], [MaCuon], [MaDG]) VALUES (CAST(N'2021-01-01' AS Date), CAST(N'2021-01-02' AS Date), 1, 1)
INSERT [dbo].[Muon] ([NgayMuon], [NgayTra], [MaCuon], [MaDG]) VALUES (CAST(N'2021-05-03' AS Date), CAST(N'2021-07-06' AS Date), 2, 2)
INSERT [dbo].[Muon] ([NgayMuon], [NgayTra], [MaCuon], [MaDG]) VALUES (CAST(N'2021-08-09' AS Date), CAST(N'2021-11-09' AS Date), 3, 3)
GO
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [SoDt]) VALUES (1, N'Addison Wesley', N'EngLand', N'555888')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [SoDt]) VALUES (2, N'Kim Dong', N'VietNam', N'111222')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [SoDt]) VALUES (3, N'Giao Duc', N'VietNam', N'999333')
GO
INSERT [dbo].[TacGia] ([TenTacGia], [MaSach]) VALUES (N'Hemingway', 2)
INSERT [dbo].[TacGia] ([TenTacGia], [MaSach]) VALUES (N'ToHuu', 1)
INSERT [dbo].[TacGia] ([TenTacGia], [MaSach]) VALUES (N'XuanQunh', 3)
GO
ALTER TABLE [dbo].[CuonSach]  WITH CHECK ADD FOREIGN KEY([MaSach])
REFERENCES [dbo].[DauSach] ([MaSach])
GO
ALTER TABLE [dbo].[DauSach]  WITH CHECK ADD FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NXB] ([MaNXB])
GO
ALTER TABLE [dbo].[Muon]  WITH CHECK ADD FOREIGN KEY([MaCuon])
REFERENCES [dbo].[CuonSach] ([MaCuon])
GO
ALTER TABLE [dbo].[Muon]  WITH CHECK ADD FOREIGN KEY([MaDG])
REFERENCES [dbo].[DocGia] ([MaDG])
GO
ALTER TABLE [dbo].[TacGia]  WITH CHECK ADD FOREIGN KEY([MaSach])
REFERENCES [dbo].[DauSach] ([MaSach])
GO
USE [master]
GO
ALTER DATABASE [ThuVien] SET  READ_WRITE 
GO
