accessing
user: anUsername PasswordIsCorrect: aPass 
	^ aPass = (users select: [ :user | user username = anUsername ]) at: 1 password