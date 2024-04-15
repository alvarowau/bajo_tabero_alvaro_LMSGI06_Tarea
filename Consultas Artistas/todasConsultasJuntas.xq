(: Nombre y país de todos los artistas :)
for $artista in doc("artistas.xml")//artista
return concat($artista/nombreCompleto/text(), " - ", $artista/pais/text()),

(: El nombre (sin etiquetas) de los artistas que nacieron antes de 1500 :)
for $artista in doc("artistas.xml")//artista[nacimiento < 1500]
return $artista/nombreCompleto/text(),

(: Nombre de los artistas para los que no hay año de fallecimiento :)
for $artista in doc("artistas.xml")//artista[not(fallecimiento)]
return $artista/nombreCompleto/text(),

(: Una lista HTML con el nombre de los artistas nacidos en España :)
<ul>
{
  for $artista in doc("artistas.xml")//artista[pais = 'España']
  return <li>{$artista/nombreCompleto/text()}</li>
}
</ul>,

(: El número de artistas nacidos antes de 1600 :)
count(doc("artistas.xml")//artista[nacimiento < 1600])