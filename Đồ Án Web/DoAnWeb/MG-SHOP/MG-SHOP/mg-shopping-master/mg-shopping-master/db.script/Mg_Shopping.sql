create database MG_SHOPPING
USE [MG_SHOPPING]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 08/28/2016 13:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[id] [varchar](20) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Roles] ([id], [name]) VALUES (N'MENU_DELETE', N'menu delete')
INSERT [dbo].[Roles] ([id], [name]) VALUES (N'MENU_EDIT', N'menu edit')
INSERT [dbo].[Roles] ([id], [name]) VALUES (N'MENU_VIEWER', N'menu viewer')
INSERT [dbo].[Roles] ([id], [name]) VALUES (N'PRODUCTS_EDIT', N'edit  products')
INSERT [dbo].[Roles] ([id], [name]) VALUES (N'PRODUCTS_VIEWER', N'view products')
INSERT [dbo].[Roles] ([id], [name]) VALUES (N'USER_EDIT', N'edit user')
INSERT [dbo].[Roles] ([id], [name]) VALUES (N'USER_VIEWER', N'view user')
/****** Object:  Table [dbo].[UsersGroup]    Script Date: 08/28/2016 13:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UsersGroup](
	[id] [varchar](20) NOT NULL,
	[name] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_UsersGroup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[UsersGroup] ([id], [name], [Status]) VALUES (N'ADMIN', N'admin', NULL)
INSERT [dbo].[UsersGroup] ([id], [name], [Status]) VALUES (N'MEMBER', N'member', NULL)
INSERT [dbo].[UsersGroup] ([id], [name], [Status]) VALUES (N'POSTER', N'poster', NULL)
INSERT [dbo].[UsersGroup] ([id], [name], [Status]) VALUES (N'SETTING', N'setting', NULL)
/****** Object:  Table [dbo].[MenuCategory]    Script Date: 08/28/2016 13:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MenuCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[Area] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_MenuCategory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MenuCategory] ON
INSERT [dbo].[MenuCategory] ([id], [name], [Area], [Status]) VALUES (1, N'Top Menu', N'client', 1)
INSERT [dbo].[MenuCategory] ([id], [name], [Area], [Status]) VALUES (2, N'Left Menu', N'client', 1)
INSERT [dbo].[MenuCategory] ([id], [name], [Area], [Status]) VALUES (3, N'Policy', N'client', 1)
INSERT [dbo].[MenuCategory] ([id], [name], [Area], [Status]) VALUES (4, N'About', N'client', 1)
INSERT [dbo].[MenuCategory] ([id], [name], [Area], [Status]) VALUES (5, N'Sharing', N'client', 1)
INSERT [dbo].[MenuCategory] ([id], [name], [Area], [Status]) VALUES (8, N'Chi tiết Hàng', N'client', 1)
INSERT [dbo].[MenuCategory] ([id], [name], [Area], [Status]) VALUES (9, N'LeftMenu', N'admin', 1)
INSERT [dbo].[MenuCategory] ([id], [name], [Area], [Status]) VALUES (10, N'Banners', N'client', 1)
INSERT [dbo].[MenuCategory] ([id], [name], [Area], [Status]) VALUES (11, N'Brands', N'client', 1)
SET IDENTITY_INSERT [dbo].[MenuCategory] OFF
/****** Object:  Table [dbo].[Feedback]    Script Date: 08/28/2016 13:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](50) NULL,
	[title] [nvarchar](50) NULL,
	[content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON
INSERT [dbo].[Feedback] ([id], [email], [title], [content], [Status]) VALUES (1, N'manhte231@gmail.com', N'hang zom', N'Cac ong chuyen ban hang giỏm thôi', NULL)
INSERT [dbo].[Feedback] ([id], [email], [title], [content], [Status]) VALUES (2, N'lanma@yahoo.com', N'tôt', N'Hàng rất tốt ', NULL)
INSERT [dbo].[Feedback] ([id], [email], [title], [content], [Status]) VALUES (3, N'ima@yahoo.com.vn', N'Chất lương', N'chất lượng vải ko tốt như trong hình', NULL)
INSERT [dbo].[Feedback] ([id], [email], [title], [content], [Status]) VALUES (4, N'manhte231@gmail.com', N'sanr phaamr ', N'Sanr phamar it maf con xaaus nuwar ddm ', 1)
INSERT [dbo].[Feedback] ([id], [email], [title], [content], [Status]) VALUES (5, N'manhte231@gmail.com', N'sanr phaamr ', N'Sanr phamar it maf con xaaus nuwar ddm ', 1)
INSERT [dbo].[Feedback] ([id], [email], [title], [content], [Status]) VALUES (6, N'manhte231@gmail.com', N'lala', N'123 ko mua san pham', 1)
SET IDENTITY_INSERT [dbo].[Feedback] OFF
/****** Object:  Table [dbo].[Customer]    Script Date: 08/28/2016 13:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nameCustomer] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
	[age] [int] NULL,
	[sex] [bit] NULL,
	[adress] [nvarchar](70) NULL,
	[phoneNumber] [nchar](15) NULL,
	[Email] [nvarchar](50) NULL,
	[Description] [nvarchar](250) NULL,
	[Fax] [nvarchar](50) NULL,
	[Ording] [bit] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON
INSERT [dbo].[Customer] ([id], [nameCustomer], [username], [age], [sex], [adress], [phoneNumber], [Email], [Description], [Fax], [Ording]) VALUES (1, N'manhte', N'manhte', 12, 1, N'ha noi', N'0165147        ', N'manhte231@gmail.com', N'Không có yêu cầu thêm.Đang xử lý', N'129-450-214F', 1)
INSERT [dbo].[Customer] ([id], [nameCustomer], [username], [age], [sex], [adress], [phoneNumber], [Email], [Description], [Fax], [Ording]) VALUES (2, N'manhte', N'á', 12, 1, N'ha noi', N'0165147        ', N'manhte231@gmail.com', N'Không có yêu cầu thêm.Đang xử lý', N'129-450-214F', 1)
INSERT [dbo].[Customer] ([id], [nameCustomer], [username], [age], [sex], [adress], [phoneNumber], [Email], [Description], [Fax], [Ording]) VALUES (3, N'manhte', N's', 12, 1, N'ha noi', N'0165147        ', N'manhte231@gmail.com', N'Không có yêu cầu thêm.Đang xử lý', N'129-450-214F', 1)
INSERT [dbo].[Customer] ([id], [nameCustomer], [username], [age], [sex], [adress], [phoneNumber], [Email], [Description], [Fax], [Ording]) VALUES (4, N'manhte', N's', 12, 1, N'ha noi', N'0165147        ', N'manhte231@gmail.com', N'Không có yêu cầu thêm.Đang xử lý', N'129-450-214F', 1)
INSERT [dbo].[Customer] ([id], [nameCustomer], [username], [age], [sex], [adress], [phoneNumber], [Email], [Description], [Fax], [Ording]) VALUES (5, N'manhte', N'ád', 12, 1, N'ha noi', N'0165147        ', N'manhte231@gmail.com', N'Không có yêu cầu thêm.Đang xử lý', N'129-450-214F', 1)
INSERT [dbo].[Customer] ([id], [nameCustomer], [username], [age], [sex], [adress], [phoneNumber], [Email], [Description], [Fax], [Ording]) VALUES (6, N'manhte', N'sd', 12, 1, N'ha noi', N'0165147        ', N'manhte231@gmail.com', N'Không có yêu cầu thêm.Đang xử lý', N'129-450-214F', 1)
INSERT [dbo].[Customer] ([id], [nameCustomer], [username], [age], [sex], [adress], [phoneNumber], [Email], [Description], [Fax], [Ording]) VALUES (7, N'manhte pro', NULL, 12, 1, N'ha noi', N'0165147        ', N'manhte231@gmail.com', N'Không có yêu cầu thêm.Đang xử lý', N'129-450-214F', 1)
INSERT [dbo].[Customer] ([id], [nameCustomer], [username], [age], [sex], [adress], [phoneNumber], [Email], [Description], [Fax], [Ording]) VALUES (8, N'ngoc', NULL, 12, 1, N'ha noi', N'0165147        ', N'manhte231@gmail.com', N'Không có yêu cầu thêm.Đang xử lý', N'129-450-214F', 1)
INSERT [dbo].[Customer] ([id], [nameCustomer], [username], [age], [sex], [adress], [phoneNumber], [Email], [Description], [Fax], [Ording]) VALUES (9, N'phuong', NULL, 12, 1, N'ha noi', N'0165147        ', N'manhte231@gmail.com', N'Không có yêu cầu thêm.Đang xử lý', N'129-450-214F', 1)
INSERT [dbo].[Customer] ([id], [nameCustomer], [username], [age], [sex], [adress], [phoneNumber], [Email], [Description], [Fax], [Ording]) VALUES (10, N'idiot', NULL, 12, 1, N'ha noi', N'0165147        ', N'manhte231@gmail.com', N'Không có yêu cầu thêm.Đang xử lý', N'129-450-214F', 1)
INSERT [dbo].[Customer] ([id], [nameCustomer], [username], [age], [sex], [adress], [phoneNumber], [Email], [Description], [Fax], [Ording]) VALUES (11, N'gain', NULL, 12, 1, N'ha noi', N'0165147        ', N'manhte231@gmail.com', N'Không có yêu cầu thêm.Đang xử lý', N'129-450-214F', 1)
INSERT [dbo].[Customer] ([id], [nameCustomer], [username], [age], [sex], [adress], [phoneNumber], [Email], [Description], [Fax], [Ording]) VALUES (12, N'quỳnh', NULL, 12, 1, N'ha noi', N'0165147        ', N'manhte231@gmail.com', N'Không có yêu cầu thêm.Đang xử lý', N'129-450-214F', 1)
INSERT [dbo].[Customer] ([id], [nameCustomer], [username], [age], [sex], [adress], [phoneNumber], [Email], [Description], [Fax], [Ording]) VALUES (13, N'như lai', NULL, 12, 1, N'ha noi', N'0165147        ', N'manhte231@gmail.com', N'Không có yêu cầu thêm.Đang xử lý', N'129-450-214F', 1)
INSERT [dbo].[Customer] ([id], [nameCustomer], [username], [age], [sex], [adress], [phoneNumber], [Email], [Description], [Fax], [Ording]) VALUES (14, N'quỳnh chi', NULL, 12, 1, N'ha noi', N'0165147        ', N'manhte231@gmail.com', N'Không có yêu cầu thêm.Đang xử lý', N'129-450-214F', 1)
INSERT [dbo].[Customer] ([id], [nameCustomer], [username], [age], [sex], [adress], [phoneNumber], [Email], [Description], [Fax], [Ording]) VALUES (15, N'climmer', NULL, 12, 1, N'ha noi', N'0165147        ', N'manhte231@gmail.com', N'Không có yêu cầu thêm.Đang xử lý', N'129-450-214F', 1)
INSERT [dbo].[Customer] ([id], [nameCustomer], [username], [age], [sex], [adress], [phoneNumber], [Email], [Description], [Fax], [Ording]) VALUES (16, N'ha lan', NULL, 12, 1, N'ha noi', N'0165147        ', N'manhte231@gmail.com', N'Không có yêu cầu thêm.Đang xử lý', N'129-450-214F', 1)
INSERT [dbo].[Customer] ([id], [nameCustomer], [username], [age], [sex], [adress], [phoneNumber], [Email], [Description], [Fax], [Ording]) VALUES (17, N'manhte', NULL, 12, 1, N'ha noi', N'0165147        ', N'manhte231@gmail.com', N'Không có yêu cầu thêm.Đang xử lý', N'129-450-214F', 1)
INSERT [dbo].[Customer] ([id], [nameCustomer], [username], [age], [sex], [adress], [phoneNumber], [Email], [Description], [Fax], [Ording]) VALUES (18, N'manhte', NULL, 12, 1, N'ha noi', N'0165147        ', N'manhte231@gmail.com', NULL, N'', NULL)
INSERT [dbo].[Customer] ([id], [nameCustomer], [username], [age], [sex], [adress], [phoneNumber], [Email], [Description], [Fax], [Ording]) VALUES (19, N'haruharu', NULL, NULL, NULL, NULL, NULL, N'xxxphanquan@gmail.com', N'Không có yêu cầu thêm.Đang xử lý', NULL, 0)
INSERT [dbo].[Customer] ([id], [nameCustomer], [username], [age], [sex], [adress], [phoneNumber], [Email], [Description], [Fax], [Ording]) VALUES (20, N'Mộc Trà', N'moclan', 32, 0, N'Hanoi', N'7477474        ', N'manhte231@gmail.com', N'Không có yêu cầu thêm.Đang xử lý', NULL, 0)
INSERT [dbo].[Customer] ([id], [nameCustomer], [username], [age], [sex], [adress], [phoneNumber], [Email], [Description], [Fax], [Ording]) VALUES (21, N'Hồng Liên', N'luna', 23, 1, N'SaiGon', N'84167032       ', N'0.anhsang.0@gmail.com', N'Không có yêu cầu thêm.Đang xử lý', NULL, 0)
INSERT [dbo].[Customer] ([id], [nameCustomer], [username], [age], [sex], [adress], [phoneNumber], [Email], [Description], [Fax], [Ording]) VALUES (22, N'Minh Phương', N'minhphuong', 23, 0, N'Hanoi', N'012            ', N'minhphuong11994@gmail.com', N'Không có yêu cầu thêm.Đang xử lý', NULL, 0)
INSERT [dbo].[Customer] ([id], [nameCustomer], [username], [age], [sex], [adress], [phoneNumber], [Email], [Description], [Fax], [Ording]) VALUES (23, N'âf', N'aw', 12, 1, N'àd', N'11565555       ', N'sfef@dgfg', N'Không có yêu cầu thêm.Đang xử lý', NULL, 0)
SET IDENTITY_INSERT [dbo].[Customer] OFF
/****** Object:  Table [dbo].[Credentials]    Script Date: 08/28/2016 13:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Credentials](
	[GroupUserId] [varchar](20) NOT NULL,
	[RoleId] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Credentials] PRIMARY KEY CLUSTERED 
(
	[GroupUserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Credentials] ([GroupUserId], [RoleId]) VALUES (N'ADMIN', N'MENU_DELETE')
INSERT [dbo].[Credentials] ([GroupUserId], [RoleId]) VALUES (N'ADMIN', N'MENU_EDIT')
INSERT [dbo].[Credentials] ([GroupUserId], [RoleId]) VALUES (N'ADMIN', N'MENU_VIEWER')
INSERT [dbo].[Credentials] ([GroupUserId], [RoleId]) VALUES (N'ADMIN', N'PRODUCTS_EDIT')
INSERT [dbo].[Credentials] ([GroupUserId], [RoleId]) VALUES (N'ADMIN', N'PRODUCTS_VIEWER')
INSERT [dbo].[Credentials] ([GroupUserId], [RoleId]) VALUES (N'ADMIN', N'USER_EDIT')
INSERT [dbo].[Credentials] ([GroupUserId], [RoleId]) VALUES (N'ADMIN', N'USER_VIEWER')
INSERT [dbo].[Credentials] ([GroupUserId], [RoleId]) VALUES (N'MEMBER', N'PRODUCTS_VIEWER')
INSERT [dbo].[Credentials] ([GroupUserId], [RoleId]) VALUES (N'POSTER', N'PRODUCTS_EDIT')
INSERT [dbo].[Credentials] ([GroupUserId], [RoleId]) VALUES (N'SETTING', N'MENU_EDIT')
INSERT [dbo].[Credentials] ([GroupUserId], [RoleId]) VALUES (N'SETTING', N'MENU_VIEWER')
/****** Object:  Table [dbo].[User]    Script Date: 08/28/2016 13:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[realName] [nvarchar](50) NULL,
	[age] [int] NULL,
	[sex] [bit] NULL,
	[phone] [nchar](10) NULL,
	[adress] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[dateCreate] [date] NULL,
	[GroupId] [varchar](20) NULL,
	[dateUpdated] [date] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([id], [username], [password], [realName], [age], [sex], [phone], [adress], [email], [dateCreate], [GroupId], [dateUpdated], [Status]) VALUES (1, N'admin', N'6005F4B7F7168F2B89AEDD0D5C207F1F', N'Manh Tể', NULL, NULL, NULL, NULL, N'manhte231@gmail.com', CAST(0x2D3B0B00 AS Date), N'ADMIN', CAST(0x4A3B0B00 AS Date), 1)
INSERT [dbo].[User] ([id], [username], [password], [realName], [age], [sex], [phone], [adress], [email], [dateCreate], [GroupId], [dateUpdated], [Status]) VALUES (2, N'm12anhte1', N'202CB962AC59075B964B07152D234B70', N'Manh Tể', NULL, NULL, N'True      ', NULL, N'manhte231@gmail.com', CAST(0x2D3B0B00 AS Date), N'MEMBER', NULL, NULL)
INSERT [dbo].[User] ([id], [username], [password], [realName], [age], [sex], [phone], [adress], [email], [dateCreate], [GroupId], [dateUpdated], [Status]) VALUES (3, N'manhte', N'6005F4B7F7168F2B89AEDD0D5C207F1F', N'Manh Tể', NULL, NULL, N'True      ', NULL, N'manhte231@gmail.com', CAST(0x2D3B0B00 AS Date), N'MEMBER', CAST(0x6E3B0B00 AS Date), NULL)
INSERT [dbo].[User] ([id], [username], [password], [realName], [age], [sex], [phone], [adress], [email], [dateCreate], [GroupId], [dateUpdated], [Status]) VALUES (4, N'lannhi', N'202CB962AC59075B964B07152D234B70', N'Lan', NULL, NULL, NULL, NULL, N'manhte231@gmail.com', CAST(0x2D3B0B00 AS Date), N'MEMBER', NULL, NULL)
INSERT [dbo].[User] ([id], [username], [password], [realName], [age], [sex], [phone], [adress], [email], [dateCreate], [GroupId], [dateUpdated], [Status]) VALUES (5, N'phuong', N'202CB962AC59075B964B07152D234B70', N'Minh Phương', NULL, NULL, NULL, NULL, N'manhte231@gmail.com', CAST(0x2D3B0B00 AS Date), N'SETTING', NULL, 1)
INSERT [dbo].[User] ([id], [username], [password], [realName], [age], [sex], [phone], [adress], [email], [dateCreate], [GroupId], [dateUpdated], [Status]) VALUES (8, N'ngoc', N'E24712E7D5AF6D0CE2AC16476BA9EFDC', N'manh te', NULL, NULL, NULL, NULL, N'manhte231@gmail.com', CAST(0x2E3B0B00 AS Date), N'POSTER', NULL, 1)
INSERT [dbo].[User] ([id], [username], [password], [realName], [age], [sex], [phone], [adress], [email], [dateCreate], [GroupId], [dateUpdated], [Status]) VALUES (9, N'Trong', N'81DC9BDB52D04DC20036DBD8313ED055', N'Van Trong', NULL, NULL, NULL, NULL, N'manhte231@gmail.com', CAST(0x2F3B0B00 AS Date), N'MEMBER', NULL, 1)
INSERT [dbo].[User] ([id], [username], [password], [realName], [age], [sex], [phone], [adress], [email], [dateCreate], [GroupId], [dateUpdated], [Status]) VALUES (11, N'moclan', N'55F0E0D27B9A7C9B3183121EA29018C5', N'Mộc Trà', 32, 0, N'7477474   ', N'Hanoi', N'manhte231@gmail.com', CAST(0x6E3B0B00 AS Date), N'MEMBER', CAST(0x6E3B0B00 AS Date), 1)
INSERT [dbo].[User] ([id], [username], [password], [realName], [age], [sex], [phone], [adress], [email], [dateCreate], [GroupId], [dateUpdated], [Status]) VALUES (12, N'luna', N'6005F4B7F7168F2B89AEDD0D5C207F1F', N'Hồng Liên', 23, 1, N'84167032  ', N'SaiGon', N'0.anhsang.0@gmail.com', CAST(0x6F3B0B00 AS Date), N'MEMBER', CAST(0x6F3B0B00 AS Date), 1)
INSERT [dbo].[User] ([id], [username], [password], [realName], [age], [sex], [phone], [adress], [email], [dateCreate], [GroupId], [dateUpdated], [Status]) VALUES (13, N'minhphuong', N'83D2A706E010E1F930BC0954B5D4EE32', N'Minh Phương', 23, 0, N'012       ', N'Hanoi', N'minhphuong11994@gmail.com', CAST(0x813B0B00 AS Date), N'MEMBER', CAST(0x813B0B00 AS Date), 1)
INSERT [dbo].[User] ([id], [username], [password], [realName], [age], [sex], [phone], [adress], [email], [dateCreate], [GroupId], [dateUpdated], [Status]) VALUES (14, N'aw', N'343B1C4A3EA721B2D640FC8700DB0F36', N'âf', 12, 1, N'11565555  ', N'àd', N'sfef@dgfg', CAST(0xC93B0B00 AS Date), N'MEMBER', CAST(0xC93B0B00 AS Date), 1)
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[MenuManager]    Script Date: 08/28/2016 13:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuManager](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[metaName] [nvarchar](50) NULL,
	[target] [nvarchar](50) NULL,
	[link] [nvarchar](50) NULL,
	[Submenu] [int] NULL,
	[Possition] [int] NULL,
	[CategoryMenu] [int] NULL,
	[ItemIcon] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_MenuManager] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MenuManager] ON
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (1, N'Home', NULL, N'_self', N'/', NULL, 1, 1, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (2, N'Shop', N'Shop', N'_self', N'javascript:sendIndex(0)', NULL, 2, 1, N'', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (3, N'Dành cho nữ', N'Danh-cho-nu', N'_self', N'/Danh-muc/Danh-cho-nu', 2, 2, 1, N'fa fa-heart-o', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (4, N'Dành cho nam', N'Danh-cho-nam', N'_self', N'/Danh-muc/Danh-cho-nam', 2, 3, 1, N'glyphicon glyphicon-user', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (5, N'Dành cho Couple', N'Danh-cho-Couple', N'_self', N'/Danh-muc/Danh-cho-Couple', 2, 4, 1, N'glyphicon glyphicon-heart', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (6, N'Cho tình bạn', N'Cho-tinh-ban', N'_self', N'/Danh-muc/Cho-tinh-ban', 2, 5, 1, N'fa fa-users', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (7, N'Xem Giỏ Hàng', N'Xem-gio-hang', N'_self', N'/xem-gio-hang', NULL, 4, 1, N'', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (8, N'Giỏ', N'Gio', N'_self', N'/xem-gio-hang', NULL, 5, 1, N'', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (9, N'Tất cả sản phẩm', N'Tat-ca-san-pham', N'_self', N'javascript:sendIndex(0)', 2, 1, 1, N'fa  fa-bookmark', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (14, N'Áo', N'ao', N'_self', N'/Danh-muc/ao', 32, 1, 1, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (15, N'Váy', N'vay', N'_self', N'/Danh-muc/vay', 32, 2, 1, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (16, N'Quần', N'quan', N'_self', N'/Danh-muc/quan', 32, 3, 1, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (17, N'Quần áo Công sở', N'Quan-ao-cong-so', N'_self', N'/Danh-muc/Quan-ao-cong-so', 32, 4, 1, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (18, N'Áo Cặp Couple', N'Ao-cap-couple', N'_self', N'/Danh-muc/Ao-cap-couple', 32, 5, 1, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (19, N'Điều Khoản sử dụng', NULL, N'_self', N'#', NULL, 1, 3, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (20, N'Chính Sách Dịch Vụ', NULL, N'_self', N'#', NULL, 2, 3, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (21, N'Chính Sách Hoàn tiền', NULL, N'_self', N'#', NULL, 3, 3, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (22, N'Hệ Thống Tính Tiền', NULL, N'_self', N'#', NULL, 4, 3, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (23, N'Hệ Thống Vé', NULL, N'_self', N'#', NULL, 5, 3, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (24, N'Thông tin Công Ty', NULL, N'_self', N'#', NULL, 1, 4, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (25, N'Công Việc', NULL, N'_self', N'#', NULL, 2, 4, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (26, N'Vị trí Cửa Hàng', NULL, N'_self', N'#', NULL, 3, 4, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (27, N'CS khuyến mãi', NULL, N'_self', N'#', NULL, 4, 4, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (28, N'Bảo mật', NULL, N'_self', N'#', NULL, NULL, 4, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (31, N'About', N'about', N'_self', N'#about', NULL, 7, 1, N'', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (32, N'Chi Tiết Hàng', NULL, N'_self', N'#', NULL, 3, 1, N'', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (33, N'Hàng Hot', NULL, NULL, N'#', NULL, 1, 8, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (34, N'Hàng mới ', NULL, NULL, N'#', NULL, 2, 8, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (35, N'Nhiều người đặt', NULL, NULL, N'#', NULL, 3, 8, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (36, N'Hàng nhập ngoại', NULL, NULL, N'#', NULL, 4, 8, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (37, N'Home', NULL, NULL, N'/admin/adminHome', NULL, 1, 9, N'menu-icon fa fa-tachometer', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (38, N'Cấu trúc & Dữ liệu', NULL, NULL, N'#', NULL, 2, 9, N'menu-icon fa fa-desktop', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (39, N'Quản lý User', NULL, NULL, N'/admin/adminUser', 38, 1, NULL, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (40, N'Quản lý Product', NULL, NULL, N'/admin/adminProducts', 38, 2, NULL, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (41, N'Quản lý Menu', NULL, NULL, N'/admin/adminMenuManger', NULL, 3, 9, N'menu-icon fa fa-list', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (42, N'Quản lý CategoryMenu', NULL, NULL, N'/admin/adminCategoryMenu', 41, 1, NULL, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (43, N'Quản lý MenuManger client', NULL, NULL, N'/admin/adminMenuClient', 41, 2, NULL, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (44, N'Quản lý đơn hàng', NULL, NULL, N'/admin/adminCart', NULL, 4, 9, N'menu-icon fa fa-pencil-square-o', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (45, N'Quản lý  Feedback', NULL, NULL, N'/admin/adminFeedback', NULL, 5, 9, N'menu-icon fa fa-list-alt', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (46, N'DS thông tin  khách', NULL, NULL, N'/admin/adminCustomer', NULL, 6, 9, N'menu-icon fa fa-tag', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (47, N'Quản lý kho ảnh', NULL, NULL, N'/admin/adminGalery', NULL, 7, 9, N'menu-icon fa fa-picture-o', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (48, N'Quản lý MenuManger admin', NULL, NULL, N'/admin/adminMenuAdmin', 41, 3, NULL, NULL, NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (49, N'banner1', NULL, N'_self', N'#', NULL, 1, 10, N'/Galery/galery/banners/bannerx.jpg', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (50, N'banner2', NULL, N'_self', N'#', NULL, 2, 10, N'/Galery/galery/banners/banner2x.jpg', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (51, N'banner3', NULL, N'_self', N'#', NULL, 3, 10, N'/Galery/galery/banners/banner3x.jpg', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (52, N'banner4', NULL, N'_self', N'#', NULL, 4, 10, N'/Galery/galery/banners/banner4x.jpg', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (53, N'banner5', NULL, N'_self', N'#', NULL, 5, 10, N'/Galery/galery/banners/banner5x.jpg', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (54, N'banner6', NULL, N'_self', N'#', NULL, 6, 10, N'/Galery/galery/banners/banner6x.jpg', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (55, N'PARADA', NULL, N'_self', N'#', NULL, 1, 11, N'/Galery/brand/parada_logo.jpg', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (56, N'DOCLE & GABBANA', NULL, N'_self', N'#', NULL, 2, 11, N'/Galery/brand/D&G_logo.jpg', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (57, N'HERMÈS', NULL, N'_self', N'#', NULL, 3, 11, N'/Galery/brand/hermes.jpg', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (58, N'GUCCI', NULL, N'_self', N'#', NULL, 4, 11, N'/Galery/brand/gucci_logo.jpeg', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (59, N'VERSACE', NULL, N'_self', N'#', NULL, 5, 11, N'/Galery/brand/versace_logo.jpeg', NULL, 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (60, N'CART', NULL, N'_self', N'javascript:void()', NULL, 1, 5, N'fa fa-shopping-cart', N'__giohang', 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (61, N'FACEBOOK', NULL, N'_blank', N'https://www.facebook.com/0.anhsang.0', NULL, 2, 5, N'fa fa-facebook', N'_facebook', 1)
INSERT [dbo].[MenuManager] ([id], [name], [metaName], [target], [link], [Submenu], [Possition], [CategoryMenu], [ItemIcon], [Description], [Status]) VALUES (62, N'TWITTER', NULL, N'_blank', N'https://twitter.com/Zz_Zz_Zz_MTIT', NULL, 3, 5, N'fa fa-twitter', N'_twitter', 1)
SET IDENTITY_INSERT [dbo].[MenuManager] OFF
/****** Object:  Table [dbo].[Products]    Script Date: 08/28/2016 13:14:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nameProduct] [nvarchar](100) NULL,
	[metaNameProduct] [nvarchar](100) NULL,
	[codeProduct] [varchar](50) NULL,
	[nameCompany] [nvarchar](50) NULL,
	[dateCreated] [date] NULL,
	[dateImport] [date] NULL,
	[Country] [nvarchar](50) NULL,
	[color] [nvarchar](50) NULL,
	[image_large] [nvarchar](200) NULL,
	[image_normal] [nvarchar](200) NULL,
	[image_small] [nvarchar](200) NULL,
	[alt] [nvarchar](50) NULL,
	[price] [decimal](18, 0) NULL,
	[material] [nvarchar](50) NULL,
	[count] [int] NULL,
	[Description] [ntext] NULL,
	[rank] [float] NULL,
	[Order] [nchar](10) NULL,
	[type] [int] NULL,
	[CategoryID] [int] NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (1, N'Váy dài hồng cánh', N'Vay-dai-hong-canh', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/sanpham/sanpham1.jpg', NULL, NULL, N'/', CAST(9900000 AS Decimal(18, 0)), N'Vải thô cứng khô', 14, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 14, 3, N'hot')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (2, N'Áo gió thời trang', N'ao-gio-thoi-trang', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/sanpham/sanpham2.jpg', NULL, NULL, N'/', CAST(9400000 AS Decimal(18, 0)), N'Vải thô cứng khô', 16, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 14, 6, N'hot')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (3, N'Đầm ngắn đen', N'dam-ngan-den', NULL, N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), NULL, N'CHINA', N'#0080c0', N'/Galery/galery/sanpham/sanpham3.jpg', NULL, NULL, N'/', CAST(4200000 AS Decimal(18, 0)), N'Vải thô cứng khô', 12, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, NULL, 16, 3, N'hot')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (4, N'Váy rất đẹp ko tên', N'Vay-rat-dep-ko-ten', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/sanpham/sanpham4.jpg', NULL, NULL, N'/', CAST(256000 AS Decimal(18, 0)), N'Vải thô cứng khô', 13, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 17, 5, N'hot')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (5, N'Váy xanh rách', N'Vay-xanh-rach-nguc', NULL, N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), NULL, N'CHINA', N'#80ff80', N'/Galery/galery/sanpham/sanpham5.jpg', NULL, NULL, N'/', CAST(456000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, NULL, 16, 5, N'hot')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (6, N'Váy tím ngắn', N'Vay-tim-ngan', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/sanpham/sanpham6.jpg', NULL, NULL, N'/', CAST(2300000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 17, 6, N'hot')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (8, N'Váy xinh', N'Vay-xinh', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/hang/product(1).jpg', NULL, NULL, N'/', CAST(2309000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 16, 4, N'sale')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (9, N'Quần rách', N'Quan-rach', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/hang/product(2).jpg', NULL, NULL, N'/', CAST(2309000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 18, 4, N'sale')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (10, N'Áo rách', N'ao-rach', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/hang/product(3).jpg', NULL, NULL, N'/', CAST(2309000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 18, 6, N'sale')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (11, N'Kiếm divice', N'Kiem-divice', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/hang/product(4).jpg', NULL, NULL, N'/', CAST(2309000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 16, 5, N'sale')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (12, N'Á chưa dài', N'a-chua-dai', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/hang/product(5).jpg', NULL, NULL, N'/', CAST(2309000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 14, 5, N'sale')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (13, N'Quần dài rồi', N'Quan-dai-roi', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/hang/product(6).jpg', NULL, NULL, N'/', CAST(2309000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 17, 3, N'sale')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (14, N'Áo thần điêu', N'ao-than-dieu', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/hang/product(7).jpg', NULL, NULL, N'/', CAST(2309000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 15, 4, N'sale')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (15, N'Quần trưởng lão', N'Quan-truong-lao', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/hang/product(8).jpg', NULL, NULL, N'/', CAST(2309000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 14, 4, N'sale')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (16, N'Áo dài tay Viper', N'ao-dai-tay-Viper', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/hang/product(9).jpg', NULL, NULL, N'thieu anh', CAST(2309000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 17, 5, N'sale')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (17, N'Climmer Cape', N'Climmer-Cape', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/hang/product(10).jpg', NULL, NULL, N'/', CAST(2309000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 17, 6, N'sale')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (18, N'Chiếu trên', N'Chieu-tren', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/hang/product(11).jpg', NULL, NULL, N'/', CAST(2309000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 15, 5, N'sale')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (19, N'Quần ngắn', N'Quan-ngan', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/hang/product(12).jpg', NULL, NULL, N'/', CAST(2309000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 15, 4, N'sale')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (20, N'Quần dài hơn áo', N'Quan-dai-hon-ao', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/hang/product(13).jpg', NULL, NULL, N'/', CAST(2309000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 18, 6, N'sale')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (21, N'Áo dài hơn quần', N'ao-dai-hon-quan', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/hang/product(14).jpg', NULL, NULL, N'/', CAST(2309000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 16, 4, N'sale')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (22, N'Áo phú quý', N'ao-phu-quy', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/hang/product(15).jpg', NULL, NULL, N'/', CAST(2309000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 18, 5, N'sale')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (23, N'Quần tài lộc', N'Quan-tai-loc', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/hang/product(16).jpg', NULL, NULL, N'/', CAST(2309000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 15, 5, N'sale')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (25, N'Áo thu Quý tộc', N'ao-thu-Quy-toc', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/recommend/recommend1.jpg', NULL, NULL, N'/', CAST(2340000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 18, 4, N'')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (26, N'Áo Đông thôn dã', N'ao-dong-thon-da', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/recommend/recommend2.jpg', NULL, NULL, N'/', CAST(21330000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 18, 3, N'')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (27, N'Áo rách thời trang', N'ao-rach-thoi-trang', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/recommend/recommend3.jpg', NULL, NULL, N'/', CAST(210000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 15, 6, N'')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (28, N'Áo lõi bông Trung Quốc', N'ao-lanh-loi-bong-Trung-Quoc', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/recommend/recommend4.jpg', NULL, NULL, N'/', CAST(58000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 15, 4, N'')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (29, N'Áo ngắn hạ nóng', N'ao-ngan-ha-nong', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/recommend/recommend5.jpg', NULL, NULL, N'/', CAST(52000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 15, 5, N'')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (30, N'Áo rách hạ về', N'ao-rach-ha-ve', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/recommend/recommend6.jpg', NULL, NULL, N'/', CAST(320000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 15, 3, N'')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (31, N'Áo donkihote', N'ao-donkihote', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/recommend/recommend7.jpg', NULL, NULL, N'/', CAST(120000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 17, 5, N'')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (32, N'Áo Mạnh Tể hàng dõm', N'ao-Manh-Te-hang-dom', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/recommend/recommend8.jpg', NULL, NULL, N'/', CAST(250000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 15, 6, N'')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (33, N'Váy hàn xẻng', N'Vay-han-xeng', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/recommend/recommend9.jpg', NULL, NULL, N'/', CAST(215000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 14, 4, N'')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (34, N'Váy ngắn ', N'Vay-ngan-khong-the-ngan-hon', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/recommend/recommend10.jpg', NULL, NULL, N'/', CAST(325000 AS Decimal(18, 0)), N'Vải thô cứng khô', 18, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 15, 3, N'')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (35, N'Váy siêu rách', N'Vay-sieu-rach', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/recommend/recommend1.jpg', NULL, NULL, N'/', CAST(780000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 14, 6, N'')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (36, N'Váy quý tộc Anh Quốc', N'Vay-quy-toc-Anh-Quoc', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/recommend/recommend2.jpg', NULL, NULL, N'/', CAST(360000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 16, 5, N'')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (37, N'Công sở Pro', N'Cong-so-Pro', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/recommend/recommend5.jpg', NULL, NULL, N'/', CAST(215000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 14, 3, N'')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (38, N'Công sở ngắn cho nữ', N'Cong-so-ngan-cho-nu', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/recommend/recommend9.jpg', NULL, NULL, N'/', CAST(231000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 14, 6, N'')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (39, N'Công sở dài cho nam', N'Cong-so-dai-cho-nam', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/recommend/recommend8.jpg', NULL, NULL, N'/', CAST(870000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 16, 3, N'')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (40, N'Công sở Lion', N'Cong-so-Lion', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/recommend/recommend6.jpg', NULL, NULL, N'/', CAST(120000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 18, 5, N'')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (41, N'Áo cặp rách hồng', N'ao-cap-rach-hong', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/recommend/recommend4.jpg', NULL, NULL, N'/', CAST(230000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 15, 3, N'')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (42, N'Quần đôi siu ngắn', N'Quan-doi-siu-ngan', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/recommend/recommend2.jpg', NULL, NULL, N'/', CAST(23000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 17, 3, N'')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (43, N'Chiếc lá cuối thu', N'Chiec-la-cuoi-thu', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/recommend/recommend1.jpg', NULL, NULL, N'/', CAST(201000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 18, 6, N'')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (44, N'Siêu nhân', N'Sieu-nhan', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/recommend/recommend9.jpg', NULL, NULL, N'/', CAST(123000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 17, 5, N'')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (45, N'Quần ống loe nhỏ', N'Quan-ong-loe-nho', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/sanpham/sanpham6.jpg', NULL, NULL, N'/', CAST(210000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 16, 4, N'hot')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (46, N'Quần nhỏ hơn', N'Quan-nho-hon', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/sanpham/sanpham1.jpg', NULL, NULL, N'/', CAST(230000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 15, 4, N'hot')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (47, N'Quần đùi Mạnh Tể', N'Quan-dui-Manh-Te', N'', N'MG_COMPANY', CAST(0x3D3B0B00 AS Date), CAST(0xFF1D0B00 AS Date), N'CHINA', N'#d9534f', N'/Galery/galery/sanpham/sanpham4.jpg', NULL, NULL, N'/', CAST(300000 AS Decimal(18, 0)), N'Vải thô cứng khô', 15, N'Áo quần đẹp nhất là tại đây thời trang tuyệt nhất tại đây!!', 47, N'          ', 15, 5, N'hot')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (63, N'Váy xám Hàn xẻng', N'Vay-xam-Han-xeng', N'QQHH', N'MG_COMPANY', CAST(0x373B0B00 AS Date), NULL, N'VN', N'#9bb771', N'/Galery/images/f98aa9b7-56f5-41fd-9696-a92dc027a5da.png', N'/Galery/images/5fe778ff-770c-45b7-b8a0-52de8d145a85.jpg', N'/Galery/images/1f811fbb-8dea-40e4-8ff6-f1ce26f106a3.jpg', N'/456', CAST(100000 AS Decimal(18, 0)), N'vải thô', 10, N'Là loại váy xuất xứ từ đất nước Hàn xẻng', 123, NULL, 15, 4, N'hot')
INSERT [dbo].[Products] ([id], [nameProduct], [metaNameProduct], [codeProduct], [nameCompany], [dateCreated], [dateImport], [Country], [color], [image_large], [image_normal], [image_small], [alt], [price], [material], [count], [Description], [rank], [Order], [type], [CategoryID], [Status]) VALUES (83, N'ádas', N'adas', NULL, NULL, CAST(0x4F3B0B00 AS Date), NULL, NULL, N'#000000', N'/Galery/images/a67722e1-dc07-4762-a3ad-e605dc5ee453.jpg', N'/Galery/images/9642bc01-4a46-4c1e-ad07-ac9f69320fb5.jpg', N'/Galery/images/385a819b-8acf-4508-9392-b84e4a3e73bd.jpg', NULL, NULL, NULL, 4, NULL, NULL, NULL, 16, 5, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
/****** Object:  StoredProcedure [dbo].[_getPermisstion]    Script Date: 08/28/2016 13:14:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[_getPermisstion](@str varchar(20))
as
begin
	select distinct b.id,b.name from Credentials a
	join UsersGroup u on a.GroupUserId=@str
	join Roles b on a.RoleId=b.id
end

exec [_getPermisstion] 'MEMBER'
GO
/****** Object:  StoredProcedure [dbo].[_listCategory]    Script Date: 08/28/2016 13:14:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[_listCategory]
as
select name from MenuManager
GO
/****** Object:  StoredProcedure [dbo].[_getSubmenu]    Script Date: 08/28/2016 13:14:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[_getSubmenu]
as
select * from MenuManager where Submenu is not null order by Possition asc
GO
/****** Object:  StoredProcedure [dbo].[_getAllMenu]    Script Date: 08/28/2016 13:14:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[_getAllMenu](@_id int)
as 
begin
if(@_id=0)
select * from MenuManager order by Possition asc
else
select * from MenuManager where CategoryMenu=@_id order by Possition asc
end
GO
/****** Object:  View [dbo].[View_Sale]    Script Date: 08/28/2016 13:14:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Sale]
AS
SELECT     TOP (12) nameProduct, codeProduct, nameCompany, dateCreated, dateImport, Country, image_large, color, image_normal, image_small, price, material, count, Description, rank, [Order], type, 
                      Status, alt
FROM         dbo.Products
WHERE     (Status LIKE 'Sale')
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
         Begin Table = "Products"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 232
               Right = 239
            End
            DisplayFlags = 280
            TopColumn = 9
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Sale'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Sale'
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 08/28/2016 13:14:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CustomerID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[count] [int] NULL,
	[dateBought] [date] NULL,
	[Price] [decimal](18, 0) NULL,
	[Status] [bit] NULL,
	[payMethod] [nchar](10) NULL,
 CONSTRAINT [PK_Cart_1] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cart] ([CustomerID], [ProductID], [count], [dateBought], [Price], [Status], [payMethod]) VALUES (1, 1, 1, NULL, CAST(9900000 AS Decimal(18, 0)), 0, NULL)
INSERT [dbo].[Cart] ([CustomerID], [ProductID], [count], [dateBought], [Price], [Status], [payMethod]) VALUES (1, 2, 1, NULL, CAST(9400000 AS Decimal(18, 0)), 0, NULL)
INSERT [dbo].[Cart] ([CustomerID], [ProductID], [count], [dateBought], [Price], [Status], [payMethod]) VALUES (1, 3, 1, CAST(0x813B0B00 AS Date), CAST(4200000 AS Decimal(18, 0)), 0, NULL)
INSERT [dbo].[Cart] ([CustomerID], [ProductID], [count], [dateBought], [Price], [Status], [payMethod]) VALUES (6, 1, 1, NULL, CAST(9900000 AS Decimal(18, 0)), 0, N'vnd       ')
INSERT [dbo].[Cart] ([CustomerID], [ProductID], [count], [dateBought], [Price], [Status], [payMethod]) VALUES (7, 1, 1, NULL, CAST(9900000 AS Decimal(18, 0)), 0, N'vnd       ')
INSERT [dbo].[Cart] ([CustomerID], [ProductID], [count], [dateBought], [Price], [Status], [payMethod]) VALUES (7, 2, 1, NULL, CAST(9400000 AS Decimal(18, 0)), 0, N'vnd       ')
INSERT [dbo].[Cart] ([CustomerID], [ProductID], [count], [dateBought], [Price], [Status], [payMethod]) VALUES (8, 1, 1, NULL, CAST(9900000 AS Decimal(18, 0)), 0, N'vnd       ')
INSERT [dbo].[Cart] ([CustomerID], [ProductID], [count], [dateBought], [Price], [Status], [payMethod]) VALUES (8, 2, 1, NULL, CAST(9400000 AS Decimal(18, 0)), 0, N'vnd       ')
INSERT [dbo].[Cart] ([CustomerID], [ProductID], [count], [dateBought], [Price], [Status], [payMethod]) VALUES (8, 26, 1, NULL, CAST(21330000 AS Decimal(18, 0)), 0, N'vnd       ')
INSERT [dbo].[Cart] ([CustomerID], [ProductID], [count], [dateBought], [Price], [Status], [payMethod]) VALUES (9, 1, 1, NULL, CAST(9900000 AS Decimal(18, 0)), 0, N'vnd       ')
INSERT [dbo].[Cart] ([CustomerID], [ProductID], [count], [dateBought], [Price], [Status], [payMethod]) VALUES (11, 17, 1, NULL, CAST(2309000 AS Decimal(18, 0)), 0, N'vnd       ')
INSERT [dbo].[Cart] ([CustomerID], [ProductID], [count], [dateBought], [Price], [Status], [payMethod]) VALUES (12, 2, 1, NULL, CAST(9400000 AS Decimal(18, 0)), 0, N'vnd       ')
INSERT [dbo].[Cart] ([CustomerID], [ProductID], [count], [dateBought], [Price], [Status], [payMethod]) VALUES (13, 22, 1, NULL, CAST(2309000 AS Decimal(18, 0)), 0, N'vnd       ')
INSERT [dbo].[Cart] ([CustomerID], [ProductID], [count], [dateBought], [Price], [Status], [payMethod]) VALUES (14, 4, 1, NULL, CAST(256000 AS Decimal(18, 0)), 0, N'vnd       ')
INSERT [dbo].[Cart] ([CustomerID], [ProductID], [count], [dateBought], [Price], [Status], [payMethod]) VALUES (15, 17, 1, NULL, CAST(2309000 AS Decimal(18, 0)), 0, N'vnd       ')
INSERT [dbo].[Cart] ([CustomerID], [ProductID], [count], [dateBought], [Price], [Status], [payMethod]) VALUES (16, 18, 1, NULL, CAST(2309000 AS Decimal(18, 0)), 0, N'vnd       ')
INSERT [dbo].[Cart] ([CustomerID], [ProductID], [count], [dateBought], [Price], [Status], [payMethod]) VALUES (18, 1, 1, CAST(0x603B0B00 AS Date), CAST(9900000 AS Decimal(18, 0)), 0, NULL)
INSERT [dbo].[Cart] ([CustomerID], [ProductID], [count], [dateBought], [Price], [Status], [payMethod]) VALUES (21, 2, 1, CAST(0x6F3B0B00 AS Date), CAST(9400000 AS Decimal(18, 0)), 0, NULL)
INSERT [dbo].[Cart] ([CustomerID], [ProductID], [count], [dateBought], [Price], [Status], [payMethod]) VALUES (21, 3, 1, CAST(0x6F3B0B00 AS Date), CAST(4200000 AS Decimal(18, 0)), 0, NULL)
INSERT [dbo].[Cart] ([CustomerID], [ProductID], [count], [dateBought], [Price], [Status], [payMethod]) VALUES (21, 4, 1, CAST(0x6F3B0B00 AS Date), CAST(256000 AS Decimal(18, 0)), 0, NULL)
INSERT [dbo].[Cart] ([CustomerID], [ProductID], [count], [dateBought], [Price], [Status], [payMethod]) VALUES (22, 2, 1, CAST(0x813B0B00 AS Date), CAST(9400000 AS Decimal(18, 0)), 0, NULL)
INSERT [dbo].[Cart] ([CustomerID], [ProductID], [count], [dateBought], [Price], [Status], [payMethod]) VALUES (23, 2, 1, CAST(0xC93B0B00 AS Date), CAST(9400000 AS Decimal(18, 0)), 0, NULL)
INSERT [dbo].[Cart] ([CustomerID], [ProductID], [count], [dateBought], [Price], [Status], [payMethod]) VALUES (23, 3, 1, CAST(0xC93B0B00 AS Date), CAST(4200000 AS Decimal(18, 0)), 0, NULL)
INSERT [dbo].[Cart] ([CustomerID], [ProductID], [count], [dateBought], [Price], [Status], [payMethod]) VALUES (23, 4, 1, CAST(0xC93B0B00 AS Date), CAST(256000 AS Decimal(18, 0)), 0, NULL)
/****** Object:  StoredProcedure [dbo].[_timkiem]    Script Date: 08/28/2016 13:14:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[_timkiem](@key nvarchar(50))
as
begin
	select top 6 * from products where 
	nameProduct like '%'+@key+'%'
end
GO
/****** Object:  StoredProcedure [dbo].[_getSale]    Script Date: 08/28/2016 13:14:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[_getSale]
as
Select top 16 * from Products where Status like 'sale' order by id DESC
GO
/****** Object:  StoredProcedure [dbo].[_getRecommend]    Script Date: 08/28/2016 13:14:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[_getRecommend]
as
begin
	select* from Products 
	where type=14 or type=15 or type=16 or type=17 or type=18
	order by type ASC
end
GO
/****** Object:  StoredProcedure [dbo].[_getListMenu]    Script Date: 08/28/2016 13:14:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[_getListMenu]
(@id int,@key nvarchar(50))
as
begin
if(@key='')
	if(@id=0)
	select * from Products
	else
	select * from Products where CategoryID=@id
else
select * from Products where nameProduct like'%'+@key+'%'
end
GO
/****** Object:  StoredProcedure [dbo].[_getHot]    Script Date: 08/28/2016 13:14:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[_getHot]
as
Select * from Products where Status like 'hot' order by id DESC
GO
/****** Object:  StoredProcedure [dbo].[_getOrder]    Script Date: 08/28/2016 13:14:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[_getOrder]
as
begin 
select  
	id,
	nameCustomer,
	age,
	sex,
	phoneNumber,
	Email,
	c.countProduct
from Customer,
	(select CustomerID as _id,COUNT(ProductID) as countProduct
		from cart 
		where cart.status=0
		group by CustomerID )as c
		where _id=Customer.id
end

exec _getOrder
GO
/****** Object:  Default [DF_MenuCategory_Area]    Script Date: 08/28/2016 13:14:27 ******/
ALTER TABLE [dbo].[MenuCategory] ADD  CONSTRAINT [DF_MenuCategory_Area]  DEFAULT ('client') FOR [Area]
GO
/****** Object:  Default [DF_MenuCategory_Status]    Script Date: 08/28/2016 13:14:27 ******/
ALTER TABLE [dbo].[MenuCategory] ADD  CONSTRAINT [DF_MenuCategory_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_Feedback_Status]    Script Date: 08/28/2016 13:14:27 ******/
ALTER TABLE [dbo].[Feedback] ADD  CONSTRAINT [DF_Feedback_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_Customer_Description]    Script Date: 08/28/2016 13:14:27 ******/
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_Description]  DEFAULT (N'Không có yêu cầu thêm.Đang xử lý') FOR [Description]
GO
/****** Object:  Default [DF_User_GroupId]    Script Date: 08/28/2016 13:14:27 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_GroupId]  DEFAULT ('MEMBER') FOR [GroupId]
GO
/****** Object:  Default [DF_MenuManager_target]    Script Date: 08/28/2016 13:14:27 ******/
ALTER TABLE [dbo].[MenuManager] ADD  CONSTRAINT [DF_MenuManager_target]  DEFAULT (N'_self') FOR [target]
GO
/****** Object:  Default [DF_MenuManager_Status]    Script Date: 08/28/2016 13:14:27 ******/
ALTER TABLE [dbo].[MenuManager] ADD  CONSTRAINT [DF_MenuManager_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_Cart_Status]    Script Date: 08/28/2016 13:14:40 ******/
ALTER TABLE [dbo].[Cart] ADD  CONSTRAINT [DF_Cart_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_Cart_payMethod]    Script Date: 08/28/2016 13:14:40 ******/
ALTER TABLE [dbo].[Cart] ADD  CONSTRAINT [DF_Cart_payMethod]  DEFAULT (N'vnd') FOR [payMethod]
GO
/****** Object:  ForeignKey [FK_Credentials_Roles]    Script Date: 08/28/2016 13:14:27 ******/
ALTER TABLE [dbo].[Credentials]  WITH CHECK ADD  CONSTRAINT [FK_Credentials_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([id])
GO
ALTER TABLE [dbo].[Credentials] CHECK CONSTRAINT [FK_Credentials_Roles]
GO
/****** Object:  ForeignKey [FK_Credentials_UsersGroup]    Script Date: 08/28/2016 13:14:27 ******/
ALTER TABLE [dbo].[Credentials]  WITH CHECK ADD  CONSTRAINT [FK_Credentials_UsersGroup] FOREIGN KEY([GroupUserId])
REFERENCES [dbo].[UsersGroup] ([id])
GO
ALTER TABLE [dbo].[Credentials] CHECK CONSTRAINT [FK_Credentials_UsersGroup]
GO
/****** Object:  ForeignKey [FK_User_UsersGroup]    Script Date: 08/28/2016 13:14:27 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UsersGroup] FOREIGN KEY([GroupId])
REFERENCES [dbo].[UsersGroup] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UsersGroup]
GO
/****** Object:  ForeignKey [FK_MenuManager_MenuCategory]    Script Date: 08/28/2016 13:14:27 ******/
ALTER TABLE [dbo].[MenuManager]  WITH CHECK ADD  CONSTRAINT [FK_MenuManager_MenuCategory] FOREIGN KEY([CategoryMenu])
REFERENCES [dbo].[MenuCategory] ([id])
GO
ALTER TABLE [dbo].[MenuManager] CHECK CONSTRAINT [FK_MenuManager_MenuCategory]
GO
/****** Object:  ForeignKey [FK_MenuManager_MenuManager]    Script Date: 08/28/2016 13:14:27 ******/
ALTER TABLE [dbo].[MenuManager]  WITH CHECK ADD  CONSTRAINT [FK_MenuManager_MenuManager] FOREIGN KEY([Submenu])
REFERENCES [dbo].[MenuManager] ([id])
GO
ALTER TABLE [dbo].[MenuManager] CHECK CONSTRAINT [FK_MenuManager_MenuManager]
GO
/****** Object:  ForeignKey [FK_Products_MenuManager]    Script Date: 08/28/2016 13:14:27 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_MenuManager] FOREIGN KEY([type])
REFERENCES [dbo].[MenuManager] ([id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_MenuManager]
GO
/****** Object:  ForeignKey [FK_Products_MenuManager1]    Script Date: 08/28/2016 13:14:27 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_MenuManager1] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[MenuManager] ([id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_MenuManager1]
GO
/****** Object:  ForeignKey [FK_Cart_Customer]    Script Date: 08/28/2016 13:14:40 ******/
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Customer]
GO
/****** Object:  ForeignKey [FK_Cart_Products]    Script Date: 08/28/2016 13:14:40 ******/
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Products]
GO
