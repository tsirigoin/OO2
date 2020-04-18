accessing
user: anUsername
	^ (users select: [ :user | user username = anUsername ]) at: 1