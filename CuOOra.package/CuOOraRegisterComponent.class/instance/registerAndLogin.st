as yet unclassified
registerAndLogin
	cuoora newUser: newUsername Pass: newPassword.
	self proceedWith: (cuoora user: newUsername)