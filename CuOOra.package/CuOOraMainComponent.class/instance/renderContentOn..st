rendering
renderContentOn: aCanvas
	self session user isNotNil
		ifTrue: [ self renderLogedInOn: aCanvas ]
		ifFalse: [ self renderLoginOn: aCanvas ]