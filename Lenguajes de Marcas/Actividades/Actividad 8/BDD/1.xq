(:Obtener todos los títulos de los libros del fichero.:)
"Titulo de los libros con etiquetas",
for $l in doc("libros.xml")//libro
return $l/titulo/text()

