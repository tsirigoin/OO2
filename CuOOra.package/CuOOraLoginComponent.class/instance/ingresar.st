accessing
ingresar
	(cuoora userExists: newUsername)
		ifTrue: [ (cuoora user: newUsername PasswordIsCorrect: newPassword)
				ifTrue: (self proceedWith: (cuoora user: newUsername)) ]