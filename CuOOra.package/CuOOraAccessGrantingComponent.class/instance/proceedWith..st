accessing
proceedWith: aUser
	self session login: aUser.
	self answer.