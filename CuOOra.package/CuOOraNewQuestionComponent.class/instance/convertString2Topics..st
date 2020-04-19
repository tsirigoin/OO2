services
convertString2Topics: input 
" Recibe un string, separa por cierto caracter , limpia espacios y usa el resultado para crear nombres de Topics. 
Desvuelve una Ordered Collection de Topics, con una descripcion por defecto, o un Topico especial para no categorizados"
| col conj |
	col:= OrderedCollection new.
	
	"input := '   d,,dd'withBlanksCondensed."
	col addAll: (input splitOn: ',').
	col := col collect: [ :each | each trimBoth ].
	conj := Set new.
	col do: [:each | conj add: each].

	"Divide la cadena por las comas, saco espacios y y lo agrego al conjunto para eliminar repetidos"
	(conj includes: '')
		ifTrue: [ conj remove: '' ].
	"si ponen dos comas juntas queda un caracter vacío, lo saco"
	conj.
	conj 
		ifEmpty: [ 
			"Devuelvo un topico por defecto"
			^( Topic newName: 'Uncategorized' Desc: 'Agrupa preguntas no categorizadas') asOrderedCollection ] 
		ifNotEmpty:  [
			conj := conj collect: [:each | each capitalized ].
			"Le pongo mayuscula"
			^ conj collect:[:each | Topic newName: each Desc: 'Topico generado automaticamente' ]].