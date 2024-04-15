(: Marca y modelo de las impresoras con tamaño A3 como único tamaño :)
for $impresora in doc("impresoras.xml")//impresora[count(tamaño) = 1 and tamaño = 'A3']
return concat($impresora/marca/text(), " ", $impresora/modelo/text()) 