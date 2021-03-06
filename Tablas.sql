USE [Mantenimiento]
GO
/****** Object:  Table [dbo].[capacitaciones]    Script Date: 12/7/2021 21:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[capacitaciones](
	[id_capacitaciones] [int] NOT NULL,
	[descripcion] [varchar](80) NULL,
	[fecha] [date] NULL,
	[horas] [int] NULL,
	[nombre_empresa] [varchar](80) NULL,
	[id_tecnicopk] [int] NULL,
	[precio] [decimal](6, 2) NULL,
 CONSTRAINT [PK_capacitaciones] PRIMARY KEY CLUSTERED 
(
	[id_capacitaciones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 12/7/2021 21:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[id] [int] NOT NULL,
	[cedula] [varchar](50) NULL,
	[nombres] [varchar](50) NULL,
	[apellidos] [varchar](50) NULL,
	[direccion] [varchar](50) NULL,
	[telefono] [int] NULL,
	[fecha_nacimiento] [date] NULL,
	[genero] [varchar](50) NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[compra_repuesto]    Script Date: 12/7/2021 21:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[compra_repuesto](
	[idcompra] [int] NOT NULL,
	[id_proveedorpk] [int] NULL,
	[fecha_compra] [date] NULL,
	[Stock] [int] NULL,
	[Precio] [decimal](6, 2) NULL,
	[año] [int] NULL,
	[codigopk] [int] NULL,
 CONSTRAINT [PK_compra_repuesto] PRIMARY KEY CLUSTERED 
(
	[idcompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[especialidad_tecnicos]    Script Date: 12/7/2021 21:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[especialidad_tecnicos](
	[id_especialidad] [int] NOT NULL,
	[años_experiencia] [int] NULL,
	[id_tecnicopk] [int] NULL,
	[id_especialpk] [int] NULL,
 CONSTRAINT [PK_especialidad_tecnicos] PRIMARY KEY CLUSTERED 
(
	[id_especialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[especialidades]    Script Date: 12/7/2021 21:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[especialidades](
	[id_especial] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_especialidades] PRIMARY KEY CLUSTERED 
(
	[id_especial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[herramientas]    Script Date: 12/7/2021 21:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[herramientas](
	[id_herramientas] [int] NOT NULL,
	[id_tipoH] [int] NULL,
	[id_mantenimientopk] [int] NULL,
 CONSTRAINT [PK_herramientas] PRIMARY KEY CLUSTERED 
(
	[id_herramientas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mantenimiento]    Script Date: 12/7/2021 21:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mantenimiento](
	[id_mantenimiento] [int] NOT NULL,
	[descripcion_mante] [varchar](90) NULL,
	[fecha] [date] NULL,
	[Estado] [varchar](90) NULL,
	[costo] [decimal](6, 2) NULL,
	[id_repuestopk] [int] NULL,
	[id_tipoServiciopk] [int] NULL,
	[id_tecnicopk] [int] NULL,
	[estado_final] [varchar](60) NULL,
	[id_clientepk] [int] NULL,
 CONSTRAINT [PK_mantenimiento] PRIMARY KEY CLUSTERED 
(
	[id_mantenimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedor]    Script Date: 12/7/2021 21:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedor](
	[id_proveedor] [int] NOT NULL,
	[Nombre_proveedor] [varchar](70) NULL,
	[direccion] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[ruc] [varchar](50) NULL,
 CONSTRAINT [PK_proveedor] PRIMARY KEY CLUSTERED 
(
	[id_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[repuestos]    Script Date: 12/7/2021 21:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[repuestos](
	[codigo] [int] NOT NULL,
	[descripcion] [varchar](70) NULL,
	[marca] [varchar](50) NULL,
	[stock] [int] NULL,
 CONSTRAINT [PK_repuestos] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[solicitud_servicios]    Script Date: 12/7/2021 21:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[solicitud_servicios](
	[id_servicios] [int] NOT NULL,
	[fecha_ingreso] [date] NULL,
	[fecha_salida] [date] NULL,
	[estado_equipo] [varchar](50) NULL,
	[caracteristica_equipo_Ingresado] [varchar](80) NULL,
	[id_clientepk] [int] NULL,
	[id_tipoServiciopk] [int] NULL,
 CONSTRAINT [PK_solicitud_servicios] PRIMARY KEY CLUSTERED 
(
	[id_servicios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tecnicos]    Script Date: 12/7/2021 21:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tecnicos](
	[id_tecnicos] [int] NOT NULL,
	[cedula_te] [varchar](10) NULL,
	[nombres] [varchar](50) NULL,
	[apellidos] [varchar](50) NULL,
	[direccion] [varchar](50) NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_tecnicos] PRIMARY KEY CLUSTERED 
(
	[id_tecnicos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_herramientas]    Script Date: 12/7/2021 21:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_herramientas](
	[id_tipoH] [int] NOT NULL,
	[nombre_herramienta] [varchar](80) NULL,
 CONSTRAINT [PK_tipo_herramientas] PRIMARY KEY CLUSTERED 
(
	[id_tipoH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_servicio]    Script Date: 12/7/2021 21:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_servicio](
	[id_tipoServicio] [int] NOT NULL,
	[nombre_servicio] [varchar](50) NULL,
	[precios] [decimal](6, 2) NULL,
 CONSTRAINT [PK_tipo_servicio] PRIMARY KEY CLUSTERED 
(
	[id_tipoServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[capacitaciones]  WITH CHECK ADD  CONSTRAINT [FK_capacitaciones_tecnicos] FOREIGN KEY([id_tecnicopk])
REFERENCES [dbo].[tecnicos] ([id_tecnicos])
GO
ALTER TABLE [dbo].[capacitaciones] CHECK CONSTRAINT [FK_capacitaciones_tecnicos]
GO
ALTER TABLE [dbo].[compra_repuesto]  WITH CHECK ADD  CONSTRAINT [FK_compra_repuesto_proveedor] FOREIGN KEY([id_proveedorpk])
REFERENCES [dbo].[proveedor] ([id_proveedor])
GO
ALTER TABLE [dbo].[compra_repuesto] CHECK CONSTRAINT [FK_compra_repuesto_proveedor]
GO
ALTER TABLE [dbo].[compra_repuesto]  WITH CHECK ADD  CONSTRAINT [FK_compra_repuesto_repuestos] FOREIGN KEY([codigopk])
REFERENCES [dbo].[repuestos] ([codigo])
GO
ALTER TABLE [dbo].[compra_repuesto] CHECK CONSTRAINT [FK_compra_repuesto_repuestos]
GO
ALTER TABLE [dbo].[especialidad_tecnicos]  WITH CHECK ADD  CONSTRAINT [FK_especialidad_tecnicos_especialidades] FOREIGN KEY([id_especialpk])
REFERENCES [dbo].[especialidades] ([id_especial])
GO
ALTER TABLE [dbo].[especialidad_tecnicos] CHECK CONSTRAINT [FK_especialidad_tecnicos_especialidades]
GO
ALTER TABLE [dbo].[especialidad_tecnicos]  WITH CHECK ADD  CONSTRAINT [FK_especialidad_tecnicos_tecnicos] FOREIGN KEY([id_tecnicopk])
REFERENCES [dbo].[tecnicos] ([id_tecnicos])
GO
ALTER TABLE [dbo].[especialidad_tecnicos] CHECK CONSTRAINT [FK_especialidad_tecnicos_tecnicos]
GO
ALTER TABLE [dbo].[herramientas]  WITH CHECK ADD  CONSTRAINT [FK_herramientas_herramientas] FOREIGN KEY([id_herramientas])
REFERENCES [dbo].[herramientas] ([id_herramientas])
GO
ALTER TABLE [dbo].[herramientas] CHECK CONSTRAINT [FK_herramientas_herramientas]
GO
ALTER TABLE [dbo].[herramientas]  WITH CHECK ADD  CONSTRAINT [FK_herramientas_mantenimiento] FOREIGN KEY([id_mantenimientopk])
REFERENCES [dbo].[mantenimiento] ([id_mantenimiento])
GO
ALTER TABLE [dbo].[herramientas] CHECK CONSTRAINT [FK_herramientas_mantenimiento]
GO
ALTER TABLE [dbo].[herramientas]  WITH CHECK ADD  CONSTRAINT [FK_herramientas_tipo_herramientas] FOREIGN KEY([id_tipoH])
REFERENCES [dbo].[tipo_herramientas] ([id_tipoH])
GO
ALTER TABLE [dbo].[herramientas] CHECK CONSTRAINT [FK_herramientas_tipo_herramientas]
GO
ALTER TABLE [dbo].[mantenimiento]  WITH CHECK ADD  CONSTRAINT [FK_mantenimiento_cliente] FOREIGN KEY([id_clientepk])
REFERENCES [dbo].[cliente] ([id])
GO
ALTER TABLE [dbo].[mantenimiento] CHECK CONSTRAINT [FK_mantenimiento_cliente]
GO
ALTER TABLE [dbo].[mantenimiento]  WITH CHECK ADD  CONSTRAINT [FK_mantenimiento_repuestos] FOREIGN KEY([id_repuestopk])
REFERENCES [dbo].[repuestos] ([codigo])
GO
ALTER TABLE [dbo].[mantenimiento] CHECK CONSTRAINT [FK_mantenimiento_repuestos]
GO
ALTER TABLE [dbo].[mantenimiento]  WITH CHECK ADD  CONSTRAINT [FK_mantenimiento_tecnicos] FOREIGN KEY([id_tecnicopk])
REFERENCES [dbo].[tecnicos] ([id_tecnicos])
GO
ALTER TABLE [dbo].[mantenimiento] CHECK CONSTRAINT [FK_mantenimiento_tecnicos]
GO
ALTER TABLE [dbo].[mantenimiento]  WITH CHECK ADD  CONSTRAINT [FK_mantenimiento_tipo_servicio] FOREIGN KEY([id_tipoServiciopk])
REFERENCES [dbo].[tipo_servicio] ([id_tipoServicio])
GO
ALTER TABLE [dbo].[mantenimiento] CHECK CONSTRAINT [FK_mantenimiento_tipo_servicio]
GO
ALTER TABLE [dbo].[solicitud_servicios]  WITH CHECK ADD  CONSTRAINT [FK_solicitud_servicios_cliente] FOREIGN KEY([id_clientepk])
REFERENCES [dbo].[cliente] ([id])
GO
ALTER TABLE [dbo].[solicitud_servicios] CHECK CONSTRAINT [FK_solicitud_servicios_cliente]
GO
ALTER TABLE [dbo].[solicitud_servicios]  WITH CHECK ADD  CONSTRAINT [FK_solicitud_servicios_tipo_servicio] FOREIGN KEY([id_tipoServiciopk])
REFERENCES [dbo].[tipo_servicio] ([id_tipoServicio])
GO
ALTER TABLE [dbo].[solicitud_servicios] CHECK CONSTRAINT [FK_solicitud_servicios_tipo_servicio]
GO

--fin
