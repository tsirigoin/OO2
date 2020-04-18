accessing
renderInputElementsOn: aCanvas
	aCanvas label: 'Username'.
	aCanvas paragraph: [ aCanvas textInput on: #name of: self ].
	aCanvas label: 'Password'.
	aCanvas paragraph: [ aCanvas passwordInput on: #password of: self ]