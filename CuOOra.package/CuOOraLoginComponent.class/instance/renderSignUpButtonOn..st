accessing
renderSignUpButtonOn: aCanvas
	aCanvas submitButton
		callback: [ self registerNewUser ];
		with: 'Registrate, es gratis!'