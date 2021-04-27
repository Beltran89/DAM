(: Obtener todos los títulos de los libros del fichero.:)
let $l := doc("libros.xml")//libro

return $l/paginas/data()