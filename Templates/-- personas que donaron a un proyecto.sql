-- personas que donaron a un proyecto 
select p.nombre, p.paterno,p.materno from dona d , persona p 
where d.ci=p.ci 

-- desplegar los proyectos y los creadores de los proyectos

select (p.nombre|| p.paterno||p.materno) nombre , po.nombre nomProyecto 
from  administrador a , persona p , proyecto po 
where p.ci=a.ciadmin and a.ciadmin=po.cicreador

-- desplegar los asistieron a alguna actividad 

select (p.nombre || p.paterno || p.materno) nombre 
from persona p , asiste a 
where p.ci= a.ci   

-- desplegar a las instituciones que colaboran con algun proyecto 

select i.nombre nomIns, p.nombre nomProy 
from institucion i , proyecto p , colabora c  
where i.nit = c.nit and p.idproyecto = c.idproy

-- desplegar los gastos de los proyectos 

select p.nombre , g.descripcion 
from gasto g, proyecto p , compra c 
where g.idgasto = c.idgasto and c.idproy = p.idproyecto 

-- desplegar los proyectos que tengan actividades 

select p.nombre, a.nombre 
from cumple c, actividad a, proyecto p 
where p.idproyecto = c.idproy and c.idactiv = a.id
--7.  desplegar los encargados que sean responsables de un proyecto 

select (p.nombre || p.paterno || p.materno) nombreEncargado, po.nombre
from persona p , encargado e , proyecto po 
where p.ci= e.ciencargado and e.ciencargado=po.ciencargado 

--8. mostrar las convocatorias de los proyectos

select c.nombre nomConvocatoria , p.nombre nomProyecto
from convocatoria c, proyecto p , esde e 
where c.idconvoc = e.idconvoc and p.idproyecto=e.idproy

-- 9.  mostrar los especialidades que trabajan en algun proyecto

select (p.nombre|| p.paterno || p.materno) Especialista, po.nombre nomProyecto 
from Especialista e, persona p , proyecto po , trabaja t 
where p.ci=e.ciespecialista and po.idproyecto=t.idproy and e.CIESPECIALISTA= t.ciespecialista


-- 10. mostrar  el monto total de las donaciones 

select sum(monto) from dona 
