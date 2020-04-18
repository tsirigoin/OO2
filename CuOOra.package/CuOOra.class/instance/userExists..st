accessing
userExists: anUsername
	^ (users select: [ :user | user username = anUsername ]) isNotEmpty