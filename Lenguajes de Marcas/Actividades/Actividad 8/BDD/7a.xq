(:Consulta que devuelva los títulos de los libros
 almacenados en el fichero y su primer autor.
  En caso de que haya más de un autor para un libro
   se añade un segundo autor “cia”.:)

for $l in doc("libros.xml")//libro
let $b := $l/autor
return($l/titulo,$l/autor[1],

if (count($b)>1) then
 <cia>el segundo autor es {data ($b[2]) } </cia>
else  () 
)