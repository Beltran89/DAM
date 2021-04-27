(:Obtener todos los títulos de los libros del fichero.:)
"Titulo de los libros",
for $l in doc("libros.xml")//libro

return $l /titulo