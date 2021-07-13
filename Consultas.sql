--Por los distintos técnicos Cuantos por de cada tipo existen--
select case
when id_especialpk=1 then 'Especialidad en Electronica'
when id_especialpk=2 then 'Especialidad en informatico'
when id_especialpk=3 then 'Especialidad en Automotris'
when id_especialpk=4 then 'Especialidad en ebanista'
when id_especialpk=5 then 'Especialidad en industrial'
when id_especialpk=6 then 'Especialidad en Maquinaria agricola' end as especialidad,
count (id_especialpk) as numero_tecnicos
from especialidad_tecnicos
group by id_especialpk

--listar los tecnicos por  nombres, es decir cuantos mantenimientos no satisfactorio  y satisfactorio realizo--
select nombres , count(estado_final)  as Satisfactorio from mantenimiento inner join tecnicos
on id_tecnicopk= id_tecnicos  where estado_final='No Satisfactorio'group by nombres
select nombres , count(estado_final)  as No_Satisfactorio from mantenimiento inner join tecnicos
on id_tecnicopk= id_tecnicos  where estado_final='Satisfactorio'group by nombres
select nombres,fecha,estado_final from mantenimiento c inner join tecnicos r on id_tecnicopk=id_tecnicos 

--Por cada empresa proveedora listado cuanto en dinero se ha comprado por año --
select case 
when id_proveedorpk=1 then 'Pc-home'
when id_proveedorpk=2 then 'Ecomotos'
when id_proveedorpk=3 then 'Gym-Express'
when id_proveedorpk=4 then 'Corisa-SA'
when id_proveedorpk=5 then 'Amazon'
end as Proveedor,

sum (Precio) as totalcompra 
from compra_repuesto  where año='2020'
group by id_proveedorpk
select c.año,r.descripcion,c.Precio,p.Nombre_proveedor from compra_repuesto c inner join repuestos r on codigo=codigopk 
inner join proveedor p on id_proveedor=id_proveedorpk where año='2020'

select case 
when id_proveedorpk=1 then 'Pc-home'
when id_proveedorpk=2 then 'Ecomotos'
when id_proveedorpk=3 then 'Gym-Express'
when id_proveedorpk=4 then 'Corisa-SA'
when id_proveedorpk=5 then 'Amazon'
end as Proveedor,

sum (Precio) as totalcompra 
from compra_repuesto  where año='2021'
group by id_proveedorpk
select c.año,r.descripcion,c.Precio,p.Nombre_proveedor from compra_repuesto c inner join repuestos r on codigo=codigopk 
inner join proveedor p on id_proveedor=id_proveedorpk where año='2021'

--Por cada empresa proveedora listado cuanto en dinero se ha comprado por año --
select case 
when descripcion='Electronica' then 'Electronica'
when descripcion='Automotris' then 'Automotris'
when descripcion='informatico' then 'informatico'

end as Area,

sum (precio) as Inversion_Capacitacion 
from capacitaciones  
group by descripcion
select * from capacitaciones

