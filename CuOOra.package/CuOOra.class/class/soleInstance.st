accessing
soleInstance 
	^ cuoora ifNil: [ cuoora := self new ] ifNotNil: [ cuoora ]