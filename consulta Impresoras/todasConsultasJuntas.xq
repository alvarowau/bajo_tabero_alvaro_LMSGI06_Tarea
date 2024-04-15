(: Modelo de las impresoras de tipo "láser" :)
for $impresora in doc("impresoras.xml")//impresora[@tipo = 'láser']
return $impresora/modelo/text(), 

(: Marca y modelo de las impresoras con más de un tamaño :)
for $impresora in doc("impresoras.xml")//impresora[count(tamaño) > 1]
return concat($impresora/marca/text(), " ", $impresora/modelo/text()), 

(: Marca y modelo de las impresoras con tamaño A3 (pueden tener otros) :)
for $impresora in doc("impresoras.xml")//impresora[tamaño = 'A3']
return concat($impresora/marca/text(), " ", $impresora/modelo/text()), 

(: Marca y modelo de las impresoras con tamaño A3 como único tamaño :)
for $impresora in doc("impresoras.xml")//impresora[count(tamaño) = 1 and tamaño = 'A3']
return concat($impresora/marca/text(), " ", $impresora/modelo/text()), 

(: Modelo de las impresoras en red :)
for $impresora in doc("impresoras.xml")//impresora[enred]
return $impresora/modelo/text() 