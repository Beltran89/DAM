(:Por cada libro, obtener su título y el número de autores, agrupados en un elemento:)

for $t in doc("libros.xml")//libro
let $n := $t/autor

return <libro>Su titulo es {data($t/titulo)},Tiene {count($n)} autor/es</libro>