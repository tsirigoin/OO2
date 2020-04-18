accessing
proceedWith: aUser
	self session user: aUser.
	self call: CuOOraMainComponent new