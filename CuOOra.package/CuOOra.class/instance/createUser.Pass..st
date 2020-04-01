as yet unclassified
createUser: unUsername Pass: unaPass
	"crea una nueva instancia de User con unUsername y unaPass"

	users add: [ User newUsername: unUsername WithPassword: unaPass ].