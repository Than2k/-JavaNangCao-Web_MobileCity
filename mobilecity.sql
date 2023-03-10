USE [MobileCity]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 12/21/2022 8:42:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idKhachHang] [int] NOT NULL,
	[idMobile] [int] NOT NULL,
	[noidung] [nvarchar](500) NOT NULL,
	[ngayBinhLuan] [datetime] NOT NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 12/21/2022 8:42:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[maMobile] [int] NOT NULL,
	[gia] [bigint] NOT NULL,
	[soLuongMua] [int] NOT NULL,
	[damua] [bit] NULL,
	[maHD] [int] NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChuyenKhoan]    Script Date: 12/21/2022 8:42:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenKhoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idHoaDon] [int] NOT NULL,
	[idKhachHang] [int] NOT NULL,
	[noiDung] [nchar](10) NOT NULL,
	[ngayChuyen] [date] NULL,
 CONSTRAINT [PK_ChuyenKhoan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DienThoai]    Script Date: 12/21/2022 8:42:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DienThoai](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](100) NOT NULL,
	[giaBan] [bigint] NULL,
	[giaNhap] [bigint] NOT NULL,
	[soluong] [int] NULL,
	[mausac] [nvarchar](15) NULL,
	[cameraTruoc] [nvarchar](200) NULL,
	[cameraSau] [nvarchar](200) NULL,
	[pin] [nvarchar](50) NULL,
	[ram] [nvarchar](100) NULL,
	[anh] [nvarchar](50) NULL,
	[ngaynhap] [date] NULL,
	[cpu] [nvarchar](200) NULL,
	[bonho] [nvarchar](50) NULL,
	[manhinh] [nvarchar](200) NULL,
	[maloai] [nvarchar](50) NULL,
	[baohanh] [nvarchar](50) NULL,
 CONSTRAINT [PK_DienThoai] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/21/2022 8:42:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[maKh] [int] NOT NULL,
	[ngayMua] [date] NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/21/2022 8:42:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NOT NULL,
	[diachi] [nvarchar](50) NULL,
	[sdt] [nvarchar](11) NULL,
	[email] [nvarchar](50) NOT NULL,
	[matkhau] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 12/21/2022 8:42:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[id] [nvarchar](50) NOT NULL,
	[tenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/21/2022 8:42:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[taiKhoan] [nvarchar](50) NOT NULL,
	[hoTen] [nvarchar](50) NOT NULL,
	[matKhau] [nvarchar](50) NOT NULL,
	[quyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[taiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[view_binhluan]    Script Date: 12/21/2022 8:42:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_binhluan]
AS
SELECT dbo.KhachHang.hoten, dbo.BinhLuan.id AS idBinhLuan, dbo.KhachHang.id AS idKhachHang, dbo.BinhLuan.noidung, dbo.BinhLuan.ngayBinhLuan, dbo.DienThoai.id AS idMobile
FROM     dbo.BinhLuan INNER JOIN
                  dbo.KhachHang ON dbo.BinhLuan.idKhachHang = dbo.KhachHang.id INNER JOIN
                  dbo.DienThoai ON dbo.BinhLuan.idMobile = dbo.DienThoai.id

GO
/****** Object:  View [dbo].[view_chuyentien]    Script Date: 12/21/2022 8:42:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_chuyentien]
AS
SELECT dbo.ChiTietHoaDon.id AS idCT, dbo.ChiTietHoaDon.gia, dbo.ChiTietHoaDon.soLuongMua, dbo.ChiTietHoaDon.damua, dbo.ChiTietHoaDon.gia * dbo.ChiTietHoaDon.soLuongMua AS thanhTien, dbo.HoaDon.id AS idHD, 
                  dbo.KhachHang.hoten, dbo.KhachHang.sdt
FROM     dbo.ChiTietHoaDon INNER JOIN
                  dbo.HoaDon ON dbo.ChiTietHoaDon.maHD = dbo.HoaDon.id INNER JOIN
                  dbo.KhachHang ON dbo.HoaDon.maKh = dbo.KhachHang.id
WHERE  (dbo.ChiTietHoaDon.damua = 1)

GO
/****** Object:  View [dbo].[view_hd]    Script Date: 12/21/2022 8:42:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_hd]
AS
SELECT dbo.ChiTietHoaDon.id, dbo.ChiTietHoaDon.maMobile, dbo.ChiTietHoaDon.gia, dbo.ChiTietHoaDon.soLuongMua, dbo.ChiTietHoaDon.damua, dbo.ChiTietHoaDon.maHD, dbo.HoaDon.id AS Expr1, dbo.HoaDon.maKh, dbo.HoaDon.ngayMua, 
                  dbo.HoaDon.status
FROM     dbo.ChiTietHoaDon INNER JOIN
                  dbo.HoaDon ON dbo.ChiTietHoaDon.maHD = dbo.HoaDon.id

GO
/****** Object:  View [dbo].[view_history]    Script Date: 12/21/2022 8:42:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_history]
AS
SELECT dbo.ChiTietHoaDon.soLuongMua, dbo.ChiTietHoaDon.gia, dbo.ChiTietHoaDon.id AS maCT, dbo.DienThoai.ten, dbo.HoaDon.ngayMua, dbo.KhachHang.hoten, dbo.KhachHang.diachi, dbo.KhachHang.sdt, dbo.KhachHang.email, 
                  dbo.HoaDon.id AS maHD, dbo.KhachHang.id AS maKh, dbo.DienThoai.anh, dbo.ChiTietHoaDon.damua AS status
FROM     dbo.ChiTietHoaDon INNER JOIN
                  dbo.DienThoai ON dbo.ChiTietHoaDon.maMobile = dbo.DienThoai.id INNER JOIN
                  dbo.HoaDon ON dbo.ChiTietHoaDon.maHD = dbo.HoaDon.id INNER JOIN
                  dbo.KhachHang ON dbo.HoaDon.maKh = dbo.KhachHang.id

GO
/****** Object:  View [dbo].[view_hoadon]    Script Date: 12/21/2022 8:42:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_hoadon]
AS
SELECT DISTINCT 
                  dbo.HoaDon.id, dbo.ChiTietHoaDon.id AS idCT, dbo.HoaDon.status, dbo.ChiTietHoaDon.gia, dbo.ChiTietHoaDon.soLuongMua, dbo.DienThoai.ten, dbo.DienThoai.id AS idMobile, dbo.DienThoai.anh, 
                  dbo.ChiTietHoaDon.gia * dbo.ChiTietHoaDon.soLuongMua AS thanhTien, dbo.HoaDon.id AS idHD, dbo.KhachHang.hoten, dbo.KhachHang.sdt, dbo.KhachHang.diachi, dbo.ChiTietHoaDon.maHD
FROM     dbo.ChiTietHoaDon INNER JOIN
                  dbo.DienThoai ON dbo.ChiTietHoaDon.maMobile = dbo.DienThoai.id INNER JOIN
                  dbo.HoaDon ON dbo.ChiTietHoaDon.maHD = dbo.HoaDon.id INNER JOIN
                  dbo.KhachHang ON dbo.HoaDon.maKh = dbo.KhachHang.id

GO
/****** Object:  View [dbo].[view_thongke]    Script Date: 12/21/2022 8:42:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_thongke]
AS
SELECT dbo.ChiTietHoaDon.gia AS giaBan, dbo.ChiTietHoaDon.soLuongMua, dbo.ChiTietHoaDon.damua, dbo.ChiTietHoaDon.id AS idCT, dbo.ChiTietHoaDon.gia * dbo.ChiTietHoaDon.soLuongMua AS thanhTien, dbo.DienThoai.giaNhap, 
                  dbo.KhachHang.id AS Expr1
FROM     dbo.ChiTietHoaDon INNER JOIN
                  dbo.HoaDon ON dbo.ChiTietHoaDon.maHD = dbo.HoaDon.id INNER JOIN
                  dbo.DienThoai ON dbo.ChiTietHoaDon.maMobile = dbo.DienThoai.id INNER JOIN
                  dbo.KhachHang ON dbo.HoaDon.maKh = dbo.KhachHang.id
WHERE  (dbo.ChiTietHoaDon.damua = 1)

GO
SET IDENTITY_INSERT [dbo].[BinhLuan] ON 

INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (1, 1, 1, N'Điện thoại đẹp quá', CAST(N'2022-11-11 00:00:00.000' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (2, 2, 14, N'Điện thoại còn không shop', CAST(N'2022-11-12 00:00:00.000' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (3, 3, 14, N'Giá bao nhiêu shop', CAST(N'2022-11-13 00:00:00.000' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (4, 1, 14, N'Còn hàng không shop', CAST(N'2022-11-14 00:00:00.000' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (5, 1, 14, N'alo shop', CAST(N'2022-11-15 00:00:00.000' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (9, 2, 14, N'shop ơi cho hỏi điện thoại này còn không ạ!', CAST(N'2022-12-11 00:00:00.000' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (10, 2, 4, N'alooo', CAST(N'2022-12-17 00:00:00.000' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (11, 2, 4, N'shop ơi', CAST(N'2022-12-17 00:00:00.000' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (12, 2, 16, N'shop', CAST(N'2022-12-17 13:51:17.263' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (13, 2, 16, N'dssd', CAST(N'2022-12-17 14:00:42.710' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (14, 2, 16, N'dấdsdas', CAST(N'2022-12-17 14:27:47.050' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (15, 2, 4, N'dsd', CAST(N'2022-12-17 14:49:02.110' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (19, 1, 16, N'iphone này còn không shop ??', CAST(N'2022-12-17 15:14:22.463' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (20, 1, 16, N'...', CAST(N'2022-12-17 15:17:43.660' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (22, 1, 4, N'shop', CAST(N'2022-12-17 15:27:20.400' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (23, 1, 4, N'shop', CAST(N'2022-12-17 15:27:36.737' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (24, 1, 4, N'...', CAST(N'2022-12-17 15:29:19.160' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (25, 1, 6, N'hi', CAST(N'2022-12-17 15:35:40.390' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (26, 1, 3, N'hi', CAST(N'2022-12-17 15:41:04.863' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (29, 3, 4, N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', CAST(N'2022-12-17 15:45:06.890' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (30, 3, 4, N'@héo mòn : alo', CAST(N'2022-12-17 15:46:30.890' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (31, 4, 4, N'hi', CAST(N'2022-12-17 15:48:40.310' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (32, 1, 16, N'hi google!', CAST(N'2022-12-20 00:15:52.303' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (33, 1, 2, N'aloll', CAST(N'2022-12-20 16:12:02.247' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (34, 1, 3, N'chào bạn', CAST(N'2022-12-20 16:18:55.533' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (35, 1, 3, N'chào ', CAST(N'2022-12-20 16:19:02.790' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (36, 1, 16, N'hi', CAST(N'2022-12-20 16:19:37.987' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (37, 1, 16, N'hi', CAST(N'2022-12-20 16:19:43.700' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (38, 1, 16, N'alo', CAST(N'2022-12-20 16:20:09.990' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (39, 1, 16, N'hjhjh', CAST(N'2022-12-20 16:21:06.820' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (40, 5, 16, N'chào shop!!!', CAST(N'2022-12-20 16:23:24.113' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (41, 5, 16, N'sao ip 13 lại đắt hơn ip 14 v shop =((', CAST(N'2022-12-20 16:24:38.143' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (42, 1, 3, N'hi', CAST(N'2022-12-20 16:27:04.407' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (43, 5, 3, N'hi bạn', CAST(N'2022-12-20 16:27:33.753' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (44, 1, 3, N'chào', CAST(N'2022-12-20 16:27:40.487' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (45, 1, 38, N'chao shop', CAST(N'2022-12-20 23:14:30.210' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (46, 1, 39, N'hiii', CAST(N'2022-12-21 07:45:23.783' AS DateTime))
INSERT [dbo].[BinhLuan] ([id], [idKhachHang], [idMobile], [noidung], [ngayBinhLuan]) VALUES (47, 1, 16, N':))', CAST(N'2022-12-21 07:56:14.947' AS DateTime))
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] ON 

INSERT [dbo].[ChiTietHoaDon] ([id], [maMobile], [gia], [soLuongMua], [damua], [maHD]) VALUES (1, 14, 8000000, 1, 1, 4)
INSERT [dbo].[ChiTietHoaDon] ([id], [maMobile], [gia], [soLuongMua], [damua], [maHD]) VALUES (2, 2, 10000000, 3, 1, 4)
INSERT [dbo].[ChiTietHoaDon] ([id], [maMobile], [gia], [soLuongMua], [damua], [maHD]) VALUES (3, 3, 14000000, 3, 1, 5)
INSERT [dbo].[ChiTietHoaDon] ([id], [maMobile], [gia], [soLuongMua], [damua], [maHD]) VALUES (4, 14, 7000000, 1, 1, 5)
INSERT [dbo].[ChiTietHoaDon] ([id], [maMobile], [gia], [soLuongMua], [damua], [maHD]) VALUES (5, 7, 7000000, 2, 1, 6)
INSERT [dbo].[ChiTietHoaDon] ([id], [maMobile], [gia], [soLuongMua], [damua], [maHD]) VALUES (6, 17, 27000000, 1, 1, 7)
INSERT [dbo].[ChiTietHoaDon] ([id], [maMobile], [gia], [soLuongMua], [damua], [maHD]) VALUES (7, 16, 14000000, 3, 1, 7)
INSERT [dbo].[ChiTietHoaDon] ([id], [maMobile], [gia], [soLuongMua], [damua], [maHD]) VALUES (8, 2, 9000000, 1, 1, 8)
INSERT [dbo].[ChiTietHoaDon] ([id], [maMobile], [gia], [soLuongMua], [damua], [maHD]) VALUES (9, 5, 15000000, 1, 0, 8)
INSERT [dbo].[ChiTietHoaDon] ([id], [maMobile], [gia], [soLuongMua], [damua], [maHD]) VALUES (10, 3, 16000000, 4, 1, 9)
INSERT [dbo].[ChiTietHoaDon] ([id], [maMobile], [gia], [soLuongMua], [damua], [maHD]) VALUES (11, 10, 8000000, 5, 0, 9)
INSERT [dbo].[ChiTietHoaDon] ([id], [maMobile], [gia], [soLuongMua], [damua], [maHD]) VALUES (12, 17, 26000000, 3, 0, 10)
INSERT [dbo].[ChiTietHoaDon] ([id], [maMobile], [gia], [soLuongMua], [damua], [maHD]) VALUES (13, 6, 7000000, 1, 0, 10)
INSERT [dbo].[ChiTietHoaDon] ([id], [maMobile], [gia], [soLuongMua], [damua], [maHD]) VALUES (14, 15, 12000000, 2, 1, 11)
INSERT [dbo].[ChiTietHoaDon] ([id], [maMobile], [gia], [soLuongMua], [damua], [maHD]) VALUES (15, 1, 7000000, 1, 0, 12)
INSERT [dbo].[ChiTietHoaDon] ([id], [maMobile], [gia], [soLuongMua], [damua], [maHD]) VALUES (16, 1, 7000000, 1, 0, 13)
INSERT [dbo].[ChiTietHoaDon] ([id], [maMobile], [gia], [soLuongMua], [damua], [maHD]) VALUES (17, 1, 7000000, 1, 1, 14)
INSERT [dbo].[ChiTietHoaDon] ([id], [maMobile], [gia], [soLuongMua], [damua], [maHD]) VALUES (18, 2, 10000000, 3, 1, 15)
INSERT [dbo].[ChiTietHoaDon] ([id], [maMobile], [gia], [soLuongMua], [damua], [maHD]) VALUES (19, 3, 14000000, 12, 1, 16)
INSERT [dbo].[ChiTietHoaDon] ([id], [maMobile], [gia], [soLuongMua], [damua], [maHD]) VALUES (20, 42, 26000000, 3, 1, 17)
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] OFF
SET IDENTITY_INSERT [dbo].[DienThoai] ON 

INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (1, N'Điện thoại Xiaomi Redmi Note 12 (Snapdragon 4 Gen 1)', 7000000, 5000000, 7, N'---chá»n---', N'48 MP, (góc rộng), 0.8µm, PDAF2 MP, f/2.4, (độ sâu)Quay phim: 1080p@30/60fps', N'48 MP, (góc rộng), 0.8µm, PDAF2 MP, f/2.4, (độ sâu)Quay phim: 1080p@30/60fps', N'Li-Po 5000 mAhSạc nhanh 33W', N'---chọn---', N'xiaomi-redmi-note-11-ngoc-trai.jpg', CAST(N'2022-12-12' AS Date), N'Qualcomm SM4375 Snapdragon 4 Gen 1 (6 nm)8 nhân (2x2.0 GHz & 6x1.8 GHz)GPU: Adreno 619', N'---chọn---', N'Samsung GOLED độ nét cao, 120Hz, 1200 nits (tối đa)6.67 inches, Full HD+ (1080 x 2400 pixels), tỷ lệ 20:9', N'xiaomi', N'0')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (2, N'Điện thoại Xiaomi Redmi K50 Extreme Edition', 10000000, 8000000, 3, N'mÃ u xanh', N'48 MP, (góc rộng), 0.8µm, PDAF2 MP, f/2.4, (độ sâu)Quay phim: 1080p@30/60fps', N'48 MP, (góc rộng), 0.8µm, PDAF2 MP, f/2.4, (độ sâu)Quay phim: 1080p@30/60fps', N'Li-Po 5000 mAhSạc nhanh 33W', N'6GB', N'xiaomi-redmi-k40-pro-2-1.jpg', CAST(N'2022-12-12' AS Date), N'Qualcomm SM4375 Snapdragon 4 Gen 1 (6 nm)8 nhân (2x2.0 GHz & 6x1.8 GHz)GPU: Adreno 619', N'64GB', N'Samsung GOLED độ nét cao, 120Hz, 1200 nits (tối đa)6.67 inches, Full HD+ (1080 x 2400 pixels), tỷ lệ 20:9', N'xiaomi', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (3, N'Điện thoại samsung galaxy note 10 Pro', 14000000, 12000000, 3, N'xanh', N'48 MP, (góc rộng), 0.8µm, 
PDAF2 MP, f/2.4, (độ sâu)
Quay phim: 1080p@30/60fps', N'48 MP, (góc rộng), 0.8µm, 
PDAF
2 MP, f/2.4, (độ sâu)
Quay phim: 1080p@30/60fps', N'Li-Po 5000 mAh
Sạc nhanh 33W', N'4GB', N'xiaomi-redmi-k40-pro-2-1.jpg', CAST(N'2022-12-12' AS Date), N'Qualcomm SM4375 Snapdragon 4 Gen 1 (6 nm)
8 nhân (2x2.0 GHz & 6x1.8 GHz)
GPU: Adreno 619', N'64GB', N'Samsung GOLED độ nét cao, 120Hz, 1200 nits (tối đa)
6.67 inches, Full HD+ (1080 x 2400 pixels), tỷ lệ 20:9', N'xiaomi', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (4, N'Điện thoại Xiaomi Redmi K50 Extreme Edition', 7000000, 5000000, 3, N'mÃ u gold', N'48 MP, (góc rộng), 0.8µm, PDAF2 MP, f/2.4, (độ sâu)Quay phim: 1080p@30/60fps', N'48 MP, (góc rộng), 0.8µm, PDAF2 MP, f/2.4, (độ sâu)Quay phim: 1080p@30/60fps', N'Li-Po 5000 mAhSạc nhanh 33W', N'6GB', N'f17edc89e3562e8374361c7b3acb1357.jpg', CAST(N'2022-12-12' AS Date), N'Qualcomm SM4375 Snapdragon 4 Gen 1 (6 nm)8 nhân (2x2.0 GHz & 6x1.8 GHz)GPU: Adreno 619', N'64GB', N'Samsung GOLED độ nét cao, 120Hz, 1200 nits (tối đa)6.67 inches, Full HD+ (1080 x 2400 pixels), tỷ lệ 20:9', N'vivo', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (5, N'Điện thoại Xiaomi Redmi K50 Extreme Edition', 7000000, 5000000, 3, N'xanh', N'48 MP, (góc rộng), 0.8µm, 
PDAF2 MP, f/2.4, (độ sâu)
Quay phim: 1080p@30/60fps', N'48 MP, (góc rộng), 0.8µm, 
PDAF
2 MP, f/2.4, (độ sâu)
Quay phim: 1080p@30/60fps', N'Li-Po 5000 mAh
Sạc nhanh 33W', N'4GB', N'xiaomi-redmi-k40-pro-2-1.jpg', CAST(N'2022-12-12' AS Date), N'Qualcomm SM4375 Snapdragon 4 Gen 1 (6 nm)
8 nhân (2x2.0 GHz & 6x1.8 GHz)
GPU: Adreno 619', N'64GB', N'Samsung GOLED độ nét cao, 120Hz, 1200 nits (tối đa)
6.67 inches, Full HD+ (1080 x 2400 pixels), tỷ lệ 20:9', N'xiaomi', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (6, N'Điện thoại Xiaomi Redmi K50 Extreme Edition', 7000000, 3000000, 3, N'xanh', N'48 MP, (góc rộng), 0.8µm, 
PDAF2 MP, f/2.4, (độ sâu)
Quay phim: 1080p@30/60fps', N'48 MP, (góc rộng), 0.8µm, 
PDAF
2 MP, f/2.4, (độ sâu)
Quay phim: 1080p@30/60fps', N'Li-Po 5000 mAh
Sạc nhanh 33W', N'4GB', N'xiaomi-redmi-k40-pro-2-1.jpg', CAST(N'2022-12-12' AS Date), N'Qualcomm SM4375 Snapdragon 4 Gen 1 (6 nm)
8 nhân (2x2.0 GHz & 6x1.8 GHz)
GPU: Adreno 619', N'64GB', N'Samsung GOLED độ nét cao, 120Hz, 1200 nits (tối đa)
6.67 inches, Full HD+ (1080 x 2400 pixels), tỷ lệ 20:9', N'xiaomi', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (7, N'Điện thoại iphone 14', 7000000, 25000000, 3, N'mÃ u gold', N'48 MP, (góc rộng), 0.8µm, PDAF2 MP, f/2.4, (độ sâu)Quay phim: 1080p@30/60fps', N'48 MP, (góc rộng), 0.8µm, PDAF2 MP, f/2.4, (độ sâu)Quay phim: 1080p@30/60fps', N'Li-Po 5000 mAhSạc nhanh 33W', N'8GB', N'iphone-14-pro-bac-thumb-600x600.jpg', CAST(N'2022-12-12' AS Date), N'Qualcomm SM4375 Snapdragon 4 Gen 1 (6 nm)8 nhân (2x2.0 GHz & 6x1.8 GHz)GPU: Adreno 619', N'256GB', N'Samsung GOLED độ nét cao, 120Hz, 1200 nits (tối đa)6.67 inches, Full HD+ (1080 x 2400 pixels), tỷ lệ 20:9', N'iphone', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (8, N'Điện thoại Xiaomi Redmi K50 Extreme Edition', 7000000, 5000000, 3, N'xanh', N'48 MP, (góc rộng), 0.8µm, 
PDAF2 MP, f/2.4, (độ sâu)
Quay phim: 1080p@30/60fps', N'48 MP, (góc rộng), 0.8µm, 
PDAF
2 MP, f/2.4, (độ sâu)
Quay phim: 1080p@30/60fps', N'Li-Po 5000 mAh
Sạc nhanh 33W', N'4GB', N'xiaomi-redmi-k40-pro-2-1.jpg', CAST(N'2022-12-12' AS Date), N'Qualcomm SM4375 Snapdragon 4 Gen 1 (6 nm)
8 nhân (2x2.0 GHz & 6x1.8 GHz)
GPU: Adreno 619', N'64GB', N'Samsung GOLED độ nét cao, 120Hz, 1200 nits (tối đa)
6.67 inches, Full HD+ (1080 x 2400 pixels), tỷ lệ 20:9', N'xiaomi', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (9, N'Điện thoại Xiaomi Redmi K50 Extreme Edition', 9000000, 7000000, 3, N'xanh', N'48 MP, (góc rộng), 0.8µm, 
PDAF2 MP, f/2.4, (độ sâu)
Quay phim: 1080p@30/60fps', N'48 MP, (góc rộng), 0.8µm, 
PDAF
2 MP, f/2.4, (độ sâu)
Quay phim: 1080p@30/60fps', N'Li-Po 5000 mAh
Sạc nhanh 33W', N'4GB', N'xiaomi-redmi-k40-pro-2-1.jpg', CAST(N'2022-12-12' AS Date), N'Qualcomm SM4375 Snapdragon 4 Gen 1 (6 nm)
8 nhân (2x2.0 GHz & 6x1.8 GHz)
GPU: Adreno 619', N'64GB', N'Samsung GOLED độ nét cao, 120Hz, 1200 nits (tối đa)
6.67 inches, Full HD+ (1080 x 2400 pixels), tỷ lệ 20:9', N'samsung', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (10, N'Điện thoại samsung not22', 7000000, 5000000, 3, N'mÃ u tÃ­m', N'48 MP, (góc rộng), 0.8µm, PDAF2 MP, f/2.4, (độ sâu)Quay phim: 1080p@30/60fps', N'48 MP, (góc rộng), 0.8µm, PDAF2 MP, f/2.4, (độ sâu)Quay phim: 1080p@30/60fps', N'Li-Po 5000 mAhSạc nhanh 33W', N'6GB', N'samsung-galaxy-s21-cu-tim.jpg', CAST(N'2022-12-12' AS Date), N'Qualcomm SM4375 Snapdragon 4 Gen 1 (6 nm)8 nhân (2x2.0 GHz & 6x1.8 GHz)GPU: Adreno 619', N'64GB', N'Samsung GOLED độ nét cao, 120Hz, 1200 nits (tối đa)6.67 inches, Full HD+ (1080 x 2400 pixels), tỷ lệ 20:9', N'samsung', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (11, N'Điện thoại samsung galaxy note 10 Pro', 7000000, 5000000, 3, N'mÃ u vÃ ng', N'48 MP, (góc rộng), 0.8µm, PDAF2 MP, f/2.4, (độ sâu)Quay phim: 1080p@30/60fps', N'48 MP, (góc rộng), 0.8µm, PDAF2 MP, f/2.4, (độ sâu)Quay phim: 1080p@30/60fps', N'Li-Po 5000 mAhSạc nhanh 33W', N'8GB', N'samsung-galaxy-note-20-vang-dong.jpg', CAST(N'2022-12-12' AS Date), N'Qualcomm SM4375 Snapdragon 4 Gen 1 (6 nm)8 nhân (2x2.0 GHz & 6x1.8 GHz)GPU: Adreno 619', N'32GB', N'Samsung GOLED độ nét cao, 120Hz, 1200 nits (tối đa)6.67 inches, Full HD+ (1080 x 2400 pixels), tỷ lệ 20:9', N'samsung', N'0')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (12, N'Điện thoại Xiaomi Redmi K50 Extreme Edition', 7000000, 5000000, 3, N'xanh', N'48 MP, (góc rộng), 0.8µm, 
PDAF2 MP, f/2.4, (độ sâu)
Quay phim: 1080p@30/60fps', N'48 MP, (góc rộng), 0.8µm, 
PDAF
2 MP, f/2.4, (độ sâu)
Quay phim: 1080p@30/60fps', N'Li-Po 5000 mAh
Sạc nhanh 33W', N'4GB', N'xiaomi-redmi-k40-pro-2-1.jpg', CAST(N'2022-12-12' AS Date), N'Qualcomm SM4375 Snapdragon 4 Gen 1 (6 nm)
8 nhân (2x2.0 GHz & 6x1.8 GHz)
GPU: Adreno 619', N'64GB', N'Samsung GOLED độ nét cao, 120Hz, 1200 nits (tối đa)
6.67 inches, Full HD+ (1080 x 2400 pixels), tỷ lệ 20:9', N'xiaomi', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (13, N'Điện thoại vivo Redmi K50 Extreme Edition', 7000000, 4000000, 5, N'mÃ u xanh', N'48 MP, (góc rộng), 0.8µm, PDAF2 MP, f/2.4, (độ sâu)Quay phim: 1080p@30/60fps', N'48 MP, (góc rộng), 0.8µm, PDAF2 MP, f/2.4, (độ sâu)Quay phim: 1080p@30/60fps', N'Li-Po 5000 mAhSạc nhanh 33W', N'6GB', N'f17edc89e3562e8374361c7b3acb1357.jpg', CAST(N'2022-12-12' AS Date), N'Qualcomm SM4375 Snapdragon 4 Gen 1 (6 nm)8 nhân (2x2.0 GHz & 6x1.8 GHz)GPU: Adreno 619', N'32GB', N'Samsung GOLED độ nét cao, 120Hz, 1200 nits (tối đa)6.67 inches, Full HD+ (1080 x 2400 pixels), tỷ lệ 20:9', N'vivo', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (14, N'Điện thoại samsung galaxy note 20 Utral', 7000000, 6000000, 3, N'xanh', N'48 MP, (góc rộng), 0.8µm, 
PDAF2 MP, f/2.4, (độ sâu)
Quay phim: 1080p@30/60fps', N'48 MP, (góc rộng), 0.8µm, 
PDAF
2 MP, f/2.4, (độ sâu)
Quay phim: 1080p@30/60fps', N'Li-Po 5000 mAh
Sạc nhanh 33W', N'4GB', N'samsung-galaxy-note-20-vang-dong.jpg', CAST(N'2022-12-12' AS Date), N'Qualcomm SM4375 Snapdragon 4 Gen 1 (6 nm)
8 nhân (2x2.0 GHz & 6x1.8 GHz)
GPU: Adreno 619', N'64GB', N'Samsung GOLED độ nét cao, 120Hz, 1200 nits (tối đa)
6.67 inches, Full HD+ (1080 x 2400 pixels), tỷ lệ 20:9', N'samsung', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (15, N'iphone 14 pro', 12000000, 10000000, 3, N'gold', N'120 px', N'100px', N'4000 mAh', N'6GB', N'iphone-14-pro-bac-thumb-600x600.jpg', CAST(N'2022-12-15' AS Date), N'cccccccccc', N'32GB', NULL, N'iphone', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (16, N'iphone 13 pro', 14000000, 12000000, 12, N'mÃ u gold', N'120 px', N'100px', N'4000 mAh', N'4GB', N'iphone-14-pro-bac-thumb-600x600.jpg', CAST(N'2022-12-01' AS Date), N'chip xeo xeo', N'16GB', N'Siêu sắt nét +++', N'iphone', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (17, N'Điện thoại Samsung Galaxy S22 5G 128GB ', 26000000, 22000000, 11, NULL, N'10 MP', N'Chính 50 MP & Phụ 12 MP, 10 MP', N'3700 mAh25 W', N'12GB', N'Galaxy-S22-Black-600x600.jpg', CAST(N'2022-12-03' AS Date), N'Snapdragon 8 Gen 1', N'256GB', NULL, N'samsung', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (18, N'Điện Thoại Vivo Y21 (4GB/64GB) - Hàng Chính Hãng', 5000000, 3900000, 10, N'gold', N'120 MP', N'Chính 13 MP & Phụ 2 MP', N'4000 mAh', N'6GB', N'f17edc89e3562e8374361c7b3acb1357.jpg', CAST(N'2022-12-16' AS Date), N'IMG PowerVR GE8320', N'32GB', N'Full Siêu sắc nét', N'vivo', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (19, N'Điện thoại Xiaomi Redmi Note 12 (Snapdragon 4 Gen 1)', 7000000, 5000000, 5, N'mÃ u xanh', N'48 MP, (góc rộng), 0.8µm, PDAF2 MP, f/2.4, (độ sâu)Quay phim: 1080p@30/60fps', N'48 MP, (góc rộng), 0.8µm, PDAF2 MP, f/2.4, (độ sâu)Quay phim: 1080p@30/60fps', N'Li-Po 5000 mAhSạc nhanh 33W', N'8GB', N'xiaomi-redmi-note-11-ngoc-trai.jpg', CAST(N'2022-12-12' AS Date), N'Qualcomm SM4375 Snapdragon 4 Gen 1 (6 nm)8 nhân (2x2.0 GHz & 6x1.8 GHz)GPU: Adreno 619', N'128GB', N'Samsung GOLED độ nét cao, 120Hz, 1200 nits (tối đa)6.67 inches, Full HD+ (1080 x 2400 pixels), tỷ lệ 20:9', N'xiaomi', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (24, N'Điện thoại Xiaomi Redmi Note 12 (Snapdragon 4 Gen 1)', 7000000, 5000000, 9, N'---chá»n---', N'48 MP, (góc rộng), 0.8µm, PDAF2 MP, f/2.4, (độ sâu)Quay phim: 1080p@30/60fps', N'48 MP, (góc rộng), 0.8µm, PDAF2 MP, f/2.4, (độ sâu)Quay phim: 1080p@30/60fps', N'Li-Po 5000 mAhSạc nhanh 33W', N'---chọn---', N'Galaxy-S22-Black-600x600.jpg', CAST(N'2022-12-12' AS Date), N'Qualcomm SM4375 Snapdragon 4 Gen 1 (6 nm)8 nhân (2x2.0 GHz & 6x1.8 GHz)GPU: Adreno 619', N'---chọn---', N'Samsung GOLED độ nét cao, 120Hz, 1200 nits (tối đa)6.67 inches, Full HD+ (1080 x 2400 pixels), tỷ lệ 20:9', N'xiaomi', N'0')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (31, N'Điện thoại Samsung Galaxy S22 5G 128GB ', 26000000, 22000000, 11, NULL, N'10 MP', N'Chính 50 MP & Phụ 12 MP, 10 MP', N'3700 mAh25 W', N'12GB', N'Galaxy-S22-Black-600x600.jpg', CAST(N'2022-12-03' AS Date), N'Snapdragon 8 Gen 1', N'256GB', NULL, N'samsung', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (32, N'Điện thoại Samsung Galaxy S22 5G 128GB ', 26000000, 22000000, 11, NULL, N'10 MP', N'Chính 50 MP & Phụ 12 MP, 10 MP', N'3700 mAh25 W', N'12GB', N'Galaxy-S22-Black-600x600.jpg', CAST(N'2022-12-03' AS Date), N'Snapdragon 8 Gen 1', N'256GB', NULL, N'samsung', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (33, N'Điện thoại Samsung Galaxy S22 5G 128GB ', 26000000, 22000000, 11, NULL, N'10 MP', N'Chính 50 MP & Phụ 12 MP, 10 MP', N'3700 mAh25 W', N'12GB', N'Galaxy-S22-Black-600x600.jpg', CAST(N'2022-12-03' AS Date), N'Snapdragon 8 Gen 1', N'256GB', NULL, N'samsung', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (34, N'Điện thoại Samsung Galaxy S22 5G 128GB ', 26000000, 22000000, 11, NULL, N'10 MP', N'Chính 50 MP & Phụ 12 MP, 10 MP', N'3700 mAh25 W', N'12GB', N'Galaxy-S22-Black-600x600.jpg', CAST(N'2022-12-03' AS Date), N'Snapdragon 8 Gen 1', N'256GB', NULL, N'samsung', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (35, N'Điện thoại Samsung Galaxy S22 5G 128GB ', 26000000, 22000000, 11, NULL, N'10 MP', N'Chính 50 MP & Phụ 12 MP, 10 MP', N'3700 mAh25 W', N'12GB', N'Galaxy-S22-Black-600x600.jpg', CAST(N'2022-12-03' AS Date), N'Snapdragon 8 Gen 1', N'256GB', NULL, N'samsung', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (36, N'Điện thoại Samsung Galaxy S22 5G 128GB ', 26000000, 22000000, 11, NULL, N'10 MP', N'Chính 50 MP & Phụ 12 MP, 10 MP', N'3700 mAh25 W', N'12GB', N'Galaxy-S22-Black-600x600.jpg', CAST(N'2022-12-03' AS Date), N'Snapdragon 8 Gen 1', N'256GB', NULL, N'samsung', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (37, N'Điện thoại Samsung Galaxy S22 5G 128GB ', 26000000, 22000000, 11, NULL, N'10 MP', N'Chính 50 MP & Phụ 12 MP, 10 MP', N'3700 mAh25 W', N'12GB', N'Galaxy-S22-Black-600x600.jpg', CAST(N'2022-12-03' AS Date), N'Snapdragon 8 Gen 1', N'256GB', NULL, N'samsung', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (38, N'Điện thoại Samsung Galaxy S22 5G 128GB ', 26000000, 22000000, 11, NULL, N'10 MP', N'Chính 50 MP & Phụ 12 MP, 10 MP', N'3700 mAh25 W', N'12GB', N'Galaxy-S22-Black-600x600.jpg', CAST(N'2022-12-03' AS Date), N'Snapdragon 8 Gen 1', N'256GB', NULL, N'samsung', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (39, N'Điện thoại Samsung Galaxy S22 5G 128GB ', 26000000, 22000000, 11, NULL, N'10 MP', N'Chính 50 MP & Phụ 12 MP, 10 MP', N'3700 mAh25 W', N'12GB', N'Galaxy-S22-Black-600x600.jpg', CAST(N'2022-12-03' AS Date), N'Snapdragon 8 Gen 1', N'256GB', NULL, N'samsung', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (40, N'Điện thoại Samsung Galaxy S22 5G 128GB ', 26000000, 22000000, 11, NULL, N'10 MP', N'Chính 50 MP & Phụ 12 MP, 10 MP', N'3700 mAh25 W', N'12GB', N'Galaxy-S22-Black-600x600.jpg', CAST(N'2022-12-03' AS Date), N'Snapdragon 8 Gen 1', N'256GB', NULL, N'samsung', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (41, N'Điện thoại Samsung Galaxy S22 5G 128GB ', 26000000, 22000000, 11, NULL, N'10 MP', N'Chính 50 MP & Phụ 12 MP, 10 MP', N'3700 mAh25 W', N'12GB', N'Galaxy-S22-Black-600x600.jpg', CAST(N'2022-12-03' AS Date), N'Snapdragon 8 Gen 1', N'256GB', NULL, N'samsung', N'1')
INSERT [dbo].[DienThoai] ([id], [ten], [giaBan], [giaNhap], [soluong], [mausac], [cameraTruoc], [cameraSau], [pin], [ram], [anh], [ngaynhap], [cpu], [bonho], [manhinh], [maloai], [baohanh]) VALUES (42, N'Điện thoại Samsung Galaxy S22 5G 128GB ', 26000000, 22000000, 11, NULL, N'10 MP', N'Chính 50 MP & Phụ 12 MP, 10 MP', N'3700 mAh25 W', N'12GB', N'Galaxy-S22-Black-600x600.jpg', CAST(N'2022-12-03' AS Date), N'Snapdragon 8 Gen 1', N'256GB', NULL, N'samsung', N'1')
SET IDENTITY_INSERT [dbo].[DienThoai] OFF
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([id], [maKh], [ngayMua], [status]) VALUES (1, 1, CAST(N'2022-12-15' AS Date), 0)
INSERT [dbo].[HoaDon] ([id], [maKh], [ngayMua], [status]) VALUES (2, 1, CAST(N'2022-11-11' AS Date), 1)
INSERT [dbo].[HoaDon] ([id], [maKh], [ngayMua], [status]) VALUES (3, 2, CAST(N'2022-12-15' AS Date), 0)
INSERT [dbo].[HoaDon] ([id], [maKh], [ngayMua], [status]) VALUES (4, 2, CAST(N'2022-12-15' AS Date), 0)
INSERT [dbo].[HoaDon] ([id], [maKh], [ngayMua], [status]) VALUES (5, 1, CAST(N'2022-12-15' AS Date), 0)
INSERT [dbo].[HoaDon] ([id], [maKh], [ngayMua], [status]) VALUES (6, 1, CAST(N'2022-12-15' AS Date), 0)
INSERT [dbo].[HoaDon] ([id], [maKh], [ngayMua], [status]) VALUES (7, 1, CAST(N'2022-12-16' AS Date), 0)
INSERT [dbo].[HoaDon] ([id], [maKh], [ngayMua], [status]) VALUES (8, 1, CAST(N'2022-12-16' AS Date), 0)
INSERT [dbo].[HoaDon] ([id], [maKh], [ngayMua], [status]) VALUES (9, 2, CAST(N'2022-12-16' AS Date), 0)
INSERT [dbo].[HoaDon] ([id], [maKh], [ngayMua], [status]) VALUES (10, 2, CAST(N'2022-12-17' AS Date), 0)
INSERT [dbo].[HoaDon] ([id], [maKh], [ngayMua], [status]) VALUES (11, 5, CAST(N'2022-12-20' AS Date), 0)
INSERT [dbo].[HoaDon] ([id], [maKh], [ngayMua], [status]) VALUES (12, 5, CAST(N'2022-12-20' AS Date), 0)
INSERT [dbo].[HoaDon] ([id], [maKh], [ngayMua], [status]) VALUES (13, 5, CAST(N'2022-12-20' AS Date), 0)
INSERT [dbo].[HoaDon] ([id], [maKh], [ngayMua], [status]) VALUES (14, 5, CAST(N'2022-12-20' AS Date), 0)
INSERT [dbo].[HoaDon] ([id], [maKh], [ngayMua], [status]) VALUES (15, 5, CAST(N'2022-12-20' AS Date), 0)
INSERT [dbo].[HoaDon] ([id], [maKh], [ngayMua], [status]) VALUES (16, 1, CAST(N'2022-12-20' AS Date), 0)
INSERT [dbo].[HoaDon] ([id], [maKh], [ngayMua], [status]) VALUES (17, 1, CAST(N'2022-12-20' AS Date), 0)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([id], [hoten], [diachi], [sdt], [email], [matkhau]) VALUES (1, N'Võ Tấn Thân', N'tam kì', N'0342933276', N'tanthan2000@gmail.com', N'40bd001563085fc35165329ea1ff5c5ecbdbbeef')
INSERT [dbo].[KhachHang] ([id], [hoten], [diachi], [sdt], [email], [matkhau]) VALUES (2, N'Héo Mòn', N'tam kì', N'111111111', N'abc', N'40bd001563085fc35165329ea1ff5c5ecbdbbeef')
INSERT [dbo].[KhachHang] ([id], [hoten], [diachi], [sdt], [email], [matkhau]) VALUES (3, N'Tego', N'Hà tỉnh', N'366363634', N'Tego@mail.com', N'40bd001563085fc35165329ea1ff5c5ecbdbbeef')
INSERT [dbo].[KhachHang] ([id], [hoten], [diachi], [sdt], [email], [matkhau]) VALUES (4, N'Trình gà gáy', N'pờ le ku', N'1245676543', N'trinh@gmail.com', N'40bd001563085fc35165329ea1ff5c5ecbdbbeef')
INSERT [dbo].[KhachHang] ([id], [hoten], [diachi], [sdt], [email], [matkhau]) VALUES (5, N'Công Trình', N'gà gáy', N'0303030303', N'19t1021285@husc.edu.vn', N'40bd001563085fc35165329ea1ff5c5ecbdbbeef')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
INSERT [dbo].[LoaiSanPham] ([id], [tenLoai]) VALUES (N'asus', N'Asus')
INSERT [dbo].[LoaiSanPham] ([id], [tenLoai]) VALUES (N'iphone', N'Iphone')
INSERT [dbo].[LoaiSanPham] ([id], [tenLoai]) VALUES (N'nokia', N'Nokia')
INSERT [dbo].[LoaiSanPham] ([id], [tenLoai]) VALUES (N'onephus', N'OnePhus')
INSERT [dbo].[LoaiSanPham] ([id], [tenLoai]) VALUES (N'oppo', N'Oppo')
INSERT [dbo].[LoaiSanPham] ([id], [tenLoai]) VALUES (N'realme', N'Realme')
INSERT [dbo].[LoaiSanPham] ([id], [tenLoai]) VALUES (N'samsung', N'SamSung')
INSERT [dbo].[LoaiSanPham] ([id], [tenLoai]) VALUES (N'sony', N'Sony')
INSERT [dbo].[LoaiSanPham] ([id], [tenLoai]) VALUES (N'vivo', N'Vivo')
INSERT [dbo].[LoaiSanPham] ([id], [tenLoai]) VALUES (N'xiaomi', N'Xiaomi')
INSERT [dbo].[TaiKhoan] ([taiKhoan], [hoTen], [matKhau], [quyen]) VALUES (N'Admin@gmail.com', N'Võ Tấn Thân', N'40bd001563085fc35165329ea1ff5c5ecbdbbeef', N'admin')
INSERT [dbo].[TaiKhoan] ([taiKhoan], [hoTen], [matKhau], [quyen]) VALUES (N'Edit@gmail.com', N'Duy Trung', N'40bd001563085fc35165329ea1ff5c5ecbdbbeef', N'edit')
ALTER TABLE [dbo].[ChiTietHoaDon] ADD  CONSTRAINT [DF_ChiTietHoaDon_damua]  DEFAULT ((0)) FOR [damua]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_DienThoai] FOREIGN KEY([idMobile])
REFERENCES [dbo].[DienThoai] ([id])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_DienThoai]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_KhachHang] FOREIGN KEY([idKhachHang])
REFERENCES [dbo].[KhachHang] ([id])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_KhachHang]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_DienThoai] FOREIGN KEY([maMobile])
REFERENCES [dbo].[DienThoai] ([id])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_DienThoai]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([maHD])
REFERENCES [dbo].[HoaDon] ([id])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[DienThoai]  WITH CHECK ADD  CONSTRAINT [FK_DienThoai_LoaiSanPham] FOREIGN KEY([maloai])
REFERENCES [dbo].[LoaiSanPham] ([id])
GO
ALTER TABLE [dbo].[DienThoai] CHECK CONSTRAINT [FK_DienThoai_LoaiSanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([maKh])
REFERENCES [dbo].[KhachHang] ([id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "BinhLuan"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "KhachHang"
            Begin Extent = 
               Top = 104
               Left = 291
               Bottom = 267
               Right = 485
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "DienThoai"
            Begin Extent = 
               Top = 7
               Left = 533
               Bottom = 170
               Right = 727
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2472
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_binhluan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_binhluan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "HoaDon"
            Begin Extent = 
               Top = 7
               Left = 532
               Bottom = 170
               Right = 726
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KhachHang"
            Begin Extent = 
               Top = 7
               Left = 290
               Bottom = 170
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_chuyentien'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_chuyentien'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "HoaDon"
            Begin Extent = 
               Top = 7
               Left = 290
               Bottom = 170
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_hd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_hd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "DienThoai"
            Begin Extent = 
               Top = 7
               Left = 290
               Bottom = 170
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "HoaDon"
            Begin Extent = 
               Top = 7
               Left = 532
               Bottom = 170
               Right = 726
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KhachHang"
            Begin Extent = 
               Top = 7
               Left = 774
               Bottom = 170
               Right = 968
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_history'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_history'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "DienThoai"
            Begin Extent = 
               Top = 130
               Left = 428
               Bottom = 293
               Right = 622
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "HoaDon"
            Begin Extent = 
               Top = 30
               Left = 951
               Bottom = 193
               Right = 1145
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KhachHang"
            Begin Extent = 
               Top = 7
               Left = 670
               Bottom = 170
               Right = 864
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_hoadon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_hoadon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "HoaDon"
            Begin Extent = 
               Top = 7
               Left = 290
               Bottom = 170
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DienThoai"
            Begin Extent = 
               Top = 7
               Left = 532
               Bottom = 170
               Right = 726
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "KhachHang"
            Begin Extent = 
               Top = 7
               Left = 774
               Bottom = 170
               Right = 968
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_thongke'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_thongke'
GO
