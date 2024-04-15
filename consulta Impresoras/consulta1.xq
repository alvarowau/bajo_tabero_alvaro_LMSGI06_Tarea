(: Modelo de las impresoras de tipo "láser" :)
for $impresora in doc("impresoras.xml")//impresora[@tipo = 'láser']
return $impresora/modelo/text()