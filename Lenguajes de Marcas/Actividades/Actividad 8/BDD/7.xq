(:Ejemplo, hacer una consulta que devuelva los títulos de los libros almacenados en el fichero y su primer autor. En caso de que haya más de un autor para un libro se añade un segundo autor “cia”.:)

for $l in doc("libros.xml")//libro
let $b := $l/autor
return($l/titulo,$l/autor,$b[1]/autor,

if (count($b)>1) then
<cia>Tiene {count($b)} autores</cia>
else ()
)
