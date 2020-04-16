rendering
renderContentOn: aCanvas
	aCanvas heading: 'CuOOra'.
	aCanvas
		form: [ aCanvas
				paragraph: [ aCanvas label: 'Nombre de usuario: '.
					aCanvas textInput on: #newUsername of: self ].
			aCanvas
				paragraph: [ aCanvas label: 'Contraseña: '.
					aCanvas passwordInput on: #newPassword of: self ].
			aCanvas button
				callback: [ self accept ];
				with: 'Ingresar' ]