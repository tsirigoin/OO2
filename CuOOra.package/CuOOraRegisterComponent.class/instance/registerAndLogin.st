as yet unclassified
registerAndLogin
	| theUser |
	theUser := User newUsername: newUsername WithPassword: newPassword.
	self model addUser: theUser.
	self proceedWith: theUser