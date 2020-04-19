accessing
ingresar
	(cuoora userExists: newUsername)
		ifTrue: [ (cuoora user: newUsername PasswordIsCorrect: newPassword)
				ifTrue: [lastError:=nil. (self proceedWith: (cuoora user: newUsername))] ].
	"si llega aca es porque dio error, lo marco. Antes del proceed borro el error que quedó si hubo antes"
	lastError := 'El usuario o la contraseña son incorrectas'.