(: El número de artistas nacidos antes de 1600 :)
count(doc("artistas.xml")//artista[nacimiento < 1600])