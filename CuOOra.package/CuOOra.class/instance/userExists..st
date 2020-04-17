accessing
userExists: anUsername
	^ users detect: [ :each | each username = anUsername ] ifFound: true  ifNone: false