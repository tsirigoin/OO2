accessing
ingresar
	(cuoora userExists: newUsername)
		ifTrue: [ (cuoora user: newUsername PasswordIsCorrect: newPassword)
				ifTrue: (user := cuoora user: newUsername) ].
	self answer