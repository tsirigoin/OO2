services
convertString2Topics: cadenaTopicos 
" Recibe un string, separa por cierto caracter , limpia espacios y usa el resultado para crear nombres de Topics. 
Desvuelve una Ordered Collection de Topics, con una descripcion por defecto "
| conjuntoString |

	conjuntoString := Set new.
	conjuntoString addAll: (cadenaTopicos splitOn: ',').
	"Divide la cadena por las comas, y lo agrego al conjunto"
	(conjuntoString includes: '')
		ifTrue: [ conjuntoString remove: '' ].
	"si ponen dos comas juntas queda un caracter vacío, lo saco"
	conjuntoString := conjuntoString asOrderedCollection .
	conjuntoString := conjuntoString collect: [:each | each withBlanksCondensed capitalized ].
	"Le saco los espacios de mas (deja solo los internos) y le pongo mayuscula"
	
	^ conjuntoString collect:[:each | Topic newName: each Desc: 'Topico generado automaticamente' ].
	
	
	