as yet unclassified
renderSignUpButtonOn: aCanvas
	aCanvas submitButton
		callback: [ self registerAndLogin ];
		with: 'Register'