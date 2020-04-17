private protocol
login
	| stance |
	stance := CuOOraLoginComponent new.
	self call: stance.
	stance user ifNotNil: [ loggedUser := stance user ]