as yet unclassified
registerAndLogin
	| theUser |
	theUser := User newUsername: name WithPassword: password.
	self model addUser: theUser.
	self proceedWith: theUser