(: Marca y modelo de las impresoras con más de un tamaño :)
for $impresora in doc("impresoras.xml")//impresora[count(tamaño) > 1]
return concat($impresora/marca/text(), " ", $impresora/modelo/text()) 