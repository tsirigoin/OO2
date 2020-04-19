rendering
renderInputElementsOn: aCanvas
	aCanvas label: 'Usuario: '.
	aCanvas paragraph: [ aCanvas textInput on: #newUsername of: self ].
	aCanvas label: 'Contraseña: '.
	aCanvas paragraph: [ aCanvas passwordInput on: #newPassword of: self ]