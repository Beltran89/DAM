(:Ejemplo de uso de las clausulas WHERE y ORDER BY en una consulta con dos ficheros. Obtener los títulos de los libros prestados con sus autores y la fecha de inicio y devolución del préstamo, ordenados por la fecha de inicio del préstamo.:)

for $l in doc("libros.xml")//libro,
    $p in doc("prestamos.xml")//entrada
where $l/titulo= $p/titulo
order by $p/prestamo/inicio
return <libro>{
 <titulo>{data($l/titulo)}</titulo>,
 <autor>{data($l/autor)}</autor>,
 <fecha_i>{data($p/prestamo/inicio)}</fecha_i>,
 <fecha_d>{data($p/prestamo/devolucion)}</fecha_d>
 }
 </libro>
 
