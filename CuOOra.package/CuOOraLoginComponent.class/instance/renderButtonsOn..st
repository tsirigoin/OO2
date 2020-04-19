accessing
renderButtonsOn: aCanvas
	self renderSignInButtonOn: aCanvas.
	aCanvas horizontalRule.
	aCanvas paragraph: 'No tienes cuenta?'.
	self renderSignUpButtonOn: aCanvas