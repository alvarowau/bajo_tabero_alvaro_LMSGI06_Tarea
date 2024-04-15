(: Nombre de los artistas para los que no hay año de fallecimiento :)
for $artista in doc("artistas.xml")//artista[not(fallecimiento)]
return $artista/nombreCompleto/text()