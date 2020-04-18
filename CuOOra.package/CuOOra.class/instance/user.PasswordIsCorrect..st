accessing
user: anUsername PasswordIsCorrect: aPass
	^ ((users select: [ :user | user username = anUsername ])
		at: 1) password = aPass