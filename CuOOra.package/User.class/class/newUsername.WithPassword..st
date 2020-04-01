instance creation
newUsername: anUsername WithPassword: aPassword
	"creates a new instance of User with anUsername and aPassword."
	
 	^ self new username: anUsername password: aPassword.