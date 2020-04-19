as yet unclassified
convertirCadenaATopicos: cadenaTopicos 
" Recibe un string, separa por caracteres que no sean letra, "
| conjuntoString |

	conjuntoString := Set new.
	conjuntoString addAll: (cadenaTopicos splitOn: ',').
	"Divide la cadena por las comas, y y lo agrego al conjunto"
	(conjuntoString includes: '')
		ifTrue: [ conjuntoString remove: '' ].
	"si ponen dos comas juntas queda un caracter vacío, lo saco"
	conjuntoString := conjuntoString asOrderedCollection .
	conjuntoString := conjuntoString collect: [:each | each withBlanksCondensed capitalized ].
	"Le saco los espacios de mas (deja solo los internos) y le pongo mayuscula"
	
	^ conjuntoString collect:[:each | Topic newName: each Desc: 'Topico generado automaticamente' ].
	
	
	