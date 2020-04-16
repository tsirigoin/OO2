instance creation
newUser: unUsername Pass: unaPass
	"crea una nueva instancia de User con unUsername y unaPass"

	users
		detect: [ :each | each username = unUsername ]
		ifFound: [ ^ 'El usuario ya se encuentra registrado' ]
		ifNone: [ users add: (User newUsername: unUsername WithPassword: unaPass) ]