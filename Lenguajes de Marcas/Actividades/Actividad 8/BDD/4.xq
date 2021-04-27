(: Listar año y título de los libros que tienen más de un autor:)
for $l in doc("libros.xml")//libro
where count($l/autor)>1
return ($l/@publicacion, $l/titulo/text(), $l/autor/apellido/text(), $l/autor/nombre/text())