(: Marca y modelo de las impresoras con tamaño A3 (pueden tener otros) :)
for $impresora in doc("impresoras.xml")//impresora[tamaño = 'A3']
return concat($impresora/marca/text(), " ", $impresora/modelo/text()) 