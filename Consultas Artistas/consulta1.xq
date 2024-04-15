(: Nombre y país de todos los artistas :)
for $artista in doc("artistas.xml")//artista
return concat($artista/nombreCompleto/text(), " - ", $artista/pais/text())
