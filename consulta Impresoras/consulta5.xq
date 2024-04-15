(: Modelo de las impresoras en red :)
for $impresora in doc("impresoras.xml")//impresora[enred]
return $impresora/modelo/text() 