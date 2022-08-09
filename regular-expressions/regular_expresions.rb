# expresiones regulares
# basico: estructura de la expresion /condiciones/
# aserciones, limites - iniciar-finalizar con
# ^: /^'char'/ inicia con
# $: /'char'$/ finaliza con
# \b: /'word'\b/ buscar una palabra en todo el (no una sola string: yes: use git; not: usegit) <<debe ser exacto>>
# cuantificadores: 
# *: /'char(s)'*/ valida que hay elementos del tipo indicado, puede haber n, o no puede haber nada
# +: /'char(s)'+/ valida que hay elementos del tipo indicado, puede haber n, debe existir al menos 1
# ?: /'char'?/ valida que exita uno o ninguno, no pueden existir mas de 1
# {start,end}?: /'char'{i,f}?/ valida que exita uno o ninguno, compuesto segun necesidad, end vacio = infinito

# caracteres especiales
# \: /\// escape, permite buscar, evitar conflicto con la propia expresion regular o hacer otras busquedas
# .*? comodin: toma todo lo que encuentre dentro de una validacion
	# * busca todo lo que coincida
	# ? cierra la condicion actual
# /g: hacer una validacion global en todo el texto
# regex = /<beer>.*?<\/beer>/g (en js)
# regex = /<beer>.*?<\/beer>/ # adaptado para ruby
regex = /<beer>.*?<\/beer>/ # adaptado para ruby
test_text = "<beer>cororona</beer><beer>heineken</beer>"
p test_text.scan(regex)

# palabras reservadas
# \d espera solo numeros
# \D espera solo texto
# [A-Za-z0-9_] Alfa numero con _ ==== \w
# \s espacios
# | or << opa|opb >>
# () agrupar las expresiones, ex (\w|\s)
# /u unicode

# Avanzado
# 'expresion'(=?'expresion') asercion anticipada
# ex: /Vino(=?\s\w+)/, esperado "Vino (texto que cumpla la validacion)"
# regex = /(Vino|Cerveza)(=?\s\w+)/
# regex = /(Vino)(=?\s\w+)/
# test_texto = "Vino blanco Vino azul Vino rojo"
# test_texto.scan(regex) { |match| p match }
# p test_texto.gsub(regex,'a')
# p test_texto.sub(regex,'a')
# 'expresion'(?!'expresion') asercion anticipada negativa

# regex = /\s/
# test_texto = "as/asa"

# if test_texto[regex]
# 	p "Es correcto"
# else
# 	p "Es incorrecto"
# end