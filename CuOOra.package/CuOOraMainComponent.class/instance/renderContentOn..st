rendering
renderContentOn: aCanvas
	self renderHeaderOn: aCanvas.
	self session isLoggedIn
		ifTrue: [ self renderLogedInOn: aCanvas ]