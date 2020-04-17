rendering
renderContentOn: aCanvas
	loggedUser isNotNil
		ifTrue: [ self renderLogedInOn: aCanvas ]
		ifFalse: [ self renderLoginOn: aCanvas ]