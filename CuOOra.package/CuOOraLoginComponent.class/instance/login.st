accessing
login
	(self model user: newUsername PasswordIsCorrect: newPassword )
		ifNotNil: [ :it | self proceedWith: it ].
	newUsername := nil.
	newPassword := nil