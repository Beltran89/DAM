(: Obtener todos los títulos de los libros del fichero, junto con los autores de cada libro:)
"Este es el resultado",
for $l in doc("libros.xml")//libro
let $a := $l/autor

return ($l/titulo/text(), $a/apellido/text())
